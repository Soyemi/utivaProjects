-- Q1 How many countries have played in the world cup (5 years)?--

WITH all_world_cup AS (
SELECT 
		'wc2002'AS worldcupyr,
		team,
		points
	FROM fifa2002
	UNION ALL
	
SELECT 
		'wc2006'AS worldcupyr,
		team,
		points
	FROM fifa2006
	UNION ALL
	
SELECT 
		'wc2010'AS worldcupyr,
		team,
		points
	FROM fifa2010
	UNION ALL
	
SELECT 
		'wc2014'AS worldcupyr,
		team,
		points
	FROM fifa2014
	UNION ALL
	
SELECT 
		'wc2018'AS worldcupyr,
		team,
		points
	FROM fifa2018
	
	)
	


SELECT COUNT(DISTINCT team) FROM all_world_cup

--Q2 Get the total games played win,loss, goals for against--

WITH all_world_cup AS (
	SELECT 
		'wc2002'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2002
	UNION ALL
	
SELECT 
		'wc2006'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2006
	UNION ALL
	
SELECT 
		'wc2010'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2010
	UNION ALL
	
SELECT 
		'wc2014'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2014
	UNION ALL
	
SELECT 
		'wc2018'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2018
	
	)
	
SELECT 
	SUM(gamesplayed) AS total_gamesplayed,
	SUM (win) AS total_win,
	SUM(loss) AS total_loss,
	SUM(goalsfor) AS total_goalsfor,
	SUM(goalsagainst) AS total_goalsagainst
FROM all_world_cup


Q3--The country with the highest and lowest appearance in the last five years--

Q4 -- Country with highest or lowest games played?--

WITH all_world_cup AS (
	SELECT 
		'wc2002'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2002
	UNION ALL
	
SELECT 
		'wc2006'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2006
	UNION ALL
	
SELECT 
		'wc2010'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2010
	UNION ALL
	
SELECT 
		'wc2014'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2014
	UNION ALL
	
SELECT 
		'wc2018'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2018
	
	)
	


SELECT 
	MAX(gamesplayed) AS highest_gamesplayed,
	MIN(gamesplayed) AS lowest_gamesplayed,
	team
FROM all_world_cup
	GROUP BY team
	ORDER BY highest_gamesplayed DESC


--Q5 the country with the highest and lowest game won?--
WITH all_world_cup AS (
	SELECT 
		'wc2002'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2002
	UNION ALL
	
SELECT 
		'wc2006'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2006
	UNION ALL
	
SELECT 
		'wc2010'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2010
	UNION ALL
	
SELECT 
		'wc2014'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2014
	UNION ALL
	
SELECT 
		'wc2018'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2018
	
	)
	


SELECT 
	MAX(win) AS highest_gameswon,
	MIN(win) AS lowest_gameswon,
	team
	FROM all_world_cup
	GROUP BY team
	ORDER BY highest_gameswon DESC




--Q6 the country with the highest and lowest game lost?--
WITH all_world_cup AS (
	SELECT 
		'wc2002'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2002
	UNION ALL
	
SELECT 
		'wc2006'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2006
	UNION ALL
	
SELECT 
		'wc2010'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2010
	UNION ALL
	
SELECT 
		'wc2014'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2014
	UNION ALL
	
SELECT 
		'wc2018'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2018
	
	)
	


SELECT 
	MAX(loss) AS highest_gameslost,
	MIN(loss) AS lowest_gameslost,
	team
	FROM all_world_cup
	GROUP BY team
	ORDER BY lowest_gameslost DESC




--Q7 the country with the highest and lowest game goals for ?--
WITH all_world_cup AS (
	SELECT 
		'wc2002'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2002
	UNION ALL
	
SELECT 
		'wc2006'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2006
	UNION ALL
	
SELECT 
		'wc2010'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2010
	UNION ALL
	
SELECT 
		'wc2014'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2014
	UNION ALL
	
SELECT 
		'wc2018'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2018
	
	)
	


SELECT 
	MAX(goalsfor) AS highest_goalsfor,
	MIN(goalsfor) AS lowest_goalsfor,
	team
	FROM all_world_cup
	GROUP BY team
	ORDER BY highest_goalsfor DESC




--Q8 the country with the highest and lowest game goals againt?--
WITH all_world_cup AS (
	SELECT 
		'wc2002'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2002
	UNION ALL
	
SELECT 
		'wc2006'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2006
	UNION ALL
	
SELECT 
		'wc2010'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2010
	UNION ALL
	
SELECT 
		'wc2014'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2014
	UNION ALL
	
SELECT 
		'wc2018'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst
	FROM fifa2018
	
	)
	


SELECT 
	MAX(goalsagainst) AS highest_goalsagaist,
	MIN(goalsagainst) AS lowest_goalsagainst,
	team
	FROM all_world_cup
	GROUP BY team
	ORDER BY lowest_goalsagainst DESC




--Q9 the country with the highest and lowest game goals difference?--
WITH all_world_cup AS (
	SELECT 
		'wc2002'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst,
		goaldifference
	FROM fifa2002
	UNION ALL
	
SELECT 
		'wc2006'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst,
		goaldifference
	FROM fifa2006
	UNION ALL
	
SELECT 
		'wc2010'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst,
		goaldifference
	FROM fifa2010
	UNION ALL
	
SELECT 
		'wc2014'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst,
		goaldifference
	FROM fifa2014
	UNION ALL
	
SELECT 
		'wc2018'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst,
		goaldifference
	
	FROM fifa2018
	
	)
	


SELECT 
	MAX(goaldifference) AS highest_goaldifference,
	MIN(goaldifference) AS lowest_goaldifference,
	team
	FROM all_world_cup
	GROUP BY team
	ORDER BY highest_goaldifference DESC




--Q10 the country with the highest and lowest game points?--
WITH all_world_cup AS (
	SELECT 
		'wc2002'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst,
		goaldifference
	FROM fifa2002
	UNION ALL
	
SELECT 
		'wc2006'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst,
		goaldifference
	FROM fifa2006
	UNION ALL
	
SELECT 
		'wc2010'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst,
		goaldifference
	FROM fifa2010
	UNION ALL
	
SELECT 
		'wc2014'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst,
		goaldifference
	FROM fifa2014
	UNION ALL
	
SELECT 
		'wc2018'AS worldcupyr,
		team,
		points,
		gamesplayed,
		win,
		loss,
		goalsfor,
		goalsagainst,
		goaldifference
	
	FROM fifa2018
	
	)
	


SELECT 
	MAX(points) AS highest_gamepoints,
	MIN(points) AS lowest_gamepoints,
	team
	FROM all_world_cup
	GROUP BY team
	ORDER BY highest_gamepoints DESC



