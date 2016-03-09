/*
Upgrading MASTER database from ver 3.0
*/

--set new version number
:Setvar major 3
:Setvar minor 1

PRINT 'UPDATING: $(SQLCMDSERVER)\$(SQLCMDDBNAME) FROM VERSION $(basedir) . . .'

:On Error exit
:out upgrade.log

-- Include deltascripts here

:r $(basedir)\insertRBDs.sql
go


--Uncomment this when released (will only insert version no. once) :

IF NOT EXISTS (SELECT * FROM tAT_version WHERE Major_version = $(major) AND Minor_version = $(minor))
	INSERT INTO tAT_version(Major_version, Minor_version) VALUES ($(major), $(minor));


	
	