############################ Code Source ACMQ_UL ###############################

## Ce fichier contient toutes les notions de programmation dont vous aurez 
## besoin pour réussir le cours.

#### 1. Opérateurs ####
#### ~1.1 Opérateurs de calcul ####
## Vous pouvez utiliser R comme une calculatrice 
1+2 # l'addition
1-2 # la soustraction
1*2 # la multiplication
1/2 # la division
1%%2 # modulo

#### ~1.2 Opérateurs d'assignement ####
## Deux options s'offrent à vous, mais la meilleure pratique est d'utiliser <-
nbBananes <- 2
names(nbBananes) <- "banane"
nbPommes <- 5
names(nbPommes) <- "pomme"
nbPatate = 1
names(nbPatate) = "patate"
fruits <- c(nbBananes,nbPommes)
fruits

#### ~1.3 Opérateurs logiques ####
1>2  # TRUE ou FALSE?
2>=2 # TRUE ou FALSE?
1<2  # TRUE ou FALSE?
2<=2 # TRUE ou FALSE?
2==2 # TRUE ou FALSE?
2!=2 # TRUE ou FALSE?
1<2 & 1 < 0 # TRUE ou FALSE?
1<2 | 1 < 0 # TRUE ou FALSE?
1 %in% c(0,1) # TRUE ou FALSE?

#### ~1.4 Instructions de contrôle ####

if ("patate" %in% c("pomme","banane","orange")){
  fruits <- c(fruits,nbPatate)
} else if ("patate" %in% c("carotte","navet","patate")) {
  veggies <- c(nbPatate)
} else print("Les patates ne sont pas comestibles :(")

fruitsVeggies <- c(fruits,veggies)
fruitsVeggies

for (i in 1:length(fruitsVeggies)){
  visProduce <- rep(names(fruitsVeggies[i]),fruitsVeggies[i])
  print(visProduce)
}

#### 2. Structure de données ####
#### ~2.1 Types de données et constantes ####
## Lorsque l'objet est de type "character", on ne peu y assigner des opérations
## mathématiques.
veggiesName <- "carotte"
veggiesName + 1 #ERROR

nbVeggies <- "23"
nbVeggies - 2 #ERROR encore

nbVeggies <- 23
nbVeggies - 2 #mieux :)

tomatoFruit <- TRUE
potatoFruit <- FALSE
tomatoFruit + potatoFruit #Pas d'erreur, pourquoi?

myFruitsNames <- c("pomme","banane","orange","tomate")
myFruitsFactor <- factor(myFruitsNames)
myFruitsFactor #Remarquez l'ordre alphabétique des "Levels"
myFruitsFactor <- factor(myFruitsNames,levels=c("orange","pomme","banane","tomate"))
myFruitsFactor #Remarquez comment le meilleur fruit est au début!

#### ~2.2 Vecteurs ####
myFruitsNames <- c("pomme","banane","orange","tomate")
nbFruits <- c(5,2,7,1)
length(nbFruits)
names(nbFruits) <- myFruitsNames
nbFruits
class(nbFruits) #Est-ce numérique ou caractère? 
nbFruits <- c(nbFruits,"concombre"="trois")
nbFruits
class(nbFruits) #Et maintenant ?
