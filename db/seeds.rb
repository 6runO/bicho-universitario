# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Adocao.destroy_all
Bicho.destroy_all
User.destroy_all

user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Cachorro',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/cachorro-02.png'), filename: 'cachorro-02.png')
bicho.user = user
bicho.save

user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Cachorro',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/cachorro-01.jpeg'), filename: 'cachorro-01.jpeg')
bicho.user = user
bicho.save

user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Gato',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/gato-01.jpg'), filename: 'gato-01.jpg')
bicho.user = user
bicho.save

user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Cachorro',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/cachorro-04.jpg'), filename: 'cachorro-04.jpg')
bicho.user = user
bicho.save

user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Gato',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/gato-02.png'), filename: 'gato-02.png')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Gato',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/gato-03.jpeg'), filename: 'gato-03.jpeg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Gato',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/gato-04.jpg'), filename: 'gato-04.jpg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Cachorro',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/cachorro-06.jpg'), filename: 'cachorro-06.jpg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Gato',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/gato-05.jpg'), filename: 'gato-05.jpg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Gato',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/gato-06.jpg'), filename: 'gato-06.jpg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Cachorro',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/cachorro-07.jpg'), filename: 'cachorro-07.jpg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Cachorro',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/cachorro-08.jpg'), filename: 'cachorro-08.jpg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Gato',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/gato-07.jpg'), filename: 'gato-07.jpg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Gato',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/gato-08.jpg'), filename: 'gato-08.jpg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Cachorro',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/cachorro-09.jpg'), filename: 'cachorro-09.jpg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Cachorro',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/cachorro-10.jpg'), filename: 'cachorro-10.jpg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Cachorro',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/cachorro-11.jpeg'), filename: 'cachorro-11.jpeg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Gato',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/gato-09.jpg'), filename: 'gato-09.jpg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Cachorro',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/cachorro-12.jpg'), filename: 'cachorro-12.jpg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Gato',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/gato-10.jpg'), filename: 'gato-10.jpg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Gato',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/gato-11.jpg'), filename: 'gato-11.jpg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Cachorro',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/cachorro-12.jpg'), filename: 'cachorro-12.jpg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Cachorro',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/cachorro-13.jpeg'), filename: 'cachorro-13.jpeg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Gato',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/gato-12.jpg'), filename: 'gato-12.jpg')
bicho.user = user
bicho.save
user = User.new(
  nome: Faker::Name.first_name,
  password: '111111',
  email: Faker::Internet.email,
  ife: ['UFG', 'UFMG', 'UFRJ', 'UFRRJ', 'UFU', 'UFC', 'UFBA'].sample,
  vinculo: ['servidor', 'discente', 'visitante'].sample
)
user.save

bicho = Bicho.new(
  apelido: Faker::Creature::Dog.name,
  sexo: ['Fêmea', 'Macho'].sample,
  cor: ['preto', 'branco', 'amarelo', 'marrom'].sample,
  porte: ['Pequeno', 'Médio', 'Grande'].sample,
  especie: 'Cachorro',
  personalidade: Faker::Hipster.sentence(word_count: 3),
  localizacao: ['Estacionamento', 'RU', 'Reitoria'].sample
)

bicho.photo.attach(io: File.open('app/assets/images/cachorro-15.jpg'), filename: 'cachorro-15.jpg')
bicho.user = user
bicho.save
