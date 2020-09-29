# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Song.destroy_all
Band.destroy_all
Album.destroy_all
Member.destroy_all

cb = Band.find_or_create_by(name: "Charly Bliss")

eva = Member.find_or_create_by(name: "Eva Hendricks", band_id: cb.id, image_file: 'EvaHendricks.jpg')
spen = Member.find_or_create_by(name: "Spencer Fox", band_id: cb.id, image_file: 'SpencerFox.jpg')
dan = Member.find_or_create_by(name: "Dan Shure", band_id: cb.id, image_file: 'DanShure.jpg')
sam = Member.find_or_create_by(name: "Sam Hendricks", band_id: cb.id, image_file: 'SamHendricks.jpg')

guppy = Album.create(name: "Guppy", band_id: cb.id, release_year: 2017, image_file: 'Guppy.jpg')
young = Album.create(name: "Young Enough", band_id: cb.id, release_year: 2019, image_file: 'YoungEnough.jpg')

guppy_songs = ["Percolator", "Westermarck", "Glitter", "Black Hole", "Scare U", "Ruby", "DQ", "Gatorade", "Totalizer", "Julia"]
young_songs = ["Blown to Bits", "Capacity", "Under You", "Camera", "Fighting in the Dark", "Young Enough", "Bleach", "Chatroom", "Hurt Me", "Hard to Believe", "The Truth"]

guppy_songs.each {|song|
    Song.create(name: song, album_id: guppy.id)
}

young_songs.each {|song|
    Song.create(name: song, album_id: young.id)
}
