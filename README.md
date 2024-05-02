**Readme - Utilisation du FormBuilder Rails**

Le FormBuilder de Rails est un outil essentiel pour la création de formulaires HTML dans les applications Rails. Il simplifie le processus de création de formulaires en fournissant une syntaxe claire et concise, ainsi qu'une gestion automatique de la validation des données.

### Utilisation de FormBuilder dans Rails :

1. **Créer un formulaire :**
   ```ruby
   <%= form_with model: @model_object do |form| %>
     <%= form.label :field_name %>
     <%= form.text_field :field_name %>
     <%= form.submit "Submit" %>
   <% end %>
   ```

2. **Personnaliser les champs :**
   ```ruby
   <%= form.text_field :field_name, class: "form-control", placeholder: "Enter value" %>
   ```

3. **Validation des données :**
   ```ruby
   # Dans le modèle
   validates :field_name, presence: true, length: { minimum: 3 }
   ```

4. **Afficher les erreurs :**
   ```ruby
   <% if @model_object.errors.any? %>
     <div id="error_explanation">
       <h2><%= pluralize(@model_object.errors.count, "error") %> prohibited this object from being saved:</h2>
       <ul>
         <% @model_object.errors.full_messages.each do |message| %>
           <li><%= message %></li>
         <% end %>
       </ul>
     </div>
   <% end %>
   ```

### Avantages du FormBuilder :

- Syntaxe concise et intuitive.
- Gestion automatique de la validation des données.
- Personnalisation facile des champs de formulaire.
- Supporte la plupart des types de champs HTML.

En utilisant le FormBuilder de Rails, vous pouvez créer rapidement des formulaires interactifs et conviviaux pour vos applications web.