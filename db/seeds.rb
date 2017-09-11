# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10000.times do
  User.create( name: FFaker::Name.name )
end

15.times do
  Video.create( title: FFaker::HipsterIpsum.words(4).join(' ') )
end
videos = Video.all.ids

User.all.each do |u|
  # watch a few videos
  videos.sample(3).each do |vid|
    UsersVideo.create(user_id: u.id, video_id: vid, created_at: rand(30).days.ago)
  end
end
