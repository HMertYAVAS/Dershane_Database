CREATE TABLE "DERSLER" (
  "Did" int,
  "Dadi" varchar,
  "Cid" int,
  PRIMARY KEY ("Did")
);

CREATE TABLE "DERSPLANI" (
  "Pid" int,
  "Did" int,
  "Kid" int,
  "zaman" timestamp,
  "Dokid" int,
  PRIMARY KEY ("Pid")
);

CREATE TABLE "ADRES" (
  "Adrid" int,
  "il" varchar,
  "ilce" varchar,
  "postakod" int,
  "Mahalle" varchar,
  PRIMARY KEY ("Adrid")
);

CREATE TABLE "KONULAR" (
  "Kid" int,
  "Kadi" varchar,
  "Ksaat" int,
  "Did" int,
  PRIMARY KEY ("Kid")
);

CREATE TABLE "SORUBANKASI" (
  "Doid" int,
  "Yazar" varchar
);

CREATE INDEX "PK FK" ON  "SORUBANKASI" ("Doid");

CREATE TABLE "OGRENCI" (
  "Oid" int,
  "Oad" varchar,
  "Osoyad" varchar,
  "OTc" int,
  "OEmail" varchar,
  "Osifre" varchar,
  "AdresId" int,
  "Gid" int,
  PRIMARY KEY ("Oid")
);

CREATE TABLE "RANDEVU" (
  "Rid" int,
  "Zaman" timestamp,
  "RDurumid" int,
  "Oid" int,
  "Cid" int,
  PRIMARY KEY ("Rid")
);

CREATE TABLE "UYELIK" (
  "Oid" int,
  "Ubasla" timestamp,
  "Ubitis" timestamp,
  "Oyenileme" bit
);

CREATE TABLE "GRUPLAR" (
  "Gid" int,
  "Gad" varchar,
  "Pid" int,
  PRIMARY KEY ("Gid")
);

CREATE TABLE "DOKUMANLAR" (
  "Dokid" int,
  "Doad" varchar,
  "Did" int,
  PRIMARY KEY ("Dokid")
);

CREATE TABLE "CALISANLAR" (
  "Cid" int,
  "Cad" varchar,
  "Csoyad" varchar,
  "Cemail" varchar,
  "Csifre" varchar,
  "AdresId" int,
  "Gid" int,
  PRIMARY KEY ("Cid")
);

CREATE TABLE "DENEMELER" (
  "Doid" int,
  "Yayinci" varchar
);

CREATE INDEX "PK FK" ON  "DENEMELER" ("Doid");

CREATE TABLE "SONUC" (
  "Sid" int,
  "SDogru" int,
  "SYanlis" int,
  "Dokid" int,
  "Oid" int,
  PRIMARY KEY ("Sid")
);

CREATE TABLE "KONUANLATIM" (
  "Doid" int,
  "Yazar" varchar
);

CREATE INDEX "PK FK" ON  "KONUANLATIM" ("Doid");

CREATE TABLE "VIDEO" (
  "Doid" int,
  "Sahibi" varchar
);

CREATE INDEX "PK FK" ON  "VIDEO" ("Doid");

