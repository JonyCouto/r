query_sales <- "
WITH planos_validos AS (
    SELECT cs.id_cliente_servico, cs.data_cadastro, cs.data_cancelamento, cs.id_usuario_vendedor, cs.id_motivo_cancelamento, 
    cs.id_cliente_servico_antigo, cs.origem, cs.valor, cs.id_servico_tecnologia, cs.id_servico, cs.id_servico_status, cs.id_origem_servico
    FROM cliente_servico cs
    WHERE (cs.data_cadastro::date >= {date_begin} AND cs.data_cadastro::date <= {date_end})
),
enderecos_validos AS (
    SELECT cse.id_cliente_servico, cse.id_endereco_numero
    FROM cliente_servico_endereco cse
    WHERE cse.tipo = 'instalacao'
)
SELECT pv.id_cliente_servico, u.id AS id_vendedor, s.id_setor, st.id_servico_tecnologia, pv.id_servico_status,
pv.data_cancelamento, u.name AS vendedor, s.descricao AS setor, pv.origem, pv.valor, ser.descricao AS plano, 
st.descricao AS tecnologia, mc.descricao AS motivo_cancelamento_detalhado, ci.nome AS cidade, TRIM(os.descricao) AS origem_servico,
(CASE WHEN pv.origem = 'migrado' THEN csa.data_cancelamento 
    ELSE pv.data_cadastro 
END) AS data_cadastro, 
(CASE WHEN pv.valor < csa.valor THEN 'downgrade' 
    ELSE (CASE WHEN pv.valor > csa.valor THEN 'upgrade' 
        ELSE (CASE WHEN pv.valor = csa.valor THEN 'mesmo_valor'
            ELSE 'nao_migrado'
        END)
    END)
END) AS tipo_migracao,
(CASE WHEN mc.descricao LIKE '%% - OPE' THEN 'Operacional'
    ELSE (CASE WHEN mc.descricao LIKE '%% - F' THEN 'Atuação Financeira'
        ELSE (CASE WHEN mc.descricao LIKE '%% - A' THEN 'Não Trabalhável'
            ELSE (CASE WHEN mc.descricao LIKE '%% - T' THEN 'Trabalhável'
                ELSE (CASE WHEN mc.descricao LIKE '%% - OPO' THEN 'Oportunidade'
                    ELSE (CASE WHEN mc.descricao LIKE '%% - NT' THEN 'Não Trabalhável'
                        ELSE ''
                    END)
                END)
            END)
        END)
    END)
END) AS motivo_cancelamento_resumido
FROM planos_validos pv
LEFT JOIN cliente_servico csa ON pv.id_cliente_servico_antigo = csa.id_cliente_servico
LEFT JOIN motivo_cancelamento mc ON pv.id_motivo_cancelamento = mc.id_motivo_cancelamento
JOIN enderecos_validos ev ON pv.id_cliente_servico = ev.id_cliente_servico
JOIN endereco_numero en ON ev.id_endereco_numero = en.id_endereco_numero
LEFT JOIN origem_servico os ON pv.id_origem_servico = os.id_origem_servico
JOIN cidade ci ON en.id_cidade = ci.id_cidade
JOIN users u ON pv.id_usuario_vendedor = u.id
JOIN usuario_setor us ON u.id = us.id_usuario
JOIN setor s ON us.id_setor = s.id_setor
JOIN servico ser ON pv.id_servico = ser.id_servico
JOIN servico_tecnologia st ON ser.id_servico_tecnologia = st.id_servico_tecnologia
"