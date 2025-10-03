library(DBI)
library(RPostgres)
library(R6)

Db <- R6Class("Db",
              private = list(
                dbname = NULL,
                host = NULL,
                port = NULL,
                user = NULL,
                password = NULL
              ),
              public = list(
                initialize = function(dbname, host, port, user, password){
                  private$dbname = dbname
                  private$host = host
                  private$port = port
                  private$user = user
                  private$password = password
                },
                connect = function(){
                  engine <- dbConnect(
                    Postgres(),
                    dbname = private$dbname,
                    host = private$host,
                    port = private$port,
                    user = private$user,
                    password = private$password
                  )
                  return (engine)
                },
                exec_query = function(engine, query){
                  data = dbGetQuery(engine, query)
                  return (data)
                }
              ))

hub <- Db$new("hubsoft", "netspeed.hubsoft.com.br", 9432, "netspeed_leitura", "c9508761a5ed591a7c3777b8978feabbc159bda1")