# TEST TECHNIQUE (RAILS)

Ceci est une petite application rails.
Plusieurs méthodes sont manquantes. Certains tests sont déjà écrits, et d'autres seront à écrire.
Votre but étant que tous les tests RSpec passent sans problèmes.


1 - *Héritage*

Les containers peuvent avoir un container parent. Dans le cas où ils n'en ont pas, ils sont considérés comme étant à la racine.
Nous souhaitons de la façon la moins couteuse possible, récupérer pour un container *enfant* la collection de ses ancètres, et inversement, pour un container parent, la collection de tous ses enfants.  


2 - *Copie et déplacement*

Les containers peuvent avoir n container items. Chaque item pouvant être copié ou déplacé dans un autre container.
Dans tous les cas, il faut s'assurer que le container item soit le seul portant son nom au sein de son container.


3 - *API*

Il nous faudrait alors une API REST très simple permettant de :
- Créer des containers / container items
- Récupérer, pour un container donné, un JSON de tous ses container items, et ceux de ses container enfants s'il en a.
  (Optionnel : Le faire en utilisant le moins de requêtes SQL possibles.)


/!\ Il n'est pas nécessaire pour ce test de mettre en place une gestion des credentials / tokens /!\
Un faux current_user est disponible en dur si besoin est, au niveau de l'ApplicationController



-------------------------------------------------------------------------------------------------------


This is a very simple rails app.
Many methods are missing. Some unit tests are already present, and a few others will have to be written.
Your goal is to make sure your app is properly tested.


1 - *Inheritance*

Containers can have a parent container. If not, they are root containers.
We would like to be able to recover, for a given *child* container, all of its ancestors. We would also like to be able to recover all of its children.
Whatever method you will use, we would like it to be as cost-efficient (SQL-wise) as possible.


2 - *Copy / Move*

Containers can have N container items. Each item can be copied or moved to another container.
In any case, you have to make sure the container_item's name is unique within its new container.


3 - *API*

We would need a very simple REST API allowing us to :   
  - Create containers & container times
  - Recover, for a given container, a JSON with all its container items & its children's, if it has any.
  - (Optional: Doing so with as few SQL queries as possible.)


/!\ You don't need to add any authentication system for this test /!\
A fake current_user is hard-coded in your ApplicationController if needed.
