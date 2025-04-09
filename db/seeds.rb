# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Compatibility.create(title: "mascotas", title_spanish: "Mascotas", icon: "fa-solid fa-dog")
Compatibility.create(title: "silencio", title_spanish: "Silencio", icon: "fa-solid fa-volume-mute")
Compatibility.create(title: "musica", title_spanish: "Música", icon: "fa-solid fa-music")
Compatibility.create(title: "orden", title_spanish: "Orden", icon: "fa-solid fa-list-check")
Compatibility.create(title: "fiestas", title_spanish: "Fiestas", icon: "fa-solid fa-champagne-glasses")
Compatibility.create(title: "cocinar", title_spanish: "Cocinar", icon: "fa-solid fa-utensils")
Compatibility.create(title: "limpieza", title_spanish: "Limpieza", icon: "fa-solid fa-broom")
Compatibility.create(title: "madrugar", title_spanish: "Madrugar", icon: "fa-solid fa-sun")
Compatibility.create(title: "compartir", title_spanish: "Compartir", icon: "fa-solid fa-handshake")
Compatibility.create(title: "fumar", title_spanish: "Fumar", icon: "fa-solid fa-smoking")
Compatibility.create(title: "series", title_spanish: "Series", icon: "fa-solid fa-tv")
Compatibility.create(title: "deporte", title_spanish: "Deporte", icon: "fa-solid fa-dumbbell")
Compatibility.create(title: "minimalismo", title_spanish: "Minimalismo", icon: "fa-solid fa-wind")
Compatibility.create(title: "naturaleza", title_spanish: "Naturaleza", icon: "fa-solid fa-leaf")
Compatibility.create(title: "tecnologia", title_spanish: "Tecnología", icon: "fa-solid fa-laptop")
Compatibility.create(title: "cafe", title_spanish: "Café", icon: "fa-solid fa-mug-hot")
Compatibility.create(title: "trabajoremoto", title_spanish: "Trabajo Remoto", icon: "fa-solid fa-house-laptop")
Compatibility.create(title: "espiritualidad", title_spanish: "Espiritualidad", icon: "fa-solid fa-peace")
Compatibility.create(title: "viajes", title_spanish: "Viajes", icon: "fa-solid fa-plane")
Compatibility.create(title: "visitas", title_spanish: "Visitas", icon: "fa-solid fa-user-friends")
