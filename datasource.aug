defvar datasources \$file/server/profile/subsystem[#attribute/xmlns=~regexp('.*datasources.*')]/datasources

# <datasource jndi-name="java:jboss/datasources/TestDatasource" pool-name="TestDatasource" enabled="true" spy="true">
defnode ds \$datasources/datasource[#attribute/pool-name='TestDatasource']
set \$ds/#attribute/pool-name "TestDatasource"
set \$ds/#attribute/jndi-name "java:jboss/datasources/TestDatasource"
set \$ds/#attribute/enabled "true"
set \$ds/#attribute/enabled "spy"

defnode dsurl \$ds/connection-url
set \$dsurl/#text "${db_jdbc_url:-jdbc:postgresql://localhost:5432/crashrec}"

defnode dsdriver \$ds/driver
set \$dsdriver/#text "${db_primary_label:-driver}.jar"

defnode dspool \$ds/pool
defnode dsminpool \$dspool/min-pool-size
set \$dsminpool/#text 0
defnode dsmaxpool \$dspool/max-pool-size
set \$dsmaxpool/#text 1

defnode dssecurity \$ds/security
defnode dsuser \$dssecurity/user-name
set \$dsuser/#text "${db_username:-crashrec}"
defnode dspass \$dssecurity/password
set \$dspass/#text "${db_password:-crashrec}"

