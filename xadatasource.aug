defvar datasources \$file/server/profile/subsystem[#attribute/xmlns=~regexp('.*datasources.*')]/datasources

defnode xads \$datasources/xa-datasource[#attribute/pool-name='XATestDatasource']
set \$xads/#attribute/pool-name "XATestDatasource"
set \$xads/#attribute/jndi-name "java:jboss/xa-datasources/XATestDatasource"
set \$xads/#attribute/enabled "true"
set \$xads/#attribute/enabled "spy"

defnode xadsurl \$xads/xa-datasource-property[#attribute/name='URL']
set \$xadsurl/#attribute/name "URL"
set \$xadsurl/#text "${db_jdbc_url:-jdbc:postgresql://localhost:5432/crashrec}"

defnode xadsdb \$xads/xa-datasource-property[#attribute/name='DatabaseName']
set \$xadsdb/#attribute/name "DatabaseName"
set \$xadsdb/#text "${db_name:-crashrec}"

defnode xadsserver \$xads/xa-datasource-property[#attribute/name='ServerName']
set \$xadsserver/#attribute/name "ServerName"
set \$xadsserver/#text "${db_hostname:-localhost}"

defnode xadsport \$xads/xa-datasource-property[#attribute/name='PortNumber']
set \$xadsport/#attribute/name "PortNumber"
set \$xadsport/#text "${db_port:-5432}"

defnode xadsclass \$xads/xa-datasource-class
set \$xadsclass/#text "${datasource_class_xa:-com.edb.xa.PGXADataSource}"

defnode dsdriver \$xads/driver
set \$dsdriver/#text "${db_primary_label:-driver}.jar"

defnode dspool \$xads/pool
defnode dsminpool \$dspool/min-pool-size
set \$dsminpool/#text 0
defnode dsmaxpool \$dspool/max-pool-size
set \$dsmaxpool/#text 1

defnode dssecurity \$xads/security
defnode dsuser \$dssecurity/user-name
set \$dsuser/#text "${db_username:-crashrec}"
defnode dspass \$dssecurity/password
set \$dspass/#text "${db_password:-crashrec}"

