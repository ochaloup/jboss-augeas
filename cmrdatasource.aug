include datasource.aug

set \$ds/#attribute/connectable "true"

defvar transactions \$file/server/profile/subsystem[#attribute/xmlns=~regexp('.*transactions.*')]
defnode cmrs \$transactions/commit-markable-resources
defnode cmr \$cmrs/commit-markable-resource
set \$cmr/#attribute/jndi-name "java:jboss/datasources/${datasource:-TestDatasource}"
defnode xidloc \$cmr/xid-location
set \$xidloc/#attribute/name "xids"
set \$xidloc/#attribute/batch-size "12"
set \$xidloc/#attribute/immediate-cleanup "false"

