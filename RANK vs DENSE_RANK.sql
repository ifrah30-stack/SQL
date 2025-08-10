SELECT Name, Age,
       RANK() OVER(ORDER BY Age DESC) AS RankOrder,
       DENSE_RANK() OVER(ORDER BY Age DESC) AS DenseRankOrder
FROM Students;
