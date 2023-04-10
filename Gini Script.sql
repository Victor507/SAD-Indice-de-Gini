CREATE TABLE IF NOT EXISTS dim_tempo(
	id BIGSERIAL PRIMARY KEY,
	ano integer
);
CREATE TABLE IF NOT EXISTS dim_local(
	id BIGSERIAL PRIMARY KEY,

	nomeMunicipio varchar(255)
);
CREATE TABLE IF NOT EXISTS fato_gini(
	id_tempo INT NOT NULL,
	id_local INT NOT NULL,
	indice float,
	
	FOREIGN KEY(id_tempo) REFERENCES dim_tempo(id),
	FOREIGN KEY(id_local) REFERENCES dim_local(id),
	
	PRIMARY KEY (id_tempo, id_local)
);