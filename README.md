# PredatorPreyModel
Predator-Prey Model Dynamic System with Disease in Prey, Swarming Behavior, Fear Effects, and Prey Protection

The Model Assumptions are as follows
1. There are 3 species, namely vulnerable prey, infected prey (infected with the virus), and predatory populations.
2. Vulnerable prey grows logistically with the carrying capacity of the K environment and ignores Allee Treshold.
3. The rate of transmission between vulnerable prey and infected prey is made using a simple law of mass.
4. The disease spreads only among prey populations only and the disease cannot be genetically inherited.
5. Infected populations cannot be cured or immune.
6. The processing time of infected prey is 0, so the response function of predators eating infected prey is Holling Type I .
7. Vulnerable prey feels population pressure from vulnerable prey and infected prey.
8. Eating vulnerable prey increases the birth rate of predators, while eating infected prey reduces the density of predators. Thus, it is assumed that predators will die if they eat infected prey.
9. Prey grows following the fear factor of predators, so the form indicating the growth rate of prey multiplied by f(K, y) = /frac{1}{1+Ky} by K > 0 is the fear factor in prey and y is the density of the predator.
10. The response function of predators eating vulnerable prey uses the Holling Type II response function, while the response function of predators eating infected prey is the Holling response function of Type I. This is because predators take time to obtain and process vulnerable prey, whereas prey infected with diseases tend to approach predators to end their lives and it is assumed that the time predators process infected prey is assumed to be zero.
11. Mathematical models ignore delay time.
12. Each prey is vulnerable and both infected prey and predators have a natural mortality rate.
13. Predators feed on prey on the outermost side of the crowd so that there are √Xs in the predator response function, which in detail is the density of prey on the outermost side of the crowd.
14. Only vulnerable prey can form a crowd to protect themselves.
15. Prey protected or evacuated from predators are infected prey and vulnerable prey, so if there are as many m1Xs , m1 ∈ [0,1) are protected then there are (1 − m1)Xs vulnerable prey eaten by predators, and if as much as mXi, m ∈ [0,1) are protected, then there is (1 – m)Xi prey eaten by predators.
