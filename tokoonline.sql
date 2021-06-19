-- Generated by Oracle SQL Developer Data Modeler 20.4.1.406.0906
--   at:        2021-05-02 00:22:01 ICT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g


CREATE TABLE baju (
    harga               NUMBER NOT NULL,
    merek               VARCHAR2(50) NOT NULL,
    warna               VARCHAR2(50) NOT NULL,
    id_produk           NUMBER NOT NULL,
    pesanan_id_pesanan  NUMBER NOT NULL
)
LOGGING;

ALTER TABLE baju ADD CONSTRAINT baju_pk PRIMARY KEY ( id_produk );
CREATE TABLE baju_anak_anak (
    harga               NUMBER NOT NULL,
    merek               VARCHAR2(50) NOT NULL,
    warna               VARCHAR2(50) NOT NULL,
    id_produk           NUMBER NOT NULL,
    pesanan_id_pesanan  NUMBER NOT NULL
)
LOGGING;

ALTER TABLE baju_anak_anak ADD CONSTRAINT baju_anak_anak_pk PRIMARY KEY ( id_produk );
CREATE TABLE celana (
    harga               NUMBER NOT NULL,
    merek               VARCHAR2(50) NOT NULL,
    warna               VARCHAR2(50) NOT NULL,
    id_produk           NUMBER NOT NULL,
    pesanan_id_pesanan  NUMBER NOT NULL
)
LOGGING;

ALTER TABLE celana ADD CONSTRAINT celana_pk PRIMARY KEY ( id_produk );
CREATE TABLE jam_tangan (
    harga               NUMBER NOT NULL,
    merek               VARCHAR2(50) NOT NULL,
    warna               VARCHAR2(50) NOT NULL,
    id_produk           NUMBER NOT NULL,
    pesanan_id_pesanan  NUMBER NOT NULL
)
LOGGING;

ALTER TABLE jam_tangan ADD CONSTRAINT jam_tangan_pk PRIMARY KEY ( id_produk );
CREATE TABLE pelanggan (
    id_pelanggan    NUMBER NOT NULL,
    nama_pelanggan  VARCHAR2(50) NOT NULL,
    email           VARCHAR2(50) NOT NULL,
    alamat          VARCHAR2(50) NOT NULL
)
LOGGING;

ALTER TABLE pelanggan ADD CONSTRAINT pelanggan_pk PRIMARY KEY ( id_pelanggan );
CREATE TABLE pesanan (
    id_pesanan              NUMBER NOT NULL,
    nama_produk             VARCHAR2(50) NOT NULL,
    alamat                  VARCHAR2(50) NOT NULL,
    jumlah_produk           NUMBER NOT NULL,
    tgl_pesanan             DATE NOT NULL,
    pelanggan_id_pelanggan  NUMBER NOT NULL
)
LOGGING;

ALTER TABLE pesanan ADD CONSTRAINT pesanan_pk PRIMARY KEY ( id_pesanan );
CREATE TABLE sepatu (
    harga               NUMBER NOT NULL,
    merek               VARCHAR2(50) NOT NULL,
    warna               VARCHAR2(50) NOT NULL,
    id_produk           NUMBER NOT NULL,
    pesanan_id_pesanan  NUMBER NOT NULL
)
LOGGING;

ALTER TABLE sepatu ADD CONSTRAINT sepatu_pk PRIMARY KEY ( id_produk );
ALTER TABLE baju
    ADD CONSTRAINT baju_pesanan_fk FOREIGN KEY ( pesanan_id_pesanan )
        REFERENCES pesanan ( id_pesanan )
    NOT DEFERRABLE;
ALTER TABLE baju_anak_anak
    ADD CONSTRAINT baju_anak_anak_pesanan_fk FOREIGN KEY ( pesanan_id_pesanan )
        REFERENCES pesanan ( id_pesanan )
    NOT DEFERRABLE;
ALTER TABLE celana
    ADD CONSTRAINT celana_pesanan_fk FOREIGN KEY ( pesanan_id_pesanan )
        REFERENCES pesanan ( id_pesanan )
    NOT DEFERRABLE;
ALTER TABLE jam_tangan
    ADD CONSTRAINT jam_tangan_pesanan_fk FOREIGN KEY ( pesanan_id_pesanan )
        REFERENCES pesanan ( id_pesanan )
    NOT DEFERRABLE;
ALTER TABLE pesanan
    ADD CONSTRAINT pesanan_pelanggan_fk FOREIGN KEY ( pelanggan_id_pelanggan )
        REFERENCES pelanggan ( id_pelanggan )
    NOT DEFERRABLE;
ALTER TABLE sepatu
    ADD CONSTRAINT sepatu_pesanan_fk FOREIGN KEY ( pesanan_id_pesanan )
        REFERENCES pesanan ( id_pesanan )
    NOT DEFERRABLE;

-- Oracle SQL Developer Data Modeler Summary Report:
--
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- CREATE VIEW                              0
-- ALTER TABLE                             13
-- ALTER INDEX                              0
-- ALTER VIEW                               0
-- DROP TABLE                               0
-- DROP INDEX                               0
-- DROP VIEW                                0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- DROP PACKAGE                             0
-- DROP PACKAGE BODY                        0
-- DROP PROCEDURE                           0
-- DROP FUNCTION                            0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- DROP TRIGGER                             0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- DROP TYPE                                0
-- CREATE SEQUENCE                          0
-- ALTER SEQUENCE                           0
-- DROP SEQUENCE                            0
-- CREATE MATERIALIZED VIEW                 0
-- DROP MATERIALIZED VIEW                   0
-- CREATE SYNONYM                           0
-- DROP SYNONYM                             0
-- CREATE DIMENSION                         0
-- DROP DIMENSION                           0
-- CREATE CONTEXT                           0
-- DROP CONTEXT                             0
-- CREATE DIRECTORY                         0
-- DROP DIRECTORY                           0

--
-- ERRORS                                   0
-- WARNINGS                                 0