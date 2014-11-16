defvar logging \$file/server/profile/subsystem[#attribute/xmlns=~regexp('.*logging.*')]
defnode logger_arjuna \$logging/logger[#attribute/category="com.arjuna"]
set \$logger_arjuna/#attribute/category "com.arjuna"
defnode logger_arjuna_level \$logger_arjuna/level
set \$logger_arjuna_level/#attribute/name "TRACE"

