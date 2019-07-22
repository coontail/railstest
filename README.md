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
- Récupérer, pour un container donné, un JSON de tous ses container items, et ses container enfants s'il en a.



/!\ Il n'est pas nécessaire pour ce test de mettre en place une gestion des credentials / tokens /!\
Un faux current_user est disponible en dur si besoin est, au niveau de l'ApplicationController
