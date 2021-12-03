SELECT
    mhs.mhs_name AS mhs_name,
    IFNULL(mhs_mata.count_mk,0) AS jumlah_sks
FROM
    mahasiswa AS mhs
	LEFT OUTER JOIN(
		SELECT 
			mmk.mhs_id AS mhs_id,
			IFNULL(SUM(mk.sks),0) AS count_mk
		FROM
			mhs_mata_kuliah mmk
			LEFT OUTER JOIN(
				SELECT
					mata_kuliah.id AS mk_id,
					mata_kuliah.sks AS sks
				FROM
					mata_kuliah
			) mk ON mk.mk_id = mmk.mk_id
		WHERE
			mmk.semester = 1
		GROUP BY
			mmk.mhs_id
	) mhs_mata ON mhs_mata.mhs_id = mhs.id
