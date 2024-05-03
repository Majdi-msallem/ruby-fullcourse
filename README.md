# Rails Migration changing/renaming existing columns

---
cree une migration
rails g migration creat_demo
---



---

## Migration for Adding/Removing/Renaming Attributes in a Table

### Introduction

Migrations in Rails are a way to alter the database schema using Ruby code. You can use migrations to add, remove, or rename attributes in a table, among other tasks.

### Adding Attributes

To add a new attribute to a table, you can generate a migration using the following command:

```bash
rails generate migration AddNewAttributeToTableName new_attribute:data_type
```

Replace `NewAttribute` with the name of the new attribute and `TableName` with the name of the table. For example, to add a `description` attribute of type string to the `products` table, you would run:

```bash
rails generate migration AddDescriptionToProducts description:string
```

In the generated migration file, you'll find the `add_column` method to add the new attribute to the table.

### Removing Attributes

To remove an attribute from a table, generate a migration using:

```bash
rails generate migration RemoveAttributeFromTableName attribute_to_remove:data_type
```

Replace `Attribute` with the name of the attribute to remove and `TableName` with the name of the table. For example, to remove the `description` attribute from the `products` table, you would run:

```bash
rails generate migration RemoveDescriptionFromProducts description:string
```

In the generated migration file, you'll find the `remove_column` method to remove the specified attribute from the table.

### Renaming Attributes

To rename an attribute in a table, generate a migration using:

```bash
rails generate migration RenameOldAttributeInTableName new_attribute_name:data_type
```

Replace `OldAttribute` with the current name of the attribute, `NewAttribute` with the desired new name, and `TableName` with the name of the table. For example, to rename the `description` attribute to `info` in the `products` table, you would run:

```bash
rails generate migration RenameDescriptionInProducts info:string
```

In the generated migration file, you'll find the `rename_column` method to rename the specified attribute in the table.

### Running Migrations

After generating the migration files, run the migrations to apply the changes to the database:

```bash
rails db:migrate
```

### Summary

Migrations are a powerful tool for managing the database schema in a Rails application. With migrations, you can easily add, remove, and rename attributes in tables to adapt to changing requirements.

---

    