SELECT 
    *
FROM {{ ref('dim_listings_cleansed') }} l
INNER JOIN {{ ref('fct_reviews') }} f
ON l.listing_id = f.listing_id
WHERE f.review_date <= l.created_at