--1
SELECT 点数 FROM 成績 WHERE 学生 = '太郎' and 科目 = 'データベース'

--2
SELECT 学生, SUM(点数) AS 合計点数 FROM 成績 GROUP BY 学生

--3
SELECT 科目, AVG(点数) AS 平均点 FROM 成績 GROUP BY 科目