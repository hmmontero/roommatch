require "open-uri"

Booking.destroy_all
Place.destroy_all
DetailCompatibility.destroy_all
User.destroy_all
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

FEMALE_NAMES = %w[Valentina Sofía Camila Mariana Lucía Paula Carla Isabela Ana Martina Laura]
MALE_NAMES   = %w[Diego Mateo Andrés Sebastián Nicolás Gabriel Tomás Javier Benjamín David]
LAST_NAMES   = %w[González Rodríguez Pérez Fernández López Ramírez Díaz Torres Morales Vargas Herrera Castro Jiménez Romero Méndez Delgado]

OCCUPATIONS = [
  "Desarrollador web", "Estudiante de psicología", "Diseñadora UX", "Chef vegetariano", "Ilustrador freelance", "Asistente contable",
  "Músico independiente", "Profesora de yoga", "Community manager", "Estudiante de medicina", "Periodista", "Productor audiovisual",
  "Diseñadora de interiores", "Técnico en sonido", "Arquitecta", "Redactor creativo"
]

INDUSTRIES = [
  "Tecnología", "Educación", "Salud", "Arte y Cultura", "Gastronomía", "Medios", "Publicidad", "Freelance", "Bienestar"
]

BIOS = [
  "Soy desarrolladora web y trabajo remoto, lo que significa que paso bastante tiempo en casa. Me encanta mantener el orden y la limpieza, ya que me ayuda a concentrarme. Disfruto mucho de la lectura, especialmente novelas de ciencia ficción, y la cocina es mi forma favorita de relajarme al final del día. Valoro la comunicación clara y me gusta compartir espacios donde cada quien respete el ambiente común pero también haya espacio para compartir una charla de vez en cuando.",
  "Estudio diseño gráfico y tengo una gran pasión por el arte urbano, los colores vibrantes y las formas libres. Soy relajada, creativa y con buena onda, me gusta poner música mientras trabajo y soy muy sociable, pero también sé respetar los momentos de silencio. Me interesa convivir con personas abiertas y tolerantes, que valoren la diversidad y el respeto mutuo.",
  "Trabajo en una startup de salud mental como parte del equipo de bienestar. Soy una persona muy sociable, me encanta conversar y compartir ideas, pero también necesito momentos de silencio para recargar energías. Me considero empática, organizada y muy respetuosa de los espacios comunes. Me gusta tener un ambiente armónico en casa, idealmente con personas que también valoren el equilibrio.",
  "Soy chef profesional y paso muchas horas fuera de casa, especialmente durante el día. Aun así, me encanta compartir cenas caseras los fines de semana con quienes convivo. Soy sociable, alegre, y me gusta generar un ambiente cálido en el hogar. Me adapto con facilidad y soy muy respetuoso con los tiempos y espacios de los demás.",
  "Trabajo como freelancer en producción audiovisual y tengo horarios flexibles. Me encanta rodearme de plantas, cuidar de ellas me relaja, y soy un amante de los gatos. No fumo y prefiero un ambiente tranquilo pero con buena energía. Me gusta compartir conversaciones espontáneas, pero también disfruto del silencio. Soy responsable y limpio, y valoro mucho la estética del espacio donde vivo.",
  "Estudio psicología y estoy en pleno proceso de formación profesional, lo que me ha enseñado a ser muy empática y abierta. Me considero tranquila, reflexiva y muy respetuosa de los espacios comunes. Me gusta mantener un ambiente sereno en casa, ideal para el estudio y la introspección. Disfruto de las conversaciones profundas, pero también sé cuándo es momento de dar espacio.",
  "Soy músico y doy clases de guitarra, tanto presenciales como virtuales. Me considero una persona creativa, tranquila y muy responsable. Me gusta mantener mis cosas ordenadas y respetar los ritmos de quienes viven conmigo. Escucho mucha música, claro, pero siempre con auriculares si es necesario. Me llevo bien con personas sinceras y abiertas al diálogo.",
  "Trabajo como periodista cultural y suelo moverme entre cafés y mi escritorio en casa. Me apasiona escribir, leer y descubrir nuevas formas de expresión artística. Me gusta conversar y compartir ideas, pero también respeto mucho el espacio personal. Me considero sociable, curiosa y muy limpia. Idealmente, busco convivir con personas que disfruten del arte, la cultura y la buena convivencia.",
  "Soy redactor creativo en una agencia de publicidad. Paso bastante tiempo en casa y soy muy ordenado con mis cosas. A veces, incluso un poco obsesivo con la cocina y los olores (me gusta que todo esté limpio y fresco). Me considero amable, comunicativo y respetuoso. Me gusta vivir con personas que también valoren el orden y la buena energía en el hogar.",
  "Soy profesora de yoga y busco un espacio donde pueda mantener una rutina equilibrada. Me gusta la armonía, el silencio y la conexión con los espacios. Me considero muy tranquila, respetuosa y empática. Me gusta tener mi rincón para meditar y practicar, pero también disfruto de compartir una buena charla con quienes convivo. Lo más importante para mí es el respeto mutuo.",
  "Soy ingeniera en sistemas, gamer de corazón y fanática de los puzzles. Me encanta pasar tiempo en casa, especialmente después de una jornada laboral intensa. Soy bastante introvertida pero muy amable. Me gusta que el espacio sea tranquilo, ordenado y funcional. Valoro la limpieza, el respeto por los horarios y la buena comunicación para resolver cualquier tema de convivencia.",
  "Estudio medicina y paso la mayoría del día en el hospital, por lo que valoro muchísimo que mi hogar sea un lugar tranquilo donde pueda descansar y estudiar. Soy muy comprometida, responsable y silenciosa. Me adapto con facilidad y soy muy respetuosa con los espacios comunes. Me llevo bien con personas organizadas y empáticas.",
  "Soy ilustradora freelance y trabajo desde casa la mayor parte del tiempo. Me encantan los espacios con luz natural y silencio, ideales para inspirarme y concentrarme en mis proyectos. Soy creativa, sensible y bastante introvertida. Disfruto de una convivencia tranquila, con personas que valoren tanto el orden como la estética del lugar.",
  "Soy diseñador UX y trabajo en remoto desde hace algunos años. Paso muchas horas frente a la computadora, por lo que valoro tener un ambiente cómodo, funcional y tranquilo. Me considero amable, responsable y bastante meticuloso con el orden. Me gusta conversar de tecnología, diseño y cultura pop, pero también sé cuándo es momento de respetar el silencio.",
  "Trabajo en marketing digital y viajo bastante por trabajo, así que a veces no estoy en casa por varios días. Cuando estoy, me gusta disfrutar de un buen café, poner música suave y tener charlas interesantes. Me considero sociable, positivo y organizado. Me gusta mantener un ambiente relajado pero funcional.",
  "Soy emprendedora y llevo adelante un pequeño negocio desde casa. Me gusta tener un equilibrio entre la convivencia y los momentos a solas. Soy amigable, empática y muy ordenada. Disfruto de los espacios bien cuidados y de compartir una comida o una charla con quienes viven conmigo. Para mí, el respeto por los tiempos y la comunicación abierta son clave.",
  "Trabajo como técnico en sonido y soy un apasionado de la cocina. Me gusta crear un hogar cálido, limpio y funcional. Disfruto de poner música (siempre con cuidado del volumen), preparar cenas y compartir momentos tranquilos. Soy muy responsable, respetuoso y siempre atento a las necesidades del otro.",
  "Soy arquitecta y tengo una gran obsesión por el orden y la estética. Me gusta que los espacios se vean bien y se sientan cómodos. Me considero tranquila, organizada y muy respetuosa de la convivencia. Me gusta vivir en ambientes donde se valoren los pequeños detalles y haya comunicación honesta.",
  "Estudio historia y me encantan los libros, los juegos de mesa y las buenas conversaciones. Soy bastante introvertido, pero muy amigable una vez que entro en confianza. Me gusta el orden, la tranquilidad y compartir alguna partida de cartas o una película en las noches frías. Me adapto fácilmente y soy muy considerado con el espacio común.",
  "Soy docente de primaria, lo que me hace ser muy paciente, respetuosa y metódica. Me gusta que el hogar sea un espacio de paz y armonía. Valoro la limpieza, los horarios estables y la buena comunicación. Soy muy tranquila, pero también disfruto de compartir una charla al final del día con una taza de té."
]

TITLES = [
  "Habitación privada en Santiago centro", "Cuarto luminoso en Bogotá", "Espacio cómodo en Palermo", "Habitación en Lima con buena ubicación",
  "Cuarto tranquilo en Caracas", "Cuarto privado en Roma Norte, CDMX", "Espacio con vista en Providencia", "Cuarto cerca del Parque 93",
  "Habitación artística en San Telmo", "Mini estudio en Miraflores", "Cuarto moderno en Altamira", "Habitación vintage en Condesa"
]

DESCRIPTIONS = [
  "Departamento moderno y luminoso ubicado en el tercer piso de un edificio con ascensor, en una calle tranquila del barrio Ñuñoa. El espacio es compartido con una gata muy tranquila y cariñosa. La habitación disponible tiene buena luz natural, escritorio y clóset empotrado. Ideal para alguien que trabaje desde casa, ya que hay wifi de alta velocidad, una mesa amplia en el living y mucho silencio durante el día. A pocas cuadras hay supermercados, librerías, cafés y parques.",
  "Departamento ubicado en una zona céntrica y segura, a solo 10 minutos caminando de la estación de metro. Es un edificio moderno con conserjería 24/7 y áreas comunes bien cuidadas. Se comparte con compañeros responsables y tranquilos. El ambiente es relajado, ideal para alguien que valore la armonía y la limpieza. Hay varios restaurantes, bancos, farmacias y centros culturales en los alrededores, además de un parque cercano para hacer ejercicio o relajarse.",
  "Habitación amplia con baño privado en un departamento de tres habitaciones, ubicado en un tranquilo pasaje residencial en Providencia. Cocina completamente equipada, lavadora y pequeño balcón con vista interior. El vecindario tiene muchas opciones para comer, incluyendo mercados locales, panaderías artesanales y food trucks. También está cerca de clínicas, ciclovías y transporte público. El espacio es cómodo y bien distribuido, ideal para alguien independiente que valore su privacidad.",
  "Casa grande de dos pisos con jardín y árboles frutales, ubicada en un sector residencial muy tranquilo. El ambiente dentro de la casa es relajado y silencioso, ideal para estudiantes o personas que necesiten concentración. Se busca alguien limpio, respetuoso y que aprecie un estilo de vida tranquilo. La habitación tiene escritorio, buena ventilación y vista al patio. A unas cuadras hay una biblioteca, un centro cultural y varias líneas de buses que conectan con el centro.",
  "Departamento amplio y moderno en el piso 5 con ascensor, balcón soleado y cocina integrada. Los espacios comunes son luminosos y ventilados, perfectos para compartir comidas o trabajar un rato fuera de la habitación. Se permiten mascotas pequeñas con previa coordinación. El edificio está ubicado en un barrio con muchos árboles, cercano a parques y ciclovías. También hay cafés, farmacias y un centro comercial a 5 minutos caminando.",
  "Casa antigua restaurada con detalles únicos y un estilo artístico. Los muros tienen murales pintados por sus propios habitantes. Hay muchas plantas, espacios comunes amplios, y una vibra relajada y creativa. Se valora la buena convivencia, la colaboración y el respeto por los tiempos de cada quien. Está ubicada cerca de una estación de metro y rodeada de centros culturales, ferias barriales y un parque perfecto para salir a leer o caminar.",
  "Departamento compartido con dos personas más, ubicado en el segundo piso de un edificio sin ascensor en un barrio residencial tranquilo. Todas las habitaciones reciben luz natural durante el día y la ventilación cruzada permite mantener el ambiente fresco. A una cuadra hay un parque arbolado, perfecto para caminar o salir a correr. También hay minimarkets, panaderías y un gimnasio muy accesible. Ideal para quienes buscan equilibrio entre vida urbana y tranquilidad.",
  "El departamento está totalmente amoblado y listo para habitar. Cuenta con cocina equipada, lavadora, espacio para colgar ropa y un improvisado coworking en el living, con escritorio grande, buena iluminación y wifi rápido. Está ubicado en una zona con excelente conectividad, con metro, buses y ciclovías a pocos pasos. También hay cafeterías con enchufes y ambientes tranquilos para estudiar o trabajar fuera de casa.",
  "Departamento en piso alto, con excelente vista y mucha luz. Está ubicado a pasos del metro, supermercado, parque y centro de salud, por lo que es ideal para alguien activo y responsable. La habitación es cómoda, tiene cama de plaza y media, escritorio y repisa. El ambiente es ordenado y se valoran los espacios bien cuidados. Hay un parque a dos cuadras ideal para trotar o hacer yoga por las mañanas.",
  "Habitación privada con escritorio y una ventana grande que da a un patio interior lleno de plantas. Se comparte un departamento amplio con cocina equipada, lavadora y un living muy cómodo. Ambiente libre de humo, ideal para personas tranquilas. El edificio tiene seguridad 24/7 y se encuentra en un barrio muy bien conectado con metro, buses y zonas verdes para pasear o hacer deporte.",
  "Espacio en casa compartida muy inclusiva y abierta, LGBTQ+ friendly, donde viven personas creativas y de distintas áreas. Hay un taller de arte, una pequeña biblioteca común y un patio lleno de plantas. La cocina es amplia y se hacen cenas compartidas cada tanto. Está ubicada en un barrio bohemio, lleno de galerías, cafés, bares culturales y transporte cercano. Perfecta para gente joven con onda que busca algo más que solo un techo.",
  "Habitación cómoda con armario grande empotrado, en un departamento compartido con una sola persona más. Baño compartido y cocina equipada. Se encuentra en un edificio tranquilo, con ascensor y lavandería. El barrio es seguro y cuenta con muchas áreas verdes, ciclovías y acceso fácil a supermercados y estaciones de metro. Ideal para alguien que busque un espacio silencioso pero bien conectado."
]

CITIES = {
  "Santiago de Chile" => ["Providencia", "Ñuñoa", "Santiago Centro", "La Reina"],
  "Bogotá" => ["Chapinero", "La Candelaria", "Teusaquillo", "Cedritos"],
  "Buenos Aires" => ["Palermo", "San Telmo", "Belgrano", "Recoleta"],
  "Lima" => ["Miraflores", "Barranco", "San Borja", "Pueblo Libre"],
  "Caracas" => ["Altamira", "La Castellana", "Chacao", "Los Palos Grandes"],
  "CDMX" => ["Roma Norte", "Condesa", "Coyoacán", "Del Valle"]
}

property_images = [
  "https://images.unsplash.com/photo-1564013799919-ab600027ffc6?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1580587771525-78b9dba3b914?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1605276374104-dee2a0ed3cd6?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1605146769289-440113cc3d00?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607688969-a5bfcd646154?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566752227-513c65e57d03?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566752355-35792bedcfea?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1493809842364-78817add7ffb?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1484154218962-a197022b5858?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1505873242700-f289a29e1e0f?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1513694203232-719a280e022f?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1493809842364-78817add7ffb?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1554995207-c18c203602cb?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1584622650111-993a426fbf0a?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1513519245088-0e12902e5a38?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1554995207-c18c203602cb?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1560448204-603b3fc33ddc?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1527689368864-3a821dbccc34?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1556020685-ae41abfc9365?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1556911220-bff31c812dba?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1583847268964-b28dc8f51f92?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1484154218962-a197022b5858?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1513519245088-0e12902e5a38?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1556911220-bff31c812dba?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1583847268964-b28dc8f51f92?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1556020685-ae41abfc9365?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1527689368864-3a821dbccc34?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1560448204-603b3fc33ddc?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1554995207-c18c203602cb?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
]

bathroom_images = [
  "https://images.unsplash.com/photo-1600566752355-35792bedcfea?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600584812238-1a5d1fce2a5b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600121848594-d8644e57abab?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566752227-513c65e57d03?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607688969-a5bfcd646154?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607687939-e1a6b5b1d3a0?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566753190-17f0baa2a6c3?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566752355-35792bedcfea?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566752227-513c65e57d03?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607688969-a5bfcd646154?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607687939-e1a6b5b1d3a0?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566753190-17f0baa2a6c3?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566752355-35792bedcfea?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600584812238-1a5d1fce2a5b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600121848594-d8644e57abab?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566752227-513c65e57d03?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607688969-a5bfcd646154?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607687939-e1a6b5b1d3a0?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566753190-17f0baa2a6c3?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566752355-35792bedcfea?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600584812238-1a5d1fce2a5b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600121848594-d8644e57abab?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566752227-513c65e57d03?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607688969-a5bfcd646154?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607687939-e1a6b5b1d3a0?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566753190-17f0baa2a6c3?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566752355-35792bedcfea?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600584812238-1a5d1fce2a5b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600121848594-d8644e57abab?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566752227-513c65e57d03?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607688969-a5bfcd646154?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607687939-e1a6b5b1d3a0?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566753190-17f0baa2a6c3?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600566752355-35792bedcfea?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
]

kitchenPhotos = [
  "https://images.unsplash.com/photo-1556911220-bff31c812dba?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600585152220-90363fe7e115?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600121848594-d8644e57abab?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1583845112202-171d71b7e55e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600566752228-1d686df99f5a?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600566752355-35792bedcfea?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600210492493-0946911123ea?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600210491892-03d54c0aaf87?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1595526114035-0d45a16aeb77?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600607688969-a5bfcd646154?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600566753190-17f0baa2a6c3?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600565193835-383dd97b1e5c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600566752355-35792bedcfea?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1592229505726-cf121663d0d1?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600121848594-d8644e57abab?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600566752228-1d686df99f5a?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600210492493-0946911123ea?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600607688969-a5bfcd646154?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600566753190-17f0baa2a6c3?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600565193835-383dd97b1e5c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600566752355-35792bedcfea?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1592229505726-cf121663d0d1?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600121848594-d8644e57abab?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600566752228-1d686df99f5a?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1600210492493-0946911123ea?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"
]

profilePhotos = [
  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1507101105822-7472b28e22ac?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1531123896407-a63b6d3a2453?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1542206395-9feb3edaa68d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1551836022-d5d88e9218df?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1567532939604-b6b5b0db2604?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1583864697784-a0efc8379f70?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1583864697784-a0efc8379f70?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1583864697784-a0efc8379f70?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1583864697784-a0efc8379f70?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1522556189639-b150ed9c4330?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1531123896407-a63b6d3a2453?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1513956589380-bad6acb9b9d4?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1542345812-d98b5cd6cf98?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1549060279-7e168fcee0c2?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1552058544-f2b08422138a?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1590086783191-a0694c7d1e6e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1595956553066-fe24a8c33395?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1601455763557-db1bea8a9a5a?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"
]

PLACE_TYPES = ["Casa", "Departamento", "Habitación", "Loft"]

def generate_address(city, neighborhood)
  "#{neighborhood}, #{city}"
end

def attach_photos_to_place(place, photo_urls)
  photo_urls.each_with_index do |url, index|
    puts "Intentando abrir: #{url}"
    begin
      file = URI.open(url)
      place.photos.attach(io: file, filename: "place#{index + 1}.jpg", content_type: 'image/jpg')
    rescue OpenURI::HTTPError => e
      puts "Error al abrir #{url}: #{e.message}"
    end
  end
end

42.times do |i|
  gender = ["Masculino", "Femenino"].sample
  birth_date = Date.new(rand(1..28), rand(1..12), rand(1960..2005))

  first_name = gender == "Femenino" ? FEMALE_NAMES.sample : MALE_NAMES.sample
  last_name = LAST_NAMES.sample
  email = "usuario#{i + 1}@gmail.com"
  password = "123456"
  occupation = OCCUPATIONS.sample
  industry = INDUSTRIES.sample
  bio = BIOS.sample

  user = User.create!(
    email: email,
    password: password,
    first_name: first_name,
    last_name: last_name,
    occupation: occupation,
    industry: industry,
    bio: bio,
    gender: gender,
    birth_date: birth_date
  )

  profile_photo_url = if gender == "Femenino"
                        profilePhotos[0..20].sample
                      else
                        profilePhotos[21..-1].sample
                      end

  begin
    file = URI.open(profile_photo_url)
    user.photo.attach(io: file, filename: "profile#{i + 1}.jpg", content_type: 'image/jpg')
  rescue OpenURI::HTTPError => e
    puts "Error al abrir #{profile_photo_url}: #{e.message}"
  end

  Compatibility.all.sample(10).each do |compatibility|
    DetailCompatibility.create!(user: user, compatibility: compatibility)
  end

  city = CITIES.keys.sample
  neighborhood = CITIES[city].sample
  title = TITLES.sample
  description = DESCRIPTIONS.sample
  address = generate_address(city, neighborhood)
  price = rand(120_000..250_000)
  latitude = rand(-33.6..6.2).round(6)
  longitude = rand(-70.7..-58.3).round(6)

  place = Place.create!(
    user: user,
    title: title,
    description: description,
    address: address,
    price: price,
    latitude: latitude,
    longitude: longitude,
    place_type: PLACE_TYPES.sample,
    available_rooms: rand(1..4),
    available_date: Date.today + rand(0..30).days
  )

  attach_photos_to_place(place, [property_images.sample, bathroom_images.sample, kitchenPhotos.sample])
end

puts "✅ Seed completado: 42 usuarios, 42 lugares, compatibilidades y fotos añadidas"
