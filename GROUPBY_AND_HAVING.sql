/*film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.*/
SELECT rating,count(title) FROM film GROUP BY rating;

/*film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.*/
SELECT COUNT(title),replacement_cost FROM film GROUP BY replacement_cost HAVING COUNT(title)>50

/*customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?*/
SELECT store_id,COUNT(first_name) FROM customer GROUP BY store_id

/*city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.*/
SELECT country_id,COUNT(city)FROM city GROUP BY country_id ORDER BY country_id desc LIMIT 1