-- -*- mode: sql -*-
DROP TABLE IF EXISTS  `TLS211_PAT_PUBLN`;
CREATE TABLE IF NOT EXISTS  `TLS211_PAT_PUBLN` (
`pat_publn_id` int NOT NULL default '0',
`publn_auth` char(2) NOT NULL default '',
`publn_nr` varchar(15) NOT NULL default '',
`publn_kind` char(2) NOT NULL default '',
`appln_id` int NOT NULL default '0',
`publn_date` date NOT NULL DEFAULT '9999-12-31',
`publn_lg` char(2) NOT NULL default '',
`publn_first_grant` tinyint NOT NULL default '0',
`publn_claims` smallint,
PRIMARY KEY  (`pat_publn_id`),
KEY `publn_auth` (`publn_auth`,`publn_nr`,`publn_kind`),
KEY `appln_id` (`appln_id`),
KEY `publn_date` (`publn_date`)
)
ENGINE = MyISAM
MAX_ROWS = 82000000
DEFAULT CHARSET utf8 COLLATE utf8_unicode_ci;
