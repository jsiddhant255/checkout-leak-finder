-- CLF-7: First look at the GA4 data.
-- Counts how many times each event type happened (events, NOT unique users).
SELECT
  event_name,
  COUNT(*) AS event_count
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
GROUP BY event_name
ORDER BY event_count DESC;