CREATE TABLE "Mitglieder"(
	"mId" INTEGER,
	"vorname" VARCHAR(64),
	"nachname" VARCHAR(64),
	"adresse" VARCHAR(256),
	PRIMARY KEY("mId")
)

CREATE TABLE "Kurse"(
	"kId" INTEGER,
	PRIMARY KEY("kId")
)

CREATE TABLE "belegen"(
	"mId" INTEGER,
	"kId" INTEGER,
	PRIMARY KEY("mId","kId"),
	FOREIGN KEY("mId") REFERENCES "Mitglieder"("mId"),
	FOREIGN KEY("kId") REFERENCES "Kurse"("kId")
)
