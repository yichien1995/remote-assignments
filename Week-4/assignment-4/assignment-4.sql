SELECT info.store_email, a.id, a.title, a.content FROM article AS a 
INNER JOIN store_information AS info
ON a.author_id = info.storeid;

SELECT * FROM article WHERE id BETWEEN 7 AND 12;
