# README


Active Record in Ruby on Rails
Active Record is the Object-Relational Mapping (ORM) layer provided by Ruby on Rails. It allows you to interact with your database using Ruby objects, making database operations intuitive and efficient.

Getting Started
To start using Active Record in your Rails application, make sure you have defined your database configuration in config/database.yml. Rails uses this configuration to connect to your database.



Voici un guide simple pour créer un modèle avec Rails:

---

# Creating a Model with Rails

In Ruby on Rails, models represent the data of your application and handle interactions with the database. Here's how you can create a model in Rails:

## Step 1: Generate the Model

Use the Rails generator to create a new model. For example, to create a `User` model with `name` and `email` attributes, run:

```bash
rails generate model User name:string email:string
```

This command will generate a migration file and a model file for the `User` model.

## Step 2: Run the Migration

Run the migration to create the corresponding database table for your model:

```bash
rails db:migrate
```

This will execute the migration file and create the `users` table with `name` and `email` columns in your database.

## Step 3: Use the Model

You can now use the `User` model in your Rails application. For example, to create a new user:

```ruby
user = User.new(name: "John", email: "john@example.com")
user.save
```

Or to find a user by their ID:

```ruby
user = User.find(1)
```

## Step 4: Customize the Model

You can customize the model by adding validations, associations, and methods as needed. Here's an example of adding a validation to ensure the presence of a name:

```ruby
class User < ApplicationRecord
  validates :name, presence: true
end
```

This ensures that every user record must have a name.

---

