echo update

set SQLCMDSERVER=sdkcga6302
set SQLCMDDBNAME=EPRTRmaster
set SQLCMDUSER=sa
set SQLCMDPASSWORD=tmggis


rem update from ver 1.9
SET basedir=1.9
sqlcmd -i %basedir%\00_upgrade.sql

rem update from ver 2.0
SET basedir=2.0
sqlcmd -i %basedir%\00_upgrade.sql

rem update from ver 2.1
SET basedir=2.1
sqlcmd -i %basedir%\00_upgrade.sql

rem update from ver 2.2
SET basedir=2.2
sqlcmd -i %basedir%\00_upgrade.sql

rem update from ver 3.0
SET basedir=3.0
sqlcmd -i %basedir%\00_upgrade.sql

rem update from ver 3.1
SET basedir=3.1
sqlcmd -i %basedir%\00_upgrade.sql

PAUSE