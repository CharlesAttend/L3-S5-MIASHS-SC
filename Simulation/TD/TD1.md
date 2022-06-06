# Exercice 1 

1) Nombre random de 0 à 1
2) Boolean si le chifre random plus petit que 3 
3) transforme le boolean en 0 ou 1, int = fait un peu comme la loi de bernouilli 
4) tirage à la suite avec résultat dans une liste 
5) somme de la liste = nombre de succès 
6) C'est une loi binomiale  :
   Lancé de dès `sum([int(int(random()*10)==6) for i in range(10)])`
   Pile ou face mille fois : `sum([int(random()<0.5) for i in range(1000)])`
   Oui on constate que on tombe souvent autour de 500.

# Exercice 2

1) binomial(n,p, size). Size si on demande le tirage de plusieurs binomial. Conforme à l'espèrance $\sim 0.5n$
2) Same 
3) Same 
4) `hypergeometric(ngood, nbad, nsample, size=None)` Samples are drawn from a hypergeometric distribution with specified parameters, `ngood` (ways to make a good selection), `nbad` (ways to make a bad selection), and `nsample` (number of items sampled, which is less than or equal to the sum ``ngood + nbad``)
5) `Bernouilli` === `int(random()<0.5)`
6) D'après la doc, c'est l'écart type. On regarde la répartion des valeur avec des gros écart type pour voir la différence
7) D'après la doc c'est $\frac{1}{\lambda}$. On donne usuellement $\lambda$. En effet les valeurs ne semble pas tourner autour de lambda mais de 1 sur lambda, autour de l'espérance 
8) ...

# Exercice 3

1) $F_X^-1 (x) = t \Leftrightarrow (-\ln(1-x))^{1/a} = t $
   `[(-log(1-x))^(1/a) for i in range(10)]`
   \
   Correction avec un peu de rédaction :$ U \sim Unif(]0;1[), G_a^{-1}(U) \sim Weibull$ 
   $ \forall \alpha \in ]0;1[, G_a^{-1}(\alpha) = \inf\{t \in R, G_a(t) \geq \alpha\} = \inf \{t \in R, t \geq (-\ln(1-x))^{1/a} \}$
   Remarque : $ 1-U \sim Unif, \text{ quand } U \sim Unif$

2) Il faut poser comme variable `t = (t-5)/30` au début du programme pour garder les bonnes probas: NON t'es pas en informatique, vois ce qu'il y a en dessous.
   $ F_Y(t) = F_X(\frac{t-5}{30}) \Leftrightarrow P(Y < t) = P(X<\frac{t-5}{30}) = P(30X+5 \leq t)$
   Donc on utlise : `[(-log(1-x))^(1/a)*30 + 5 for i in range(10)]`
3) L'inverse d'une loi expo ?

# Exercice 4 
1) Voir one note
2) Voir le script
3) .
4) `pl.hist(tirage)` ne donne pas le bon graphique. 
5) Les valeurs s'arrange autour de l'espérance