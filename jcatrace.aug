defvar logging \$file/server/profile/subsystem[#attribute/xmlns=~regexp('.*logging.*')]
defnode logger_jca \$logging/logger[#attribute/category='org.jboss.jca']
set \$logger_jca/#attribute/category "org.jboss.jca"
defnode logger_jca_level \$logger_jca/level
set \$logger_jca_level/#attribute/name "TRACE"

defnode logger_spy \$logging/logger[#attribute/category='jboss.jdbc.spy']
set \$logger_spy/#attribute/category "jboss.jdbc.spy"
defnode logger_spy_level \$logger_spy/level
set \$logger_spy_level/#attribute/name "TRACE"

