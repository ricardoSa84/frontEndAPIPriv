# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##############################
######   rails db:seed #######
##############################

School.delete_all
Course.delete_all
User.delete_all
Role.delete_all
Degree.delete_all
Room.delete_all

puts "Apagou com sucesso"

#@s = School.create(name:'IPT', country:'teste', distric:'teste',  city:'teste', county:'teste', postCode:'teste', addressDetails:'teste')
#@s.courses.create(name:'teste1')
#@r = Role.create(name: 'Admin')
#@r.users.create(name: 'teste', email: 'teste', password:'teste')

@s1 = School.create(name:'Escola Superior de Tecnologia de Tomar',country:'Portugal',distric:'Santarém',city:'Tomar',county:'Tomar',postCode:'2300',addressDetails:'')
@s2 = School.create(name:'Escola Superior de Gestão de Tomar',country:'Portugal',distric:'Santarém',city:'Tomar',county:'Tomar',postCode:'2300',addressDetails:'')
@s3 = School.create(name:'Escola Superior de Tecnologia de Abrantes',country:'Portugal',distric:'Santarém',city:'Tomar',county:'Tomar',postCode:'2300',addressDetails:'')

##ainda não está a funcionar para baixo

@s1.rooms.create(description:'A100',projector:'True',seats:'18')


puts "Carregado com sucesso"