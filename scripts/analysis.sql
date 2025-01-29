-- Analyze mental health scores by length of stay for international students
SELECT 
  stay, 
  COUNT(*) AS count_int,                       -- Number of students per stay duration
  ROUND(AVG(todep), 2) AS average_phq,         -- Average depression score (PHQ-9)
  ROUND(AVG(tosc), 2) AS average_scs,          -- Average social connectedness score (SCS)
  ROUND(AVG(toas), 2) AS average_as            -- Average acculturative stress score (ASISS)
FROM students
WHERE inter_dom = 'Inter'                        -- Filter for international students only
GROUP BY stay                                    -- Group results by length of stay
ORDER BY stay DESC;                              -- Sort by longest stay first
