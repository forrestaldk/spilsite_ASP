--
-- Database: "spilsitephp"
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen "bruger"
--

CREATE TABLE "bruger"  (
  "bruger_id" int NOT NULL PRIMARY KEY IDENTITY,
  "bruger_username" varchar(50) NOT NULL,
  "bruger_password" varchar(50) NOT NULL,
  "bruger_navn" varchar(50) NOT NULL,
  "fk_rolle_id" int NOT NULL
);

--
-- Data dump for tabellen "bruger"
--

SET IDENTITY_INSERT "bruger" ON ;
INSERT INTO "bruger" ("bruger_id", "bruger_username", "bruger_password", "bruger_navn", "fk_rolle_id") VALUES
(1, 'chuck_norris', '1234', 'Chuck Norris', 1),
(2, 'kermit', '1234', 'Kermit', 2),
(3, 'cookie_monster', '1234', 'Cookie Monster', 2),
(4, 'big_bird', '1234', 'Big Bird', 2),
(5, 'elmo', '1234', 'Elmo', 3),
(6, 'miss_piggy', '1234', 'Miss Piggy', 3);

SET IDENTITY_INSERT "bruger" OFF;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen "rettighed"
--

CREATE TABLE "rettighed" (
  "rettighed_id" int NOT NULL PRIMARY KEY IDENTITY,
  "rettighed_navn" varchar(50) NOT NULL,
  "rettighed_kodenavn" varchar(50) NOT NULL
);

--
-- Data dump for tabellen "rettighed"
--

SET IDENTITY_INSERT "rettighed" ON ;
INSERT INTO "rettighed" ("rettighed_id", "rettighed_navn", "rettighed_kodenavn") VALUES
(1, 'Administration: Opret brugere', 'admin_opret_brugere'),
(2, 'Administration: Rediger brugere', 'admin_rediger_brugere'),
(3, 'Administration: Slet brugere', 'admin_slet_brugere'),
(4, 'Administration: Deaktiver brugere', 'admin_deaktiver_brugere'),
(5, 'Administration: Skift medlemmers brugernavn', 'admin_skift_medlemmers_username'),
(6, 'Administration: Skift moderatorers brugernavn', 'admin_skift_moderators_username'),
(7, 'Administration: Rediger spil', 'admin_rediger_spil'),
(8, 'Administration: Slet spil', 'admin_slet_spil'),
(9, 'Administration: Deaktiver spil', 'admin_deaktiver_spil'),
(10, 'Administration: Deaktiver specifikke downloads', 'admin_deaktiver_specifikke_downloads'),
(11, 'Administration: Rediger medlemmers kommentarer', 'admin_rediger_medlemmers_kommentarer'),
(12, 'Administration: Slet medlemmers kommentarer', 'admin_slet_medlemmers_kommentarer'),
(13, 'Administration: Rediger moderatorers kommentarer', 'admin_rediger_moderatorers_kommentarer'),
(14, 'Administration: Slet moderatorers kommentarer', 'admin_slet_moderatorers_kommentarer'),
(15, 'Registrer profil', 'registrer_profil'),
(16, 'Upload spil', 'upload_spil'),
(17, 'Rediger egne spil', 'rediger_egne_spil'),
(18, 'Slet egne spil', 'slet_egne_spil'),
(19, 'Rate spil', 'rate_spil'),
(20, 'Download spil', 'download_spil'),
(21, 'Læs kommentarer', 'laes_kommentarer'),
(22, 'Skriv kommentarer', 'skriv_kommentarer'),
(23, 'Tilmeld og frameld nyhedsbrev', 'tilmeld_og_frameld_nyhedsbrev'),
(24, 'Spil online', 'spil_online');

SET IDENTITY_INSERT "rettighed" OFF;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen "rolle"
--

CREATE TABLE "rolle" (
  "rolle_id" int NOT NULL PRIMARY KEY IDENTITY,
  "rolle_navn" varchar(50) NOT NULL
);

--
-- Data dump for tabellen "rolle"
--

SET IDENTITY_INSERT "rolle" ON ;
INSERT INTO "rolle" ("rolle_id", "rolle_navn") VALUES
(1, 'Admin'),
(2, 'Moderator'),
(3, 'Medlem'),
(4, 'Gæst');

SET IDENTITY_INSERT "rolle" OFF;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen "rolle_og_rettighed"
--

CREATE TABLE "rolle_og_rettighed" (
  "fk_rolle_id" int NOT NULL PRIMARY KEY IDENTITY,
  "fk_rettighed_id" int NOT NULL
);

--
-- Data dump for tabellen "rolle_og_rettighed"
--

SET IDENTITY_INSERT "rolle_og_rettighed" ON ;
INSERT INTO "rolle_og_rettighed" ("fk_rolle_id", "fk_rettighed_id") VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 14),
(1, 13),
(1, 12),
(1, 11),
(1, 10),
(1, 9),
(1, 8),
(1, 7),
(1, 6),
(1, 5),
(1, 4),
(1, 20),
(1, 21),
(1, 22),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 7),
(2, 9),
(2, 10),
(2, 11),
(2, 20),
(2, 21),
(2, 22),
(3, 16),
(3, 17),
(3, 20),
(3, 21),
(3, 22),
(4, 15),
(4, 19),
(1, 24),
(4, 23),
(3, 23),
(2, 24),
(3, 24);

SET IDENTITY_INSERT "rolle_og_rettighed" OFF;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
