DetailCompatibility.destroy_all
Compatibility.destroy_all
User.destroy_all
Place.destroy_all
Booking.destroy_all

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

nombres = ["Lucía", "Martín", "Camila", "Juan", "Valentina", "Santiago", "Carla", "Pedro", "Julieta", "Nicolás",
           "Micaela", "Andrés", "Paula", "Diego", "Florencia", "Gabriel", "Daniela", "Alejandro", "Mariana", "Felipe",
           "Isabel", "Ricardo", "Adriana", "Javier", "Verónica", "Roberto", "Patricia", "Luis", "Ana", "Carlos"]

apellidos = ["Pérez", "Rodríguez", "López", "González", "Martínez", "Sánchez", "Ramírez", "Gómez", "Fernández", "Torres",
             "Silva", "Vargas", "Castro", "Romero", "Suárez", "Alvarez", "Ruiz", "Hernández", "Díaz", "Moreno"]

bios = [
  "Me encanta mantener el espacio ordenado y compartir charlas con mis compañeros de casa.",
  "Soy tranquilo y busco convivir en armonía. Valoro el respeto y la limpieza.",
  "Trabajo remoto y paso bastante tiempo en casa. Me gusta el ambiente relajado.",
  "Estudio diseño gráfico y me gusta la creatividad en todos los espacios.",
  "Soy extrovertida, me encanta cocinar y ver películas en grupo.",
  "Amo las plantas, los espacios limpios y el silencio.",
  "Disfruto compartir con roomies y mantener buena comunicación.",
  "Busco tranquilidad y un ambiente positivo para estudiar.",
  "Soy fan del orden y de las rutinas. Me gusta madrugar y aprovechar el día.",
  "Me encanta conocer gente nueva, pero también valoro mi espacio.",
  "Soy flexible y abierto, pero me gusta mantener los espacios limpios.",
  "Me gusta la música y cocinar, y siempre estoy dispuesto a ayudar.",
  "Trabajo todo el día, así que necesito un lugar tranquilo para descansar.",
  "Estudio ingeniería y valoro mucho la organización.",
  "Soy sociable pero respetuoso del espacio ajeno.",
  "Artista visual que trabaja desde casa. Busco un espacio inspirador.",
  "Estudiante de medicina que necesita un lugar tranquilo para estudiar.",
  "Programador que valora el silencio durante las horas de trabajo.",
  "Viajera frecuente que busca un lugar acogedor para cuando estoy en la ciudad.",
  "Chef que disfruta cocinar para sus compañeros de casa.",
  "Escritora que necesita un espacio silencioso y bien iluminado.",
  "Profesor universitario que busca un ambiente intelectual.",
  "Bailarina que practica en casa pero es muy respetuosa con los espacios compartidos.",
  "Ingeniero ambiental que valora la sustentabilidad en el hogar.",
  "Psicóloga que trabaja desde casa y necesita un espacio tranquilo para sesiones.",
  "Músico que practica con audífonos y es muy respetuoso del silencio.",
  "Estudiante de arquitectura que pasa mucho tiempo haciendo maquetas en casa.",
  "Deportista que madruga pero es muy ordenado con sus cosas.",
  "Fotógrafa que necesita un espacio con buena luz natural.",
  "Emprendedor digital que viaja frecuentemente pero valora un buen espacio cuando está en casa."
]

ciudades = ["Santiago de Chile", "Bogotá", "Ciudad de México", "Lima", "Buenos Aires", "Caracas"]

titulos = [
  "Habitación cómoda y luminosa",
  "Espacio tranquilo y céntrico",
  "Cuarto ideal para estudiantes",
  "Ambiente moderno y limpio",
  "Pieza amplia en zona segura",
  "Habitación con buena energía",
  "Espacio compartido con buena onda",
  "Cuarto privado en departamento familiar",
  "Habitación con escritorio para trabajar",
  "Pieza acogedora cerca de transporte público",
  "Espacio minimalista y funcional",
  "Habitación con balcón y luz natural",
  "Cuarto en piso compartido con jardín",
  "Pieza económica en zona universitaria",
  "Habitación con closet amplio y baño compartido"
]

descripciones = [
  "Encantador departamento en piso alto con vista despejada. Cuenta con amplia habitación privada, closet empotrado y escritorio ergonómico. El edificio ofrece excelentes áreas comunes: piscina climatizada, gimnasio totalmente equipado, salón de eventos con parrilla y coworking. Ubicación privilegiada a 3 minutos caminando del metro y frente a un supermercado 24/7. Ideal para profesionales que buscan comodidad y servicios premium.",

  "Acogedora habitación amoblada en departamento compartido con estudiantes universitarios. Incluye cama queen, escritorio amplio y estanterías. Compartes cocina totalmente equipada (horno, microondas, airfryer) y sala de estar con smart TV. El ambiente es relajado y colaborativo - perfecto para intercambiar conocimientos. A 15 minutos en bici del distrito universitario y cerca de cafeterías con wifi gratis.",

  "Moderno loft convertido en espacio de trabajo/vivienda. Amplios ventanales brindan excelente luz natural todo el día. Cuenta con escritorio ergonómico, silla ejecutiva y conexión de fibra óptica 300MB. Zona ultra segura con vigilancia 24/7, cerca de parques y ciclo vías. Incluye servicio semanal de limpieza y acceso a lavandería automatizada en el edificio. Perfecto para nómadas digitales y profesionales remotos.",

  "Piso compartido en exclusiva zona residencial. Habitación privada con baño propio (raro en la zona). Cocina gourmet compartida con isla central y electrodomésticos de alta gama. El vecindario es tranquilo, arbolado y con todos los servicios: farmacia 24h, gimnasio y restaurantes a 50m. Excelente conexión de transporte: 2 líneas de metro y 5 rutas de bus a menos de 3 minutos.",

  "Habitación estilo boutique en casa pet-friendly. Diseño minimalista con detalles artesanales. Compartes baño estilo spa (solo con 1 persona) y cocina industrial con horno pizza. Patio interior con huerto urbano y zona lounge. Aceptamos mascotas pequeñas (tenemos 2 gatos amigables). Ubicado en barrio bohemio lleno de galerías, cafés de especialidad y tiendas vintage. A 10 min del centro financiero.",

  "Departamento compartido con profesionales jóvenes. Buscamos roomie que valore tanto la convivencia (noches de películas/juegos de mesa) como el respeto al espacio personal. Tu habitación tiene cerradura inteligente, cama ortopédica y sistema de climatización individual. Servicios incluidos: limpieza semanal, wifi empresarial y suscripción a Netflix/Spotify. Zona con excelente vida nocturna y delivery options.",

  "Torre inteligente con amenities de lujo. Habitación con sistema domótico (iluminación, cortinas y temperatura controlables por app). Piso completo para 3 personas con limpieza robótica diaria. Edificio con piscina infinity, coworking con impresora 3D y cine privado. A 1 cuadra de centro comercial con cine y 3 min del metro. Incluye acceso a clubes de networking para residentes.",

  "Casa-estudio para artistas/creativos. Espacio inspirador con paredes de ladrillo visto y luz norte perfecta para fotografías. Cuenta con taller compartido (equipo básico de serigrafía y carpintería) y jardín vertical. Barrio de artistas con galerías, talleres abiertos y cafés literarios. Ideal para estudiantes de arquitectura/diseño. Se valoran proyectos colaborativos.",

  "Habitación ejecutiva con office integrado. Diseñada para teletrabajo: escritorio de 2m, silla ergonómica Herman Miller, anillo de luz para videollamadas y pared acústica. Cocina compartida con chef (opcional servicio de meal prep). Edificio con gimnasio, lavandería express y recepción 24/7. A 5 min caminando de zona financiera y centros de convenciones.",

  "Piso compartido con profesionales internacionales. Habitación con estilo nórdico (muebles modulares de diseño). Cocina totalmente equipada incluye robot de cocina y máquina profesional de café. Sala con proyector 4K y biblioteca multilingüe. Organizamos cenas temáticas mensuales. Ubicado en zona diplomática, segura y con excelente transporte a aeropuerto.",

  "Loft industrial con toques vintage. Espacio abierto con separación visual para privacidad. Techos altos de 4m, ventanales del piso al techo y muebles de diseño reciclado. Barrio emergente lleno de cafeterías hipster, mercados orgánicos y talleres creativos. Perfecto para quienes buscan inspiración y comunidad artística. Incluye bicicleta para uso compartido.",

  "Habitación con balcón privado y vista al jardín comunitario. Baño compartido estilo japonés (solo con 1 persona). Cocina con horno de piedra y despensa orgánica compartida. La propiedad tiene huerto urbano (puedes cosechar tus hierbas). Comunidad de residentes organiza talleres de sustentabilidad mensuales. A 15 min del centro en transporte ecológico (tranvía/bicis públicas).",

  "Casa colonial renovada con encanto vintage. Habitación amplia con pisos de madera original y ventilación cruzada. Compartes jardín con piscina natural, hamacas y zona de parrilla. Barrio histórico lleno de arquitectura patrimonial. Ideal para quienes aprecian el diseño tradicional con comodidades modernas. Aceptamos mascotas (tenemos espacio para correr).",

  "Residencia estudiantil premium. Habitación funcional con cama loft (escritorio integrado abajo) y mucho almacenaje vertical. Compartes cocina industrial (3 refrigeradores) y sala de estudio silenciosa con cabinas individuales. Lavandería automatizada en cada piso. A 5-10 min caminando de 3 universidades principales. Servicio de limpieza diario en áreas comunes incluido.",

  "Cuarto en departamento con baño privado. Solución perfecta para quienes valoran privacidad. Cocina americana equipada (inducción, airfryer, microondas combo). Edificio con lavandería comunitaria, bicicletero techado y recepción de paquetes. Zona céntrica pero tranquila, cerca de parques urbanos y ciclo vías. Incluye membresía a gimnasio cercano."
]

compatibility_groups = {
  "tranquilos": ["silencio", "orden", "limpieza", "hogareno", "introvertido", "reservado"],
  "sociables": ["musica", "fiestas", "compartir", "visitas", "divertido", "positivo"],
  "organizados": ["orden", "limpieza", "puntual", "organizado", "detallista", "practico"],
  "creativos": ["musica", "series", "tecnologia", "sonador", "curioso", "divertido"],
  "activos": ["deporte", "madrugar", "activo", "ambicioso", "directo", "positivo"]
}

30.times do |i|
  if rand < 0.7
    group_name, group_compatibilities = compatibility_groups.to_a.sample
    compatibilities_to_add = group_compatibilities

    extra_compatibilities = Compatibility.where.not(title: compatibilities_to_add).sample(rand(1..3))
    compatibilities_to_add += extra_compatibilities.map(&:title)
  else
    compatibilities_to_add = Compatibility.all.sample(rand(8..12)).map(&:title)
  end

  user = User.create!(
    email: "usuario#{i + 1}@mail.com",
    password: "123456",
    first_name: nombres[i],
    last_name: apellidos.sample,
    birth_date: rand(20..35).years.ago,
    gender: %w[hombre mujer otro].sample,
    bio: bios[i],
    occupation: ["Estudiante", "Profesional", "Artista", "Emprendedor", "Freelancer"].sample,
    industry: ["Tecnología", "Arte", "Salud", "Educación", "Negocios"].sample
  )

  Compatibility.where(title: compatibilities_to_add).each do |compat|
    DetailCompatibility.create!(user: user, compatibility: compat)
  end

  Place.create!(
    user: user,
    address: "Calle #{rand(100..999)}, #{ciudades.sample}",
    available_rooms: rand(1..3),
    price: rand(150.0..600.0).round(2),
    title: titulos.sample,
    description: descripciones.sample,
    place_type: ["Departamento", "Casa", "Loft"].sample,
    available_date: Date.today + rand(5..30)
  )
end
