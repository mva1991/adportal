USE `ad`;
DROP procedure IF EXISTS `usp_school_delete`;

DELIMITER $$
USE `ad`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_school_delete`(
IN p_id INT)
BEGIN

  DELETE d FROM school d WHERE id = p_id;

END$$

DELIMITER ;

