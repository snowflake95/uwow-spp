ALTER TABLE `battlepet_npc_team_member`   
  DROP COLUMN `ID`, 
  CHANGE `Specie` `Specie` INT(10) UNSIGNED DEFAULT 0 NOT NULL,
  CHANGE `Level` `maxlevel` INT(10) UNSIGNED DEFAULT 0 NOT NULL,
  ADD COLUMN `minlevel` INT(10) UNSIGNED DEFAULT 0 NOT NULL AFTER `maxlevel`,
  ADD COLUMN `minquality` INT(10) UNSIGNED DEFAULT 0 NOT NULL AFTER `minlevel`,
  ADD COLUMN `breadsMask` INT(10) UNSIGNED DEFAULT 0 NOT NULL AFTER `minquality`,
  CHANGE `Ability1` `Ability1` INT(10) UNSIGNED DEFAULT 0 NOT NULL,
  CHANGE `Ability2` `Ability2` INT(10) UNSIGNED DEFAULT 0 NOT NULL,
  CHANGE `Ability3` `Ability3` INT(10) UNSIGNED DEFAULT 0 NOT NULL, 
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (`NpcID`, `Specie`);
