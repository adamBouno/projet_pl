param n;# Nombre d'objects
param u { i in 1..n }; #nombre d'utilite
param a{ i in 1..n };  #nombre de poids
param b;
#variable
var x{1..n} binary;
maximize valeur_totale:sum{ i in 1..n } u[i] * x[i];
#contrainte 
subject to capa: sum { i in 1..n } a[i]*x[i]<=b;
printf"----avant resolution ----\ n";
solve;
#display x;
#display z; 
printf "solution du sac a dos :\n";
for {i in 1..n}{
    printf "object %d :x=%d\n",i ,x[i];

}
printf "valeur totale: %f\n",valeur_totale; 