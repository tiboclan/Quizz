PROGRAM QUIZ(INPUT,OUTPUT);                     (* J‚sus & Patrick *)

USES CRT;

VAR
   THEME,
   COMPTEUR,
   SCORE,
   REJ:INTEGER;
   NOM_JOUEUR1,
   NOM_JOUEUR2:STRING[25];


PROCEDURE PRESENTATION;

VAR
   COULEUR:INTEGER;
BEGIN
     COULEUR := 1;

     REPEAT
           TEXTCOLOR(COULEUR);
           WRITELN;WRITELN;
           WRITELN;WRITELN;
           WRITELN;WRITELN;
           WRITELN;WRITELN;
           WRITELN ('                ÜÜÜÜÜÜÜÜ    Ü       Ü    ÜÜÜÜÜÜÜ    ÜÜÜÜÜÜÜÜ');
           WRITELN ('                Û      Û    Û       Û       Û             Üß');
           WRITELN ('    ÜÜÜÜÜÜÜ     Û      Û    Û       Û       Û           Üß       ÜÜÜÜÜÜÜ');
           WRITELN ('                Û      Û    Û       Û       Û         Üß    ');
           WRITELN ('                ÛÜÜÜÜÜÜÛÜÜ  ÛÜÜÜÜÜÜÜÛ    ÜÜÜÛÜÜÜ    ÜÛÜÜÜÜÜÜ');
           COULEUR :=COULEUR + 1;
           DELAY(500);
           CLRSCR;
     UNTIL COULEUR =15;

     WRITELN;WRITELN;
     TEXTCOLOR (13);
     WRITELN;WRITELN;
     WRITELN;WRITELN;
     WRITELN;WRITELN;
     WRITELN;
     WRITELN ('     ÛÜ     ÜÛ  ÛßßßßßßßÛ  ßßßßÛßßßß            Û              ÜÛÜ       Û');
     WRITELN ('     Û ßÜ Üß Û  Û       Û      Û                Û            Üß   ßÜ     Û');
     WRITELN ('     Û   ß   Û  Û       Û      Û      ßßßßßßß   Û            ÛÜÜÜÜÜÛ     Û');
     WRITELN ('     Û       Û  Û       Û      Û                Û            Û     Û     Û');
     WRITELN ('     Û       Û  ÛÜÜÜÜÜÜÜÛ  ÜÜÜÜÛÜÜÜÜ            ÛÜÜÜÜÜÜÜ     Û     Û     Ü');

     WRITELN;WRITELN;
     WRITELN ('                         Pressez sur un touche S.V.P.');
     WRITELN;WRITELN;
     WRITELN;WRITELN;

     WRITELN ('Auteur & Programmeur: -J‚sus-Yann Langlais');
     WRITELN ('                      -Patrick Thibault');

END;

PROCEDURE JOUEUR;

VAR
   NB_JOUEUR:INTEGER;
   

BEGIN
     REPEAT
           CLRSCR;
           WRITELN;WRITELN;
           WRITELN;WRITELN;
           WRITELN;WRITELN;
           WRITELN;WRITELN;
           TEXTCOLOR (3);
           WRITE ('                        Un ou deux joueur(s) ?  ');
           READLN (NB_JOUEUR);

           IF (NB_JOUEUR >2) OR (NB_JOUEUR <1) THEN
              BEGIN
                   CLRSCR;
                   WRITELN;WRITELN;
                   WRITELN;WRITELN;
                   WRITELN;WRITELN;
                   WRITELN;WRITELN;
                   WRITE ('                                  IMPOSSIBLE !!!  ');
                   DELAY (3000);
                   CLRSCR;
              END;
     UNTIL (NB_JOUEUR <3) AND (NB_JOUEUR >=1);
        BEGIN
              CASE NB_JOUEUR OF

              1:BEGIN
                     CLRSCR;
                     WRITELN;WRITELN;
                     WRITELN;WRITELN;
                     WRITELN;WRITELN;
                     WRITELN;WRITELN;
                     WRITE ('                 Joueur 1, Veuillez entrer votre nom S.V.P.  :');
                     READLN (NOM_JOUEUR1);
                END;
              2:BEGIN
                     CLRSCR;
                     WRITELN;WRITELN;
                     WRITELN;WRITELN;
                     WRITELN;WRITELN;
                     WRITELN;WRITELN;
                     WRITE ('                 Joueur 1, Veuillez entrer votre nom S.V.P.  :');
                     READLN (NOM_JOUEUR1);

                     CLRSCR;
                     WRITELN;WRITELN;
                     WRITELN;WRITELN;
                     WRITELN;WRITELN;
                     WRITELN;WRITELN;
                     WRITE ('                 Joueur 2, Veuillez entrer votre nom S.V.P.  :');
                     READLN (NOM_JOUEUR2);
                END;
        END;
    
     END;
END;

PROCEDURE CATEGORI;

BEGIN
     REPEAT
           CLRSCR;
           TEXTCOLOR (WHITE);
           WRITELN ('         Ce programme est un jeu questionnaire pour ‚valuer vos connaissances ');
           WRITELN ('                               sur les thŠme suivant: ');
           WRITELN;WRITELN;
           WRITELN;WRITELN;
           TEXTCOLOR (RED);
           WRITELN ('              1                           2                           3      ');
           WRITELN ('         -----------                 -----------                 ----------- ');
           TEXTCOLOR (WHITE);
           WRITELN ('         GEOGRAPHIE                 DIVERTISSEMENT               TECHNOLOGIE ');
           WRITELN;WRITELN;
           TEXTCOLOR (RED);
           WRITELN ('              4                           5                           6      ');
           WRITELN ('         -----------                 -----------                 ----------- ');
           TEXTCOLOR (WHITE);
           WRITELN ('          HISTOIRE                     NATURE                       SPORTS   ');
           WRITELN;WRITELN;
           WRITELN ('                        Veuillez selectioner l''un des thŠmes            ');
           WRITE ('                                          ');
           TEXTCOLOR (RED);
           READLN (THEME);

           IF (THEME > 6) OR (THEME < 1) THEN
              BEGIN
                   CLRSCR;
                   WRITELN;WRITELN;
                   WRITELN;WRITELN;
                   WRITELN;WRITELN;
                   WRITELN;WRITELN;
                   WRITE ('                                  IMPOSSIBLE !!!  ');
                   DELAY (3000);
                   CLRSCR;
              END;
     UNTIL (THEME <7) AND (THEME >=1);
END;

PROCEDURE QUESTION;

VAR
   CHOIX,
   REPONSE:INTEGER;

BEGIN
     CLRSCR;
     RANDOMIZE;
     CHOIX:= RANDOM(5);

     CASE THEME OF
          1:BEGIN
                 WRITELN;WRITELN;
                 WRITELN;WRITELN;
                 TEXTCOLOR(9);
                 WRITELN('                                   GEOGRAPHIE');

                 CASE CHOIX OF
                      1:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('               Dans quel pays se trouve la plus longue ligne de chemin de fer ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('                     1:CANADA         2:UNION SOVIETIQUE        3:ETATS-UNIS');(*UNI*)
                             WRITELN;
                             WRITE ('                                              ');
                             READLN (REPONSE);

                             IF REPONSE = 2 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');



                        END;
                      2:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Qui n''a pas l''aigle comme emblŠme national ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('               1:FRANCE         2:L''ALLEMAGNE         3:L''AUTRICHE'); (* FRANCE *)
                             WRITELN;
                             WRITELN ('                                    ');
                             READ (REPONSE);

                             IF REPONSE = 1 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             Q''EST-CE TU FAIS!');



                        END;
                      3:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Dans quel guerre eut lieu le d‚barquement de normandie ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN ('             1:PREMIERE MONDIAL         2:DES BOHERS        3:DEUXIEME MONDIAL');(*DEU*)
                             WRITELN;
                             WRITELN ('                                    ');
                             READ (REPONSE);
                             IF REPONSE = 3 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             Q''EST-CE TU FAIS!');


                        END;
                      4:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    De quelle nationalit‚ ‚tait l''explorateur Jean Cabot ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN ('                    1:PORTUGUAISE         2:ITALIENNE         3:ESPAGNOL');(*ITALIENNE*)
                             WRITELN;
                             WRITELN ('                                    ');
                             READ (REPONSE);
                             IF REPONSE = 2 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             Q''EST-CE TU FAIS!');


                        END;
                      5:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Quel pays est … demi recouvert par le d‚sert du Negev ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('                          1:ISRAEL          2:EGYPTE         3:INDE');     (*ISRAEL*)
                             WRITELN;
                             WRITELN ('                                    ');
                             READ (REPONSE);

                             IF REPONSE = 1 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             Q''EST-CE TU FAIS!');


                        END;
                 END;
            END;
          2:BEGIN
                 WRITELN;WRITELN;
                 WRITELN;WRITELN;
                 TEXTCOLOR(9);
                 WRITELN('                                   DIVERTISSEMENT');

                 CASE CHOIX OF
                      1:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Qui ‚tait le premier chanteur du groupe Genesis ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('          1:PHIL COLLINS         2:MICHEL LOUVAIN         3:PETER GABRIEL');(* PETER *)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 3 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      2:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    De quelle nationalit‚ est Francis Cabrel ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('                1:BELGE         2:FRANCAIS         3:MONGOLIEN');  (* FRANCAIS *)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 2 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      3:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('               Quelle tablette de chocolat a un secret concernant le caramel ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN ('                  1:MARS         2:CRUNCHIE         3:CARAMILK'); (*CARAMILK*)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 3 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      4:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Quel personnage de TINTIN est sourd ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN ('         1:TOURNESOL         2:SCHTROUMPHETTE         3:SPIROU');     (* TOURNESOL *)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 1 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      5:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Quel personnage chante I''M A POOR LONESOME COW-BOY ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('                    1:PAVAROTTI          2:JESUS-YANN        3:LUCKY LUKE');(*LUCKY*)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 3 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                 END;

            END;
          3:BEGIN
                 WRITELN;WRITELN;
                 WRITELN;WRITELN;
                 TEXTCOLOR(9);
                 WRITELN('                                   TECHNOLOGIE');

                 CASE CHOIX OF
                      1:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    De quelle forme est une boite de soupe ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('             1:CYLINDRIQUE         2:CUBIQUE         3:CONIQUE');    (* CYL *)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 1 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      2:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Est-ce qu''une braquette est la fermeture d''un... ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('               1:PARC D''ATTRACTION         2:PANTALON         3:GROS MACHIN');  (*PANT*)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 2 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      3:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Combien y a-t-il de bytes dans un megabyte ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN ('               1:MILLE         2:UN MILLION         3:UN MILLIARD'); (* UN MILLION *)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 2 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      4:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Qu''est-ce qui voyage plus vite que la lumiere ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN ('                  1:LE SON         2:PATRICK         3:RIEN PANTOUTE');     (* RIEN *)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 3 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      5:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Quelle compagnie fabrique une voiture mue … l''hydrogŠne ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('                          1:MERCEDES          2:RENAULT        3:BMW');     (*MERCE*)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 1 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                 END;
            END;
          4:BEGIN
                 WRITELN;WRITELN;
                 WRITELN;WRITELN;
                 TEXTCOLOR(9);
                 WRITELN('                                   HISTOIRE');

                 CASE CHOIX OF
                      1:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Combien y a t-il d''enfants dans le club des 5 ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('                              1: 5        2: 4        3: 6');    (* 4 *)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 2 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      2:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Quel tete d''animal est celle du dieu hindou de la sagesse ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('                          1:LION          2:J‚SUS-YANN         3:ELEPHANT');  (*3*)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 3 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      3:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Est-ce que le commissaire Maigret existe r‚ellement ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN ('                           1:OUI         2:NON         3:PEUT-ETRE'); (*2*)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 2 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      4:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                Dans quel histoire y a t-il une compagnie de lapins bleus ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN ('           1:"COMPAGNIE CR‚OLE"         2:"EMILIE JOLIE"         3:"MICROSOFT" ');
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 2 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      5:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Comment s''appelle la fete juive du Nouvelle An ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('                    1:ROSH HASHANA          2:NOEL        3:NEW-YEAR');     (*1*)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);                                                                  (* ISRAEL *)

                             IF REPONSE = 1 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                 END;
            END;
          5:BEGIN
                 WRITELN;WRITELN;
                 WRITELN;WRITELN;
                 TEXTCOLOR(9);
                 WRITELN('                                   NATURE');

                 CASE CHOIX OF
                      1:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('               Quels animaux sont sur terre depuis le plus longtemps ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('                   1:REPTILES         2:INSECTES         3:PIERRE GRATTON');    (*  *)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 2 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      2:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Est-ce qu''il y a des moineaux en milieu forestier ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('                      1:YES !!!         2:HEEUUU         3:PANTOUTE');  (* *)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 3 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      3:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Qui a les plus longues pattes posterieures ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN ('            1:GRENOUILLE         2:AUDREY GEFFROY         3:D‚METANE'); (**)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 1 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      4:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Quel arbre produit des samares ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN ('           1:POMMIER         2:ERABLE         3:BUISSON CHANTANT');     (*  *)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 2 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      5:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                    Est-ce que le bacon provient du... ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('              1:PORC          2:GROS ROGER        3:LA CHENILLE');     (**)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);                                                                  (* ISRAEL *)

                             IF REPONSE = 1 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                 END;
            END;
          6:BEGIN
                 WRITELN;WRITELN;
                 WRITELN;WRITELN;
                 TEXTCOLOR(9);
                 WRITELN('                                   SPORTS');
                 CASE CHOIX OF
                      1:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('      Combien de couloirs y a-t-il dans un piscine olympique ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('                1:   2         2:  -5         3:   8 ');    (*  *)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 3 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      2:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                      Que collectionnent les cartophiles ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('    1:DES GRAINES         2:LES POILS DE PIERRE         3:LES CARTE POSTALES');  (* *)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 3 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      3:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('                  A combien d''essais le serveur de badminton a-t-il droit ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN ('                      1:   1         2: 1 ET DEMI        3:    18'); (**)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 1 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      4:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('               Quel jeu a un damier o— six  triangles forment une ‚toile ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN ('                 1: POLO         2: ECHEC         3:LES DAMES CHINOISES');     (*  *)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 3 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                      5:BEGIN
                             WRITELN;WRITELN;
                             WRITELN;WRITELN;
                             WRITELN('               Dans quelle main la dame de trŠfle tien-elle une fleur ?');
                             WRITELN;WRITELN;
                             TEXTCOLOR(WHITE);
                             WRITELN('                       1: DROITE          2:GAUCHE        3:LES DEUX');     (**)
                             WRITELN;
                             WRITE ('                                    ');
                             READLN (REPONSE);

                             IF REPONSE = 1 THEN
                                BEGIN
                                     WRITE ('                             C''EST BIEN!');
                                     SCORE := SCORE + 1;
                                END
                             ELSE
                                 WRITE ('                             T''ES POCHE CRISSE!');
                        END;
                 END;
                 



            END;


     END;
END;

PROCEDURE REJOUER;

BEGIN
     WRITELN;WRITELN;
     WRITELN;WRITELN;
     WRITELN (NOM_JOUEUR1:25,' ,votre score est de ',SCORE:5);
     WRITELN;WRITELN;
     WRITE ('                 VOULEZ-VOUS SORTIR ?');
     WRITE ('                  1:OUI     2:NON   ');
     READ (REJ);
     WRITELN;WRITELN;

     IF REJ = 2 THEN
        WRITE ('                   OK D''ABORD')
     ELSE
         WRITE ('                  BYE-BYE!');
END;
                         (* PROGRAMME PRINCIPAL *)
BEGIN
     CLRSCR;
     PRESENTATION;
     REPEAT UNTIL KEYPRESSED;
     JOUEUR;
     REPEAT
           COMPTEUR := 0;
           SCORE := 0;
           REPEAT

                 CATEGORI;
                 QUESTION;
                 DELAY (3500);
                 COMPTEUR := COMPTEUR +1;

           UNTIL COMPTEUR =3 ;
           REJOUER;

     UNTIL REJ = 1;
END.
