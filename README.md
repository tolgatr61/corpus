Corpus de fichiers textes via du scripting en Shell.

Instructions : 

Veillez à bien autorisez les lancements de script (via ./nomduscript.sh ou bash nomduscript.sh) à l'aide de la requête chmod u+x nomduscript.sh)

I est un paramètre (qui peut aller de 0 à 7) pour calculer les idf des I * 500 fichiers.
Execution du tf.sh = for j in $(seq I); do /usr/bin/time -p -o ../resultat.txt -a bash tf.sh $j; done
Les fichiers seront envoyés vers un dossier container.

Execution du df.sh = bash df.sh 1
Vérifiez par la suite le fichier texte generé df.txt avec la requête : less df.txt

A corriger :

//TOFIX le listing semble bon mais le comptage du nombre d'occurence dans les script semblent erroné, la cause provient soit du sed soit du sort.
//TODO compatibilité entre différents type de fichiers textes : exemple json, html, python, ou comme un simple .txt.
L'idée serait de faire une variable $v qui sera défini lors de l'éxécution de la requête donc on aura qu'à travailler sur des fichiers $i.$v
