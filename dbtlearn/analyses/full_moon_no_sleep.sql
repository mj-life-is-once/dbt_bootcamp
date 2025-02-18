WITH mart_fullmoon_reviews AS (
    SELECT * FROM {{ ref('mart_fullmoon_reviews')}}
)
SELECT 
    is_full_moon,
    review_sentiment,
    count(1) as reviews 
FROM 
    mart_fullmoon_reviews
GROUP BY 
    is_full_moon,
    review_sentiment
ORDER BY 
    is_full_moon,
    review_sentiment