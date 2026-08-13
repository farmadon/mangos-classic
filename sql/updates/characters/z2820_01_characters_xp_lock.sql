ALTER TABLE character_db_version CHANGE COLUMN required_z2819_01_characters_item_instance_text_id_fix required_z2820_01_characters_xp_lock bit;

-- Backs Player::IsXpLocked()/SetXpLocked() (.character xplock GM command):
-- freezes a character's XP gain without touching level, used for twinks.
ALTER TABLE characters ADD COLUMN `xp_locked` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 AFTER `fishingSteps`;
