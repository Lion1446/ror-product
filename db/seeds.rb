20.times do |i|
  Product.create!(
    name:         "Product #{i + 1}",
    category:     %w[Electronics Furniture Clothing Food].sample,
    description:  "This is a description for Product #{i + 1}. It is a great item.",
    price:        rand(1..500),
    is_available: [true, false].sample
  )
end
