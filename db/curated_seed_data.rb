NAMES = %w[Valentina Diego Sofía Mateo Camila Andrés Mariana Sebastián Lucía Nicolás Paula Gabriel Carla Tomás Isabela Javier Ana Benjamín Martina David Laura]
LAST_NAMES = %w[González Rodríguez Pérez Fernández López Ramírez Díaz Torres Morales Vargas Herrera Castro Jiménez Romero Méndez Delgado]

OCCUPATIONS = [
  "Desarrollador web", "Estudiante de psicología", "Diseñadora UX", "Chef vegetariano", "Ilustrador freelance", "Asistente contable",
  "Músico independiente", "Profesora de yoga", "Community manager", "Estudiante de medicina", "Periodista", "Productor audiovisual",
  "Diseñadora de interiores", "Técnico en sonido", "Arquitecta", "Redactor creativo"
]

INDUSTRIES = [
  "Tecnología", "Educación", "Salud", "Arte y Cultura", "Gastronomía", "Medios", "Publicidad", "Freelance", "Bienestar"
]

BIOS = [
  "Me gusta el orden, soy desarrolladora web y trabajo remoto. Disfruto de la lectura y la cocina.",
  "Estudio diseño gráfico y soy fan del arte urbano. Busco un espacio relajado y con buena vibra.",
  "Trabajo en una startup de salud mental, soy bastante sociable pero también valoro el silencio.",
  "Soy chef, paso poco tiempo en casa pero me encanta compartir cenas los fines de semana.",
  "Freelancer en producción audiovisual, amante de las plantas y los gatos. No fumo.",
  "Psicóloga en formación. Soy muy respetuosa de los espacios comunes.",
  "Músico y profe de guitarra. Tranquilo, creativo y responsable.",
  "Soy periodista cultural y suelo trabajar desde cafés o en casa. Me encanta conversar.",
  "Redactor creativo en agencia. Ordenado, limpio, a veces un poco obsesivo con la cocina.",
  "Profesora de yoga, busco armonía y equilibrio. Espacios silenciosos son clave para mí.",
  "Ingeniera en sistemas, gamer y fan de los puzzles. Tranquila y responsable.",
  "Estudiante de medicina. Paso la mayoría del día en el hospital. Busco tranquilidad.",
  "Ilustradora, me encantan los espacios con luz y silencio para dibujar.",
  "Diseñador UX remoto. Trabajo mucho desde casa, así que necesito un lugar cómodo.",
  "Profesional del marketing, paso la mitad del mes viajando. Amante del café.",
  "Emprendedora, trabajo desde casa. Me gusta convivir pero también tener mi espacio.",
  "Técnico en sonido, me encanta cocinar y tener un hogar cálido y limpio.",
  "Arquitecta, muy organizada. Me gusta mantener los espacios estéticos.",
  "Estudiante de historia, fan de los libros y los juegos de mesa.",
  "Docente de primaria, tranquila y respetuosa de los horarios y la limpieza."
]

TITLES = [
  "Habitación privada en Santiago centro", "Cuarto luminoso en Bogotá", "Espacio cómodo en Palermo", "Habitación en Lima con buena ubicación",
  "Cuarto tranquilo en Caracas", "Cuarto privado en Roma Norte, CDMX", "Espacio con vista en Providencia", "Cuarto cerca del Parque 93",
  "Habitación artística en San Telmo", "Mini estudio en Miraflores", "Cuarto moderno en Altamira", "Habitación vintage en Condesa"
]

DESCRIPTIONS = [
  "Espacio compartido en departamento moderno. Hay una gata muy tranquila. Ideal para trabajar desde casa.",
  "Zona segura y céntrica, a 10 minutos del metro. Compañeros responsables y ambiente relajado.",
  "Incluye baño privado y acceso a cocina. Vecindario con muchas opciones para comer.",
  "Ambiente tranquilo, ideal para estudiantes. Buscamos alguien limpio y respetuoso.",
  "Espacios comunes amplios, balcón y mucha luz. Se permiten mascotas pequeñas.",
  "Casa artística y relajada. Se valora la convivencia y el respeto mutuo.",
  "Departamento compartido con 2 personas más. Ambientes luminosos y buena ventilación.",
  "El lugar está totalmente amoblado. Hay wifi rápido y espacio de coworking improvisado.",
  "A pasos del metro, supermercado y parque. Perfecto para alguien activo y responsable.",
  "Habitación con escritorio y ventana grande. Ambiente libre de humo.",
  "Comunidad LGBTQ+ friendly, ideal para creativos y profesionales jóvenes.",
  "La habitación incluye armario grande. Se comparte baño con una persona."
]

CITIES = {
  "Santiago de Chile" => ["Providencia", "Ñuñoa", "Santiago Centro", "La Reina"],
  "Bogotá" => ["Chapinero", "La Candelaria", "Teusaquillo", "Cedritos"],
  "Buenos Aires" => ["Palermo", "San Telmo", "Belgrano", "Recoleta"],
  "Lima" => ["Miraflores", "Barranco", "San Borja", "Pueblo Libre"],
  "Caracas" => ["Altamira", "La Castellana", "Chacao", "Los Palos Grandes"],
  "CDMX" => ["Roma Norte", "Condesa", "Coyoacán", "Del Valle"]
}

def generate_address(city, neighborhood)
  "#{neighborhood}, #{city}"
end

def generate_seed_data
  city_list = CITIES.to_a.cycle
  42.times do |i|
    name = NAMES.sample
    last_name = LAST_NAMES.sample
    city, neighborhoods = city_list.next
    neighborhood = neighborhoods.sample

    user = User.create!(
      first_name: name,
      last_name: last_name,
      email: "user#{i + 1}@roommatch.com",
      password: "password",
      birth_date: Date.new(rand(1988..2004), rand(1..12), rand(1..28)),
      gender: ["hombre", "mujer", "otro"].sample,
      occupation: OCCUPATIONS.sample,
      industry: INDUSTRIES.sample,
      bio: BIOS.sample
    )

    Place.create!(
      user: user,
      title: TITLES.sample,
      description: DESCRIPTIONS.sample,
      address: generate_address(city, neighborhood),
      price: rand(180..500),
      available_rooms: [1, 2].sample,
      place_type: ["departamento", "habitación privada", "casa compartida"].sample,
      available_date: Date.today + rand(5..30)
    )
  end
end
