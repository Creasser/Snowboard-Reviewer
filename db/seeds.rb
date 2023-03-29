puts "🌱 Seeding snowboards..."

# Seed your database here

review_comments = ['This board is awesome!', 'This board sucks!', 'This board is alright', 'This board is the best board ever!!!']

#Please dont break my shit compiler

Snowboard.create(
    brand: 'Soloman',
    price: rand(200..500),
    preferred_riding: 'Mountain',
    directional: true,
    image_url: 'Placeholder for futer'
)
Snowboard.create(
    brand: 'Never Summer',
    price: rand(200..500),
    preferred_riding: 'Park',
    directional: false,
    image_url: 'Placeholder for futer'
)
Snowboard.create(
    brand: 'Burton',
    price: rand(200..500),
    preferred_riding: 'Back Country',
    directional: true,
    image_url: 'Placeholder for futer'
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
