SELECT A.id 
FROM Weather A, Weather B
WHERE A.temperature>B.temperature AND A.recordDate=(B.recordDate+1);
