# My new project

## Introduction

> Comment créer une application avec sinatra, créer un serveur local, utiliser l'architecture MVC, le routage, les views et la base de données pour créer un app potins opérationnelle ?

## Code Samples

> J'ai pu installer Sinatra puis écrire mon fichier controller.rb (la partie Controller de mon archi MVC) afin de pouvoir créer les get et/ou les post nécessaires aux redirections vers les URL (la partie routeur de mon archi MVC) affichant mes pages statiques et dynamiques (la partie View de mon archi MVC).
PS : pour un programme propre, j'ai écris un fichier config.ru
- les pages statiques sont au nombre de 3
    - index.erb accueille le visiteur => un get suffit.
    - l'invite à remplir le formulaire (cf. new_gossip.erb) => j'ai paramétré un post pour que le programme stocke les input de l'utilisateur et les stocke dans la BDD.
    - tout en lui donnant la possibilité d'accéder à tous les potins déjà  présents (cf. all_gossip.erb) => un get suffit. Grâce à l'extension erb, j'ai pu intégrer mon code ruby et afficher tous les commentaires à l'aide d'une boucle.
- la page dynamique show.erb permet à l'utilisateur d'afficher la page d'un potin. J'ai pu stocker les inputs de l'utilisateur grace aux params.

> J'ai créé une class Gossip (la partie Model de mon architecture MVC) pour faire le lien entre ma BDD et mon controller. J'ai utilisé CSV pour créer ma BDD. C'est grâce à la méthode self.find que j'ai pu sortir chacun des potins de BDD en fonction de l'input index de l'utilisateur. 

## Installation

> The installation instructions are low priority in the readme and should come at the bottom. The first part answers all their objections and now that they want to use it, show them how.
