PROGRAM jeu_de_l_oie;

USES crt;

VAR
	//Declaration
	place, de, sommedes, memde: INTEGER;
	fin: BOOLEAN;

BEGIN

	clrscr;

	//initialisation
	place:=0;
	de:=0;
	sommedes:=0;
	memde:=0;
	fin:=FALSE;

	REPEAT

		writeln('veuillez entrer le resultat de votre premier jet : ');
		readln(de);
		sommedes:=sommedes+de;
		writeln('veuillez entrer le resultat de votre deuxieme jet : ');
		readln(de);
		sommedes:=sommedes+de;



		WHILE ((de<1) OR (de>6)) DO
			BEGIN
			sommedes:=0;
			writeln('erreur, relancez vos des');
			writeln('veuillez entrer le resultat de votre premier jet : ');
			readln(de);
			sommedes:=sommedes+de;
			writeln('veuillez entrer le resultat de votre second jet');
			readln(de);
			sommedes:=sommedes+de;
			END;

		place:=place+sommedes;
		writeln('votre position est : ',place);
		memde:=sommedes;
		sommedes:=0;

		IF place=58 THEN
			BEGIN
			writeln('You died');
			place:=0;
			writeln('votre position est : ',place);
			END;

		WHILE (place MOD 9=0) AND (place<62) DO
			BEGIN
			writeln('Vous avez trouve une oie, votre jet est double ');
			place:=place+memde;
			writeln('votre position est : ',place);
			END;

		IF place=66 THEN
			BEGIN
			fin:=TRUE;
			END
		ELSE
			BEGIN
			IF place>66 THEN
				BEGIN
				writeln('Vous etes parti trop loin !');
				place:=(place-((place-66)*2));
				writeln('votre position est : ',place);
				END;
			END;

	UNTIL fin=TRUE;

	writeln('Felicitations ! La victoire vous appartient.');

	readkey;

END.