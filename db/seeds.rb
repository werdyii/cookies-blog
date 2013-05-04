# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
sample_text = <<EOF
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tortor metus, fringilla in semper eu, aliquet eget lorem. Suspendisse eu arcu eu odio pellentesque venenatis vel eu libero.</p>
  <p>Mauris dictum ornare iaculis. Suspendisse accumsan ipsum ac risus cursus ac sollicitudin eros egestas. Quisque tellus ligula, accumsan vitae sodales sit amet, ultricies vel lectus. Sed ullamcorper ligula in odio bibendum pellentesque id at enim. Phasellus consectetur tempor neque. Cras placerat mi vel nulla varius nec laoreet mi dignissim. Quisque non felis massa.</p>
  <p>In eget tortor non elit auctor pharetra. Aenean ultricies, mi eu placerat pretium, metus lorem porta lacus, dignissim sodales ligula justo non elit. Nunc feugiat, neque eu faucibus feugiat, risus nulla cursus sem, ut faucibus magna magna id purus. Vestibulum varius volutpat tortor in volutpat.</p>
EOF

posts = ['Prvy clanok', 'Druhy clanok', 'Treti clanok']
posts.each do |title|
  Post
    .where(:title => title)
    .first_or_create(
      :body => sample_text
    )
end

puts "==== je to tam ==="