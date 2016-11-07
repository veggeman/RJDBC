
fpath <- 'C:/R/Rpackages/fmcTools/extdata/ngdbc.jar'
hanadrv <- RJDBC::JDBC('com.sap.db.jdbc.Driver',fpath , "'")
dbcon <- RJDBC::dbConnect( hanadrv,'jdbc:sap://kbg1hbr0.kongsberg.fmcweb.com:30015','datalake_user', Sys.getenv("hbrpwd"))
sql <- 'SELECT TXTMD as TC  FROM SAPSR3."/BI0/TWORKCENTER" LIMIT 10'
data <- RJDBC::dbGetQuery(dbcon, sql)
dbDisconnect(dbcon)
