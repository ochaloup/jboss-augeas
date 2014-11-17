defvar jacorb \$file/server/profile/subsystem[#attribute/xmlns=~regexp('.*jacorb.*')]
set \$jacorb/orb/initializers/#attribute/transactions "on"

defvar transactions \$file/server/profile/subsystem[#attribute/xmlns=~regexp('.*transactions.*')]
defnode jts \$transactions/jts

