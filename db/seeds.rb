# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Compatibility.destroy_all

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


Compatibility.create(title: "hogareno", title_spanish: "Hogareño", icon: "fa-solid fa-house")
Compatibility.create(title: "introvertido", title_spanish: "Introvertido", icon: "fa-solid fa-user")
Compatibility.create(title: "puntual", title_spanish: "Puntual", icon: "fa-regular fa-clock")
Compatibility.create(title: "organizado", title_spanish: "Organizado", icon: "fa-solid fa-folder-tree")
Compatibility.create(title: "practico", title_spanish: "Práctico", icon: "fa-solid fa-screwdriver-wrench")
Compatibility.create(title: "curioso", title_spanish: "Curioso", icon: "fa-solid fa-lightbulb")
Compatibility.create(title: "activo", title_spanish: "Activo", icon: "fa-solid fa-bolt")
Compatibility.create(title: "sonador", title_spanish: "Soñador", icon: "fa-solid fa-cloud")
Compatibility.create(title: "realista", title_spanish: "Realista", icon: "fa-solid fa-eye")
Compatibility.create(title: "directo", title_spanish: "Directo", icon: "fa-solid fa-arrow-right")
Compatibility.create(title: "honesto", title_spanish: "Honesto", icon: "fa-solid fa-scale-balanced")
Compatibility.create(title: "reservado", title_spanish: "Reservado", icon: "fa-solid fa-user-lock")
Compatibility.create(title: "detallista", title_spanish: "Detallista", icon: "fa-solid fa-gem")
Compatibility.create(title: "divertido", title_spanish: "Divertido", icon: "fa-solid fa-laugh-beam")
Compatibility.create(title: "ambicioso", title_spanish: "Ambicioso", icon: "fa-solid fa-chart-line")
Compatibility.create(title: "positivo", title_spanish: "Positivo", icon: "fa-solid fa-smile-beam")
