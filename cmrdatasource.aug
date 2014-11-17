defvar datasources \$file/server/profile/subsystem[#attribute/xmlns=~regexp('.*datasources.*')]/datasources

defnode ds \$datasources/datasource[#attribute/pool-name='CMRDatasource']
set \$ds/#attribute/pool-name "CMRTestDatasource"
set \$ds/#attribute/jndi-name "java:jboss/datasources/CMRDatasource"
set \$ds/#attribute/enabled "true"
set \$ds/#attribute/spy "true"
set \$ds/#attribute/jta "true"
set \$ds/#attribute/connectable "true"

defnode dsurl \$ds/connection-url
set \$dsurl/#text "${db_jdbc_url:-jdbc:postgresql://localhost:5432/crashrec}"

defnode dsdriver \$ds/driver
set \$dsdriver/#text "${db_primary_label:-driver}.jar"

defnode dssecurity \$ds/security
defnode dsuser \$dssecurity/user-name
set \$dsuser/#text "${db_username:-crashrec}"
defnode dspass \$dssecurity/password
set \$dspass/#text "${db_password:-crashrec}"


defvar transactions \$file/server/profile/subsystem[#attribute/xmlns=~regexp('.*transactions.*')]
defnode cmrs \$transactions/commit-markable-resources
defnode cmr \$cmrs/commit-markable-resource
set \$cmr/#attribute/jndi-name "java:jboss/datasources/CMRDatasource"
defnode xidloc \$cmr/xid-location
set \$xidloc/#attribute/name "xids"
set \$xidloc/#attribute/batch-size "12"
set \$xidloc/#attribute/immediate-cleanup "false"

