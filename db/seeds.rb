# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Music.destroy_all
musics_attributes = [
{
  track:    "Summertime",
  artist:   "Kat Edmonson",
  category: "Soul",
  url:      "https://soundcloud.com/symphony-space/feeling-good-into-summertime")
},
{
  track:    "Everybody Dance (Carlos Vargas Disco Mix)",
  artist:   "Chic",
  category: "Disco",
  url:      "https://soundcloud.com/djcarlosvargas/free-download-chic-everybody-dance-carlos-vargas-disco-mix")
},
{
  track:    "Da",
  artist:   "Knuckle G",
  category: "House",
  url:      "https://soundcloud.com/letournedisque/knuckle-g-da-master")
},
]

musics_attributes.each { |params| Music.create!(params)}
