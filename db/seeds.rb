puts "🌱 Seeding snowboards..."

# Seed your database here

review_comments = ['This board is awesome!', 'This board sucks!', 'This board is alright', 'This board is the best board ever!!!']

#Please dont break my shit compiler

Snowboard.create(
    brand: 'Soloman',
    price: rand(200..500),
    preferred_riding: 'Mountain',
    directional: true,
    image_url: 'https://images.evo.com/imgp/250/221478/921048/salomon-pulse-snowboard-2023-.jpg'
)
Snowboard.create(
    brand: 'Never Summer',
    price: rand(200..500),
    preferred_riding: 'Park',
    directional: false,
    image_url: 'https://images.evo.com/imgp/250/227190/931236/never-summer-lady-fr-snowboard-women-s-2023-.jpg'
)
Snowboard.create(
    brand: 'Burton',
    price: rand(200..500),
    preferred_riding: 'Back Country',
    directional: true,
    image_url: 'https://images.evo.com/imgp/250/193500/782872/burton-family-tree-hometown-hero-splitboard-2022-.jpg'
)

Snowboard.all.each do |board|
    2.times do
        Review.create(
            rating: rand(1..10),
            comment: review_comments.sample,
            snowboard_id: board.id
        )
    end
end

puts "✅ Done seeding!"
