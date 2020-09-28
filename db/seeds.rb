# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cb = Band.find_or_create_by(name: "Charly Bliss")

eva = Member.create(name: "Eva Hendricks", band_id: cb.id)
spen = Member.create(name: "Spencer Fox", band_id: cb.id)
dan = Member.create(name: "Dan Shure", band_id: cb.id)
sam = Member.create(name: "Sam Hendricks", band_id: cb.id)

# guppy = Album.create(name: "Guppy", band_id: cb.id, release_year: 2017)
# young = Album.create(name: "Young Enough", band_id: cb.id, release_year: 2019)

# guppy_songs = ["Percolator", "Westermarck", "Glitter", "Black Hole", "Scare U", "Ruby", "DQ", "Gatorade", "Totalizer", "Julia"]
# young_songs = ["Blown to Bits", "Capacity", "Under You", "Camera", "Fighting in the Dark", "Young Enough", "Bleach", "Chatroom", "Hurt Me", "Hard to Believe", "The Truth"]

# guppy_songs.each {|song|
#     Song.create(name: song, album_id: guppy.id)
# }

# young_songs.each {|song|
#     Song.create(name: song, album_id: young.id)
# }