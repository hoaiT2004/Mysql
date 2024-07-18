SELECT hackers.hacker_id,hackers.name FROM hackers
JOIN submissions ON submissions.hacker_id = hackers.hacker_id
JOIN challenges ON submissions.challenge_id = challenges.challenge_id
JOIN difficulty ON difficulty.difficulty_level = challenges.difficulty_level
WHERE submissions.score = difficulty.score
GROUP BY 1,2
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC,1;