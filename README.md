# Rails Active record Model


---

# Modèles Active Record Rails

## Introduction

Les modèles Active Record constituent la couche de modèle dans une application Rails et sont responsables de l'interaction avec la base de données. Ils représentent généralement une table de la base de données et encapsulent la logique métier associée à ces données.

## Création d'un Modèle

Pour créer un nouveau modèle, utilisez la commande `rails generate model` suivie du nom du modèle et de ses attributs. Par exemple, pour créer un modèle de `User` avec des attributs `name` et `email`, vous pouvez exécuter :

```bash
rails generate model User name:string email:string
```

Cela créera un fichier de migration pour créer la table `users` avec les colonnes `name` et `email`, ainsi qu'un fichier de modèle `user.rb` dans le répertoire `app/models`.

## Associations

Active Record permet de définir des associations entre les modèles, telles que `has_many`, `belongs_to`, `has_one`, etc. Ces associations permettent de définir des relations entre les différentes tables de la base de données. Par exemple, pour définir une association `has_many` entre un utilisateur et ses articles, vous pouvez ajouter ceci à votre modèle `User` :

```ruby
class User < ApplicationRecord
  has_many :articles
end
```

## Validation des Données

Active Record propose de nombreuses méthodes de validation pour garantir que les données entrées dans la base de données sont valides. Vous pouvez utiliser des validateurs tels que `presence`, `length`, `uniqueness`, etc. Par exemple, pour valider la présence du nom d'utilisateur dans un modèle `User`, vous pouvez ajouter ceci :

```ruby
class User < ApplicationRecord
  validates :name, presence: true
end
```

## Opérations CRUD

Les modèles Active Record fournissent des méthodes pour effectuer les opérations CRUD (Create, Read, Update, Delete) sur les données. Vous pouvez créer, lire, mettre à jour et supprimer des enregistrements en utilisant les méthodes fournies par Active Record.

- **Create**: `Model.create(attributes)` ou `Model.new(attributes).save`
- **Read**: `Model.all`, `Model.find(id)`, etc.
- **Update**: `instance.update(attributes)` ou `Model.update(id, attributes)`
- **Delete**: `instance.destroy` ou `Model.destroy(id)`

## Exemple d'utilisation

Voici un exemple d'utilisation des modèles Active Record dans un contrôleur Rails :

```ruby
class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: "User was successfully created."
    else
      render :new
    end
  end

  # Autres actions similaires pour update et destroy...
  
  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
```

---

