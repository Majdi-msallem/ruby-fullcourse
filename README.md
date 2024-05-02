# README


```bash
rails db:migrate
```

```bash
-Rollback migration retourner a la derniere migration
rails db:rollback
```

```bash
-ajouter des nouveau attribut pour cree un fichier de migration
rails g migration add_columns_to authors address:string contact:string
-lancer la migration 
rails db:migrate

```