SELECT email_address AS Email, length(email_address) AS Length, locate('@', email_address) AS Locate, 
substring_index(email_address, '@', 1) AS Username,  (SUBSTRING_INDEX(SUBSTR(email_address, INSTR(email_address, '@') + 1),'.',1)) AS Domain
FROM customers