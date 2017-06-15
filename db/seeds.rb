# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

blogs = Blog.create([{title: 'CRUD', body:'En informática, CRUD es el acrónimo de "Crear, Leer, Actualizar y Borrar" (del original en inglés: Create, Read, Update and Delete), que se usa para referirse a las funciones básicas en bases de datos o la capa de persistencia en un software.'}, {title: 'Tom Clancy\'s The Division', body:'Tom Clancy\'s The Division is an online-only open world third-person shooter video game developed by Massive Entertainment and published by Ubisoft, with assistance from Red Storm Entertainment, for Microsoft Windows, PlayStation 4 and Xbox One'}])
comments = Comment.create([{body:'is cool', blog: blogs[0] }]) 
