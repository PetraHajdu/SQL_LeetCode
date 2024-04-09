SELECT Register.contest_id, 
    ROUND(COUNT(Register.contest_id) * 100 / (SELECT COUNT(user_id) FROM Users), 2) AS percentage
FROM Users
INNER JOIN Register ON Users.user_id=Register.user_id
GROUP BY Register.contest_id
ORDER BY percentage DESC, Register.contest_id;
