class Student

#attr_reader :name, :email, :contact
#attr_writer :name, :email, :contact


# attr_accessor  simplifie la création de getter et setter pour les variables d'instance d'une classe.
attr_accessor :name, :email, :contact

def initialize(ame, email, contact)
  @name = name
  @email = email
  @contact = contact
end


end

s1= Student.new('MA Mm', 'Ma@gmail.com', '123456')

puts s1.name
puts s1.email
puts s1.contact