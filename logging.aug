defvar logging \$file/server/profile/subsystem[#attribute/xmlns=~regexp('.*logging.*')]
defnode logger \$logging/logger[#attribute/category='${category:-com.arjuna}']
set \$logger/#attribute/category "$category"
defnode logger_level \$logger/level
set \$logger_level/#attribute/name "${level:-TRACE}"

