
8.times do |portfolio|
	Portfolio.create!(
		title: "Portfolio title #{portfolio}",
		subtitile: "Ruby on Rails", 
		body: "A type of weblog in which posts are written and published 
		by more than one author. The majority of high-profile collaborative 
		blogs are organised according to a single uniting theme, such as politics,
		technology or advocacy.",
		main_image: "https://via.placeholder.com/600x200.png/09f/fff",
		tumb_image: "https://via.placeholder.com/350x200.png/09f/fff"
	)
end

10.times do |portfolio|
	Portfolio.create!(
		title: "Portfolio title #{portfolio}",
		subtitile: "Angular", 
		body: "A type of weblog in which posts are written and published 
		by more than one author. The majority of high-profile collaborative 
		blogs are organised according to a single uniting theme, such as politics,
		technology or advocacy.",
		main_image: "https://via.placeholder.com/600x200.png/09f/fff",
		tumb_image: "https://via.placeholder.com/350x200.png/09f/fff"
	)
end


puts "9 protfolio posts created"

3.times do |technology|
	Technology.create!(
		name: "Technology #{technology}",
		portfolio_id: Portfolio.last.id
	)
end


puts "3 technologies created"
