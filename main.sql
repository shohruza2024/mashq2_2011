SELECT name, description
FROM categories
WHERE parent_id IS NULL;

SELECT c.name AS parent_name, COUNT(child.id) AS sub_count
FROM categories c
LEFT JOIN categories child
     ON c.id = child.parent_id
WHERE c.parent_id IS NULL
GROUP BY c.name;

SELECT *
FROM categories
WHERE created_at > '2024-01-16'
ORDER BY created_at;

SELECT c2.*
FROM categories c1
JOIN categories c2 ON c1.id = c2.parent_id
WHERE c1.name = 'Elektronika';

SELECT name, created_at
FROM categories
WHERE name LIKE '%lar';

SELECT *
FROM categories
ORDER BY created_at
LIMIT 3;
