

Ce projet est une application Rails qui démontre l'utilisation des requêtes Active Record pour interagir avec une base de données.

## Installation

1. Assurez-vous d'avoir Ruby et Rails installés sur votre système.
2. Clonez ce dépôt sur votre machine locale.
3. Exécutez `bundle install` pour installer les dépendances.

## Configuration de la base de données

1. Assurez-vous d'avoir configuré votre base de données dans le fichier `config/database.yml`.
2. Exécutez `rails db:create` pour créer la base de données.
3. Exécutez `rails db:migrate` pour exécuter les migrations et créer les tables nécessaires.
4. (Optionnel) Exécutez `rails db:seed` pour remplir la base de données avec des données initiales.

## Utilisation des requêtes Active Record

Ce projet comprend des exemples d'utilisation des requêtes Active Record pour effectuer des opérations CRUD (Create, Read, Update, Delete) sur les modèles.

### Exemples de requêtes

1. **Créer un nouvel enregistrement :**

```ruby
Post.create(title: "Nouveau post", content: "Contenu du post")
```

2. **Lire des enregistrements :**

```ruby
# Récupérer tous les posts
Post.all

# Trouver un post par son ID
Post.find(id)

# Conditions de recherche
Post.where("created_at > ?", 1.week.ago)

# Recherche limitée
Post.limit(5)

# Trier les résultats
Post.order(created_at: :desc)
```

3. **Mettre à jour un enregistrement :**

```ruby
post = Post.find(id)
post.update(title: "Nouveau titre")
```

4. **Supprimer un enregistrement :**

```ruby
post = Post.find(id)
post.destroy
```

Consultez la documentation officielle de Rails pour plus d'informations sur les requêtes Active Record : [Active Record Query Interface](https://guides.rubyonrails.org/active_record_querying.html).



