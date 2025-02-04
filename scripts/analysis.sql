/*
    SQL Portfolio Project: Mental Health Analysis
    ---------------------------------------------------
    This project analyzes mental health diagnostic scores
    of international students based on their length of stay.

    Query Overview:
    - Counts the number of international students per stay length.
    - Computes average PHQ-9, SCS, and ASISS test scores.
    
    # Keeping this comment block to ensure GitHub detects SQL
*/

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
