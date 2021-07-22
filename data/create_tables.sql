BEGIN;

DROP TABLE IF EXISTS "quote", "joke";

CREATE TABLE "quote" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "description" TEXT NOT NULL,
    "author" TEXT NOT NULL
);

CREATE TABLE "joke" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "description" TEXT NOT NULL
);

COMMIT;



BEGIN;

INSERT INTO "quote" ("description", "author") VALUES
('Travaillez dur à vous accomplir en développant vos capacités.', 'Sénèque'),
('La vie, c’est comme une bicyclette, il faut avancer pour ne pas perdre l’équilibre.', 'Albert Einstein'),
('Ils ne savaient pas que c’était impossible, alors ils l’ont fait.', 'Mark Twain'),
('Une sortie, c’est une entrée que l’on prend dans l’autre sens.', 'Boris Vian'),
('La seule chose qu’on est sûr de ne pas réussir est celle qu’on ne tente pas.', 'Paul-Emile Victor'),
('La neige, on l’enlève, elle revient. Toujours. Encore et encore. Et nous, pauvres âmes chagrines, nous perdons nos regards dans l’horizon blanc de notre solitude.', 'Bohort (Kaamelott)'),
('Arthour !… Pas changer assiette pour fromage !', 'Roi Burgonde (Kaamelott)'),
('Mais y a rien à développer ! C’est de la merde, c’est de la merde, c’est tout ! Moi, on me sert ça dans une auberge, le tavernier, il s’prend une quiche dans sa tête !', 'Karadoc (Kaamelott)'),
('Elle est où la poulette ?', 'Kadoc (Kaamelott)'),
('Je suis pas gros, j’ai une ossature lourde!', 'Cartman (South Park)'),
('Chasser sans bière c’est comme... pêcher sans bière.', 'Jimbo (South Park)'),
('Et bien tu auras un F, tu redoubleras et plus tard tu videras des fosses sceptiques pour te payer tes doses de cracks.', 'M. Garisson (South Park)'),
('J’imagine simplement que mon squelette c’est moi et mon corps est ma maison. De cette manière, je suis toujours chez moi.', 'Jared (Silicon Valley)'),
('La peur mène à la colère, la colère mène à la haine… La haine mène à la souffrance !', 'Yoda'),
('Personne par la guerre ne devient grand.', 'Yoda'),
('En gros, les mariages c’est comme les enterrements, mais avec du gâteau.', 'Rick Sanchez (Rick & Morty)'),
('Personne n’existe délibérément, on a notre place nulle part et tout le monde finit par mourir. Viens regarder la télé', 'Rick Sanchez (Rick & Morty)');

INSERT INTO "joke" ("description") VALUES
('Vous connaissez la blague du mec qui a oublié d’augmenter la variable dans sa boucle while ? Vous connaissez la blague du mec qui a oublié d’augmenter la variable dans sa boucle while ? Vous connaissez la blague du mec qui a oublié d’augmenter la variable dans sa boucle while ? Vous connaissez la blague du mec qui a oublié d’augmenter la variable dans sa boucle while ? Vous connaissez la blague du mec qui a oublié d’augmenter la variable dans sa boucle while ? Vous connaissez la blague du mec qui a oublié d’augmenter la variable dans sa boucle while ? Vous connaissez la blague du mec qui a oublié d’augmenter la variable dans sa boucle while ?'),
('Combien de développeurs faut-t-il pour remplacer une ampoule grillée ? Aucun, c’est un problème Hardware.'),
('C’est l’histoire d’un administrateur qui configure ses variables d’environnement, et là......... PATH le chemin !'),
('Tu sais pourquoi l’iPhone se plie ? Parce que l’Apple Store.'),
('Quand quelqu’un de triste joue aux jeux vidéo pour oublier, on peut dire qu’il se console ?'),
('Pourquoi les geeks doivent-ils suivre une formation incendie ? A cause des pare-feux.'),
('A quoi sert Internet Explorer ? A télécharger Google Chrome.'),
('Quand est ce que Windows ne bug pas ? Quand l’ordinateur est éteint.'),
('De quelle couleur sont tes yeux ? #1292f4 et toi ?'),
('Que dit une mère à son fils geek quand le diner est servi ? Alt Tab !!!'),
('T’as pris quoi comme résolution pour cette nouvelle année ? 1080p.'),
('De nos jours, le zip ça devient rar...'),
('Où partent en vacances les geeks ? Au C-Shell.'),
('Comment on appelle un mec qui répare des tablettes Microsoft ? Un technicien de surface.'),
('Un geek ne descend pas du métro. Il libère la RAM...'),
('Il y a 20 ans, John, alors enfant, rêvait d’être écrivain. Son souhait était d’écrire des choses qui allaient donner des émotions, faire pleurer, s’énerver et révolter ses lecteurs. Il a réussi ! Aujourd’hui il rédige les messages d’erreur pour Microsoft....');

COMMIT;