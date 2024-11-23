p "Cleaning before seeding"

List.destroy_all

categories = ["grocecy", "shopping", "technology", "personal"]

categories.each do |cat|
  List.create(
    title: cat.capitalize
  )
end

p "Finished seeding"