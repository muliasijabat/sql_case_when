/* 
Case When 
digunakan untuk mengevaluasi atau mengeksekusi dari beberapa kondisi untuk menghasilkan 
value yang diinginkan berdasarkan kondisi yang sudah ditetapkan sebelumnya.
*/

/* menampilkan keseluruhan table */
SELECT * FROM customer;

/* Memberikan kategori umur pada table customer*/
SELECT
	Case
		WHEN Age <= 17 THEN 'Remaja'
        WHEN Age > 18 AND Age < 35 THEN 'Dewasa'
        ELSE 'Manula'
	END AS Kategori_usia
FROM customer;

/* Menampilkan CustomerID, Umur dan kategori umur pada table customer*/
SELECT CustomerID, Age,
	Case
		WHEN Age <= 17 THEN 'Remaja'
        WHEN Age > 18 AND Age < 35 THEN 'Dewasa'
        ELSE 'Manula'
	END AS Kategori_usia
FROM customer;

/* Menampilkan CustomerID, Umur, kategori umur dan Label Gender pada table customer*/
SELECT CustomerID, Age,
	Case
		WHEN Age <= 17 THEN 'Remaja'
        WHEN Age > 18 AND Age < 35 THEN 'Dewasa'
        ELSE 'Manula'
	END AS Kategori_usia,
    Case
		WHEN Gender = 0 THEN 'Pria'
        WHEN Gender = 1 THEN 'Wanita'
        ELSE 'Tidak disebutkan'
	END AS Label_gender
FROM customer