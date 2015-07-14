# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:email => 'rails@gmail.com', :password => '12345678', :password_confirmation => '12345678', :role => 'seller', :active => 'Active', :username => 'seller',:confirmation_token => '',:confirmed_at => Time.now)
User.create(:email => 'neeraj@gmail.com', :password => '12345678', :password_confirmation => '12345678', :role => 'buyer', :active => 'Active', :username => 'buyer',:confirmation_token => '',:confirmed_at => Time.now)
User.create(:email => 'prasad@gmail.com', :password => '12345678', :password_confirmation => '12345678', :role => 'buyer', :active => 'Active', :username => 'buyer',:confirmation_token => '',:confirmed_at => Time.now)
User.create(:email => 'railsdev@gmail.com', :password => '12345678', :password_confirmation => '12345678', :role => 'non-profit', :active => 'Active', :username => 'non-profit',:confirmation_token => '',:confirmed_at => Time.now)
User.create(:email => 'admin@gmail.com', :password => '12345678', :password_confirmation => '12345678', :role => 'admin', :active => 'Active', :username => 'admin',:confirmation_token => '',:confirmed_at => Time.now)


unless Category.count > 0
  @category = Category.create(:name => 'Electronics')
  SubCategory.create(:name => 'Computer Peripherals', :category_id => @category.id)
  SubCategory.create(:name => 'Computer Software', :category_id => @category.id)
end

# if Category.count == 0
#   Category.create(:name => 'Jewellery')
#   Category.create(:name => 'Clothing')
#   Category.create(:name => 'Home Alliance')
#   Category.create(:name => "Footwear")
#   Category.create(:name => 'Accessories')
#   Category.create(:name => 'Gift')
  
#   @cat1 = Category.where(:name => "Jewellery").first
#   #Jewellery
#   SubCategory.create(:name => 'Silver Jewellery', :category_id => @cat1.id)
#   @subcat1 = SubCategory.where(:name => 'Silver Jewellery').first

#   SubCategory.create(:name => 'Birthday Jewellery', :category_id => @cat1.id)
#   @subcat2 = SubCategory.where(:name => 'Birthday Jewellery').first
  
#   SubCategory.create(:name => 'Antique Jewellery', :category_id => @cat1.id)
#   @subcat3=SubCategory.where(:name => 'Antique Jewellery').first


#   SubCategory.create(:name => 'Bead Jewellery', :category_id => @cat1.id)
#   @subcat4=SubCategory.where(:name => 'Bead Jewellery').first

#   SubCategory.create(:name => 'Bridal Jewellery', :category_id => @cat1.id)
#   @subcat5=SubCategory.where(:name => 'Bridal Jewellery').first

#   SubCategory.create(:name => 'Custom Jewellery', :category_id => @cat1.id)
#   @subcat6=SubCategory.where(:name => 'Custom Jewellery').first

#   SubCategory.create(:name => 'Fashion Jewellery', :category_id => @cat1.id)
#   @subcat7=SubCategory.where(:name => 'Fashion Jewellery').first

#   SubCategory.create(:name => 'Filigree Jewellery', :category_id => @cat1.id)
#   @subcat8=SubCategory.where(:name => 'Filigree Jewellery').first
  
#   SubCategory.create(:name => 'Gold Jewellery', :category_id => @cat1.id)
#   @subcat9=SubCategory.where(:name => 'Gold Jewellery').first

#   SubCategory.create(:name => 'Handmade Jewellery', :category_id => @cat1.id)
#   @subcat10=SubCategory.where(:name => 'Handmade Jewellery').first

#   SubCategory.create(:name => 'Ivory Jewellery', :category_id => @cat1.id)
#   @subcat11=SubCategory.where(:name => 'Ivory Jewellery').first

#   SubCategory.create(:name => 'Jadau Jewellery', :category_id => @cat1.id)
#   @subcat12=SubCategory.where(:name => 'Jadau Jewellery').first

#   SubCategory.create(:name => 'Kundan Jewellery', :category_id => @cat1.id)
#   @subcat13=SubCategory.where(:name => 'Kundan Jewellery').first

#   SubCategory.create(:name => 'Lac Jewellery', :category_id => @cat1.id)
#   @subcat14=SubCategory.where(:name => 'Lac Jewellery').first

#   SubCategory.create(:name => 'Meenakari Jewellery', :category_id => @cat1.id)
#   @subcat15=SubCategory.where(:name => 'Meenakari Jewellery').first

#   SubCategory.create(:name => 'Navratna Jewellery', :category_id => @cat1.id)
#   @subcat16=SubCategory.where(:name => 'Navratna Jewellery').first

#   SubCategory.create(:name => 'Pachchikam Jewellery', :category_id => @cat1.id)
#   @subcat17=SubCategory.where(:name => 'Pachchikam Jewellery').first
  
#   SubCategory.create(:name => 'Stone Jewellery', :category_id => @cat1.id)
#   @subcat18=SubCategory.where(:name => 'Stone Jewellery').first
  
#   SubCategory.create(:name => 'Temple Jewellery', :category_id => @cat1.id)
#   @subcat19=SubCategory.where(:name => 'Temple Jewellery').first

#   SubCategory.create(:name => 'Tribal Jewellery', :category_id => @cat1.id)
#   @subcat20=SubCategory.where(:name => 'Tribal Jewellery').first

#   @cat2 = Category.where(:name => "Clothing").first
#   #Clothing
#   SubCategory.create(:name => 'Men', :category_id => @cat2.id)
#   @subcat21=SubCategory.where(:name => 'Men').first

#   SubCategory.create(:name => 'Women', :category_id => @cat2.id)
#   @subcat22=SubCategory.where(:name => 'Women').first
  
#   SubCategory.create(:name => 'Kids', :category_id => @cat2.id)
#   @subcat23=SubCategory.where(:name => 'Kids').first

#   @cat3 = Category.where(:name => "Home Alliance").first
#   #Home Alliance
#   SubCategory.create(:name => 'Home decor', :category_id => @cat3.id)
#   @subcat24=SubCategory.where(:name => 'Home decor').first

#   SubCategory.create(:name => 'FURNISHINGS', :category_id => @cat3.id)
#   @subcat25=SubCategory.where(:name => 'FURNISHINGS').first

#   SubCategory.create(:name => 'HOME IMPROVEMENT', :category_id => @cat3.id)
#   @subcat26=SubCategory.where(:name => 'HOME IMPROVEMENT').first
  
#   SubCategory.create(:name => 'KITCHEN & DINING', :category_id => @cat3.id)
#   @subcat27=SubCategory.where(:name => 'KITCHEN & DINING').first

#   @cat4 = Category.where(:name => "Footwear").first
#   #Men's Footwear
#   SubCategory.create(:name => "MEN'S FOOTWEAR", :category_id => @cat4.id)
#   @subcat28=SubCategory.where(:name => "MEN'S FOOTWEAR").first
  
#   SubCategory.create(:name => "WOMEN'S FOOTWEAR", :category_id => @cat4.id)
#   @subcat29=SubCategory.where(:name => "WOMEN'S FOOTWEAR").first
  

#   @cat5 = Category.where(:name => "Accessories").first
#   #Accessories
#   SubCategory.create(:name => 'WOMEN', :category_id => @cat5.id)
#   @subcat30=SubCategory.where(:name => 'WOMEN').first
  
#   SubCategory.create(:name => 'Men', :category_id => @cat5.id)
#   @subcat31=SubCategory.where(:name => 'Men').first
  
#   SubCategory.create(:name => 'TRAVEL & LUGGAGE', :category_id => @cat5.id)
#   @subcat32=SubCategory.where(:name => 'TRAVEL & LUGGAGE').first


#   @cat6 = Category.where(:name => "Gift").first
#   #Gift
#   SubCategory.create(:name => 'Greeting Cards', :category_id => @cat6.id)
#   @subcat33=SubCategory.where(:name => 'Greeting Cards').first

#   SubCategory.create(:name => 'Office Accessories', :category_id => @cat6.id)
#   @subcat34=SubCategory.where(:name => 'Office Accessories').first
  
#   SubCategory.create(:name => 'Personalized Gifts', :category_id => @cat6.id)
#   @subcat35=SubCategory.where(:name => 'Personalized Gifts').first
  
#   SubCategory.create(:name => 'Soft Toys', :category_id => @cat6.id)
#   @subcat36=SubCategory.where(:name => 'Soft Toys').first
  
#   SubCategory.create(:name => 'Fashion Accessories', :category_id => @cat6.id)
#   @subcat37=SubCategory.where(:name => 'Fashion Accessories').first

#   SubCategory.create(:name => 'Day Special', :category_id => @cat6.id)
#   @subcat38=SubCategory.where(:name => 'Day Special').first
  
#   #****************************************************************************
#   #Child Category Section
#   #Cloth Men
#   SubSubCategory.create(:name => 'Shirts', :sub_category_id => @subcat21.id)
#   SubSubCategory.create(:name => 'Fashion Hoodies & Sweatshirts', :sub_category_id => @subcat21.id)
#   SubSubCategory.create(:name => 'Sweaters', :sub_category_id => @subcat21.id)
#   SubSubCategory.create(:name => 'Jackets & Coats', :sub_category_id => @subcat21.id)
#   SubSubCategory.create(:name => 'Jeans', :sub_category_id => @subcat21.id)
#   SubSubCategory.create(:name => 'Pants', :sub_category_id => @subcat21.id)
#   SubSubCategory.create(:name => 'Shorts', :sub_category_id => @subcat21.id)
#   SubSubCategory.create(:name => 'Active', :sub_category_id => @subcat21.id)
#   SubSubCategory.create(:name => 'Swim', :sub_category_id => @subcat21.id)
#   SubSubCategory.create(:name => 'Suits & Sport Coats', :sub_category_id => @subcat21.id)
#   SubSubCategory.create(:name => 'Underwear', :sub_category_id => @subcat21.id)
#   SubSubCategory.create(:name => 'Socks', :sub_category_id => @subcat21.id)
#   SubSubCategory.create(:name => 'Sleep & Lounge', :sub_category_id => @subcat21.id)

#   #cloth women
#   SubSubCategory.create(:name => 'Dresses', :sub_category_id => @subcat22.id)
#   SubSubCategory.create(:name => 'Tops & Tees', :sub_category_id => @subcat22.id)
#   SubSubCategory.create(:name => 'Sweaters', :sub_category_id => @subcat22.id)
#   SubSubCategory.create(:name => 'Fashion Hoodies & Sweatshirts', :sub_category_id => @subcat22.id)
#   SubSubCategory.create(:name => 'Jeans', :sub_category_id => @subcat22.id)
#   SubSubCategory.create(:name => 'Pants', :sub_category_id => @subcat22.id)
#   SubSubCategory.create(:name => 'Skirts', :sub_category_id => @subcat22.id)
#   SubSubCategory.create(:name => 'Shorts', :sub_category_id => @subcat22.id)
#   SubSubCategory.create(:name => 'Leggings', :sub_category_id => @subcat22.id)
#   SubSubCategory.create(:name => 'Active', :sub_category_id => @subcat22.id)
#   SubSubCategory.create(:name => 'Lingerie, Sleep & Lounge', :sub_category_id => @subcat22.id)
#   SubSubCategory.create(:name => 'Jumpsuits, Rompers & Overalls', :sub_category_id => @subcat22.id)
#   SubSubCategory.create(:name => 'Coats & Jackets', :sub_category_id => @subcat22.id)
#   SubSubCategory.create(:name => 'Suiting & Blazers', :sub_category_id => @subcat22.id)
#   SubSubCategory.create(:name => 'Socks & Hosiery', :sub_category_id => @subcat22.id)

#   #clothes Kids
#   SubSubCategory.create(:name => 'Sweaters & Sweatshirts', :sub_category_id => @subcat23.id)
#   SubSubCategory.create(:name => 'Rompers', :sub_category_id => @subcat23.id)
#   SubSubCategory.create(:name => 'T-shirts', :sub_category_id => @subcat23.id)
#   SubSubCategory.create(:name => 'Frocks & Dresses', :sub_category_id => @subcat23.id)
#   SubSubCategory.create(:name => 'Combos', :sub_category_id => @subcat23.id)
#   SubSubCategory.create(:name => 'Jeans', :sub_category_id => @subcat23.id)
#   SubSubCategory.create(:name => 'Clothing Sets', :sub_category_id => @subcat23.id)
#   SubSubCategory.create(:name => 'Nightwear', :sub_category_id => @subcat23.id)
  
#   #Home Alliance, home decore
#   SubSubCategory.create(:name => 'Clocks', :sub_category_id => @subcat24.id)
#   SubSubCategory.create(:name => 'Handicrafts', :sub_category_id => @subcat24.id)
#   SubSubCategory.create(:name => 'Wall Décor', :sub_category_id => @subcat24.id)
#   SubSubCategory.create(:name => 'Artifacts', :sub_category_id => @subcat24.id)
#   SubSubCategory.create(:name => 'Photo Frames', :sub_category_id => @subcat24.id)
#   SubSubCategory.create(:name => 'Vases & Flowers', :sub_category_id => @subcat24.id)
#   SubSubCategory.create(:name => 'Paintings', :sub_category_id => @subcat24.id)
#   SubSubCategory.create(:name => 'Candle Holders', :sub_category_id => @subcat24.id)

#   #home alliance, furnishi
#   SubSubCategory.create(:name => 'Bed Linen', :sub_category_id => @subcat25.id)
#   SubSubCategory.create(:name => 'Living Room', :sub_category_id => @subcat25.id)
#   SubSubCategory.create(:name => 'Curtains', :sub_category_id => @subcat25.id)
#   SubSubCategory.create(:name => 'Bath Linen', :sub_category_id => @subcat25.id)
#   SubSubCategory.create(:name => 'Table Linen', :sub_category_id => @subcat25.id)
#   SubSubCategory.create(:name => 'Flooring', :sub_category_id => @subcat25.id)
#   SubSubCategory.create(:name => 'Kids Furnishings', :sub_category_id => @subcat25.id)
#   SubSubCategory.create(:name => 'Furnishing Combos', :sub_category_id => @subcat25.id)

#   #home alliance, home improvements 27

#   SubSubCategory.create(:name => 'Bathroom Accessories', :sub_category_id => @subcat26.id)
#   SubSubCategory.create(:name => 'Cleaning Utilities', :sub_category_id => @subcat26.id)
#   SubSubCategory.create(:name => 'Tools & Kits', :sub_category_id => @subcat26.id)
#   SubSubCategory.create(:name => 'Lighting', :sub_category_id => @subcat26.id)
#   SubSubCategory.create(:name => 'Garden Tools & Machines', :sub_category_id => @subcat26.id)
#   SubSubCategory.create(:name => 'Lockers & Safes', :sub_category_id => @subcat26.id)
#   SubSubCategory.create(:name => 'Cloth Dryers', :sub_category_id => @subcat26.id)
#   SubSubCategory.create(:name => 'Dustbins', :sub_category_id => @subcat26.id)

#   #home alliance, kitchen dinnings 28
#   SubSubCategory.create(:name => 'Cookware', :sub_category_id => @subcat27.id)
#   SubSubCategory.create(:name => 'Kitchenware', :sub_category_id => @subcat27.id)
#   SubSubCategory.create(:name => 'Bake ware', :sub_category_id => @subcat27.id)
#   SubSubCategory.create(:name => 'Kitchen combos', :sub_category_id => @subcat27.id)
#   SubSubCategory.create(:name => 'Serve ware', :sub_category_id => @subcat27.id)
#   SubSubCategory.create(:name => 'Cook & serve pots', :sub_category_id => @subcat27.id)
#   SubSubCategory.create(:name => 'Bar accessories', :sub_category_id => @subcat27.id)
#   SubSubCategory.create(:name => 'Kitchen Storage', :sub_category_id => @subcat27.id)

#   #men's footwear men's footwear
#   SubSubCategory.create(:name => 'Casual Shoes', :sub_category_id => @subcat28.id)
#   SubSubCategory.create(:name => 'Sports Shoes', :sub_category_id => @subcat28.id)
#   SubSubCategory.create(:name => 'Formal Shoes', :sub_category_id => @subcat28.id)
#   SubSubCategory.create(:name => 'Sandals', :sub_category_id => @subcat28.id)
#   SubSubCategory.create(:name => 'Slippers & Flip Flops', :sub_category_id => @subcat28.id)
#   SubSubCategory.create(:name => 'Loafers', :sub_category_id => @subcat28.id)
#   SubSubCategory.create(:name => 'Combos', :sub_category_id => @subcat28.id)
#   SubSubCategory.create(:name => "Boys' Footwear", :sub_category_id => @subcat28.id)

#   #men's footwear women's footwear
#   SubSubCategory.create(:name => 'Sandals', :sub_category_id => @subcat29.id)
#   SubSubCategory.create(:name => 'Ballerinas', :sub_category_id => @subcat29.id)
#   SubSubCategory.create(:name => 'Wedges', :sub_category_id => @subcat29.id)
#   SubSubCategory.create(:name => 'Pumps', :sub_category_id => @subcat29.id)
#   SubSubCategory.create(:name => 'Casual Shoes', :sub_category_id => @subcat29.id)
#   SubSubCategory.create(:name => 'Peep Toes', :sub_category_id => @subcat29.id)
#   SubSubCategory.create(:name => 'Slippers & Flip Flops', :sub_category_id => @subcat29.id)
#   SubSubCategory.create(:name => 'Sports Shoes', :sub_category_id => @subcat29.id)
#   SubSubCategory.create(:name => "Girls' Footwear", :sub_category_id => @subcat29.id)

#   #Accesssories women  
#   SubSubCategory.create(:name => 'Handbags', :sub_category_id => @subcat30.id)
#   SubSubCategory.create(:name => 'Purses & Clutches', :sub_category_id => @subcat30.id)
#   SubSubCategory.create(:name => 'Gift Combos', :sub_category_id => @subcat30.id)
#   SubSubCategory.create(:name => 'Scarves & Stoles', :sub_category_id => @subcat30.id)
#   SubSubCategory.create(:name => 'Sunglasses', :sub_category_id => @subcat30.id)
#   SubSubCategory.create(:name => 'Belts', :sub_category_id => @subcat30.id)
#   SubSubCategory.create(:name => 'Hair Accessories', :sub_category_id => @subcat30.id)
#   SubSubCategory.create(:name => 'Caps & Hats', :sub_category_id => @subcat30.id)

#   #Accesssories men  
#   SubSubCategory.create(:name => 'Backpacks & Laptop Bags', :sub_category_id => @subcat31.id)
#   SubSubCategory.create(:name => 'Wallets', :sub_category_id => @subcat31.id)
#   SubSubCategory.create(:name => 'Gift Combos', :sub_category_id => @subcat31.id)
#   SubSubCategory.create(:name => 'Sunglasses', :sub_category_id => @subcat31.id)
#   SubSubCategory.create(:name => 'Belts', :sub_category_id => @subcat31.id)
#   SubSubCategory.create(:name => 'Ties & Cufflinks', :sub_category_id => @subcat31.id)
#   SubSubCategory.create(:name => 'Caps & Hats', :sub_category_id => @subcat31.id)
#   SubSubCategory.create(:name => 'Scarves & Stoles', :sub_category_id => @subcat31.id)

#   #accessories, TRAVEL & LUGGAGE
#   SubSubCategory.create(:name => 'Trolley Bags & Suitcases', :sub_category_id => @subcat32.id)
#   SubSubCategory.create(:name => 'Travel Combos', :sub_category_id => @subcat32.id)
#   SubSubCategory.create(:name => 'Duffle Bags', :sub_category_id => @subcat32.id)
#   SubSubCategory.create(:name => 'Travel Accessories', :sub_category_id => @subcat32.id)
#   SubSubCategory.create(:name => 'Passport & Card Holders', :sub_category_id => @subcat32.id)
#   SubSubCategory.create(:name => 'Burdy', :sub_category_id => @subcat32.id)
#   SubSubCategory.create(:name => 'Fashion', :sub_category_id => @subcat32.id)
  
  
#   #Gift, Greeting Cards
#   SubSubCategory.create(:name => 'Easter Cards', :sub_category_id => @subcat33.id)
#   SubSubCategory.create(:name => 'Birthday', :sub_category_id => @subcat33.id)
#   SubSubCategory.create(:name => 'Anniversary', :sub_category_id => @subcat33.id)
#   SubSubCategory.create(:name => 'Personalised Cards', :sub_category_id => @subcat33.id)
#   SubSubCategory.create(:name => 'Love', :sub_category_id => @subcat33.id)
#   SubSubCategory.create(:name => 'Wedding', :sub_category_id => @subcat33.id)
#   SubSubCategory.create(:name => 'Congratulations', :sub_category_id => @subcat33.id)
#   SubSubCategory.create(:name => 'Good Bye', :sub_category_id => @subcat33.id)
#   SubSubCategory.create(:name => 'Thank You', :sub_category_id => @subcat33.id)
#   SubSubCategory.create(:name => 'New Venture', :sub_category_id => @subcat33.id)
#   SubSubCategory.create(:name => 'Retirement', :sub_category_id => @subcat33.id)
#   SubSubCategory.create(:name => 'Promotion', :sub_category_id => @subcat33.id)
#   SubSubCategory.create(:name => 'Good Luck', :sub_category_id => @subcat33.id)

#  #Gift, office accessories
#  SubSubCategory.create(:name => 'Pens', :sub_category_id => @subcat34.id)
#  SubSubCategory.create(:name => 'Notebooks', :sub_category_id => @subcat34.id)
#  SubSubCategory.create(:name => 'Calendars', :sub_category_id => @subcat34.id)
#  SubSubCategory.create(:name => 'Fun Signs', :sub_category_id => @subcat34.id)
#  SubSubCategory.create(:name => 'Quotation Books', :sub_category_id => @subcat34.id)
#  SubSubCategory.create(:name => 'Albums', :sub_category_id => @subcat34.id)
#  SubSubCategory.create(:name => 'Collection Albums', :sub_category_id => @subcat34.id)
#  SubSubCategory.create(:name => 'Autograph Books', :sub_category_id => @subcat34.id)
#  SubSubCategory.create(:name => 'Posters', :sub_category_id => @subcat34.id)
#  SubSubCategory.create(:name => 'Cry', :sub_category_id => @subcat34.id)
#  SubSubCategory.create(:name => 'Helpage, unicef', :sub_category_id => @subcat34.id)

#   #Gift, Personalized Gifts
#   SubSubCategory.create(:name => 'Greeting Cards', :sub_category_id => @subcat35.id)
#   SubSubCategory.create(:name => 'Accessories', :sub_category_id => @subcat35.id)
#   SubSubCategory.create(:name => 'Cushions & Pillows', :sub_category_id => @subcat35.id)
#   SubSubCategory.create(:name => 'Granite Stones', :sub_category_id => @subcat35.id)
#   SubSubCategory.create(:name => 'Mugs', :sub_category_id => @subcat35.id)
#   SubSubCategory.create(:name => 'Personalised Combos', :sub_category_id => @subcat35.id)
#   SubSubCategory.create(:name => 'Photo Frames', :sub_category_id => @subcat35.id)
 
#   #Gift, Soft Toys
#   SubSubCategory.create(:name => 'Teddy Bears', :sub_category_id => @subcat36.id)
#   SubSubCategory.create(:name => 'Heart Cushions', :sub_category_id => @subcat36.id)
#   SubSubCategory.create(:name => 'Pets & Animals', :sub_category_id => @subcat36.id)


#    #Gift, Fashion Accessories
#    SubSubCategory.create(:name => 'Scarves', :sub_category_id => @subcat37.id)
#    SubSubCategory.create(:name => 'Passport Holders', :sub_category_id => @subcat37.id)
#    SubSubCategory.create(:name => 'Perfumes', :sub_category_id => @subcat37.id)
#    SubSubCategory.create(:name => 'Key Chains', :sub_category_id => @subcat37.id)
#    SubSubCategory.create(:name => 'Watches', :sub_category_id => @subcat37.id)
#    SubSubCategory.create(:name => 'Sunglasses', :sub_category_id => @subcat37.id)
#    SubSubCategory.create(:name => 'Gift Sets', :sub_category_id => @subcat37.id)
#    SubSubCategory.create(:name => 'Card & Cigarette Holders', :sub_category_id => @subcat37.id)
#    SubSubCategory.create(:name => 'Bags & Wallets', :sub_category_id => @subcat37.id)


#    #Gift, Day Special
#    SubSubCategory.create(:name => 'Baisakhi - 13 Apr', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Love & Romance', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Easter - 05 Apr', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => "Women's Day - 08", :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Mar Holi - 06 Mar', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => "Valentine's Day - ", :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Feb Kiss Day - 13', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Feb Hug Day - 12', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Feb Promise Day - 11', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Feb Teddy Day - 10', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Feb Chocolate Day - 9 Feb', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Birthday', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Propose Day - 8 Feb', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Lohri - 13 Jan', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Anniversary Wedding', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'New Year', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Thank You', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Christmas - 25 Dec', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => "Children's Day - ", :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Nov Bhai Dooj - 25', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Oct Diwali - 23 Oct', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Boss Day -  Oct', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Karva Chauth - 11 Oct', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Rose Day - 7 Feb', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Daughters Day - 28 Sep', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Mothers Day - 10 May', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Teachers Day – 05 Sep', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Eid-Ul-Fitr', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Rakhi - 10 Aug ', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Friendship Day', :sub_category_id => @subcat38.id)
#    SubSubCategory.create(:name => 'Fathers Day', :sub_category_id => @subcat38.id)

#   #Jwewllery sub-sub-cats Silver Jewelry  
#   SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat1.id)
#   SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat1.id)
#   SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat1.id)
#   SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat1.id)
#   SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat1.id)
#   SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat1.id)
#   SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat1.id)

#   #Jwewllery sub-sub-cats Birthday Jewelry 
#   SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat2.id)
#   SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat2.id)
#   SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat2.id)
#   SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat2.id)
#   SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat2.id)
#   SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat2.id)
#   SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat2.id)

# #Jwewllery sub-sub-cats Antique Jewelry
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat3.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat3.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id =>@subcat3.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat3.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat3.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat3.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat3.id)

# #Jwewllery sub-sub-cats Bead Jewelry
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat4.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat4.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat4.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat4.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat4.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat4.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat4.id)

#  #Jwewllery sub-sub-cats Bridal Jewelry
#  SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat5.id)
#  SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat5.id)
#  SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat5.id)
#  SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat5.id)
#  SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat5.id)
#  SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat5.id)
#  SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat5.id)

# #Jwewllery sub-sub-cats Custom Jewellery
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat6.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat6.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat6.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat6.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat6.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat6.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat6.id)

# #Jwewllery sub-sub-cats Fashion Jewellery
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat7.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat7.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat7.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat7.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat7.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat7.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat7.id)

# #Jwewllery sub-sub-cats Filigree Jewellery
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat8.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat8.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat8.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat8.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat8.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat8.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat8.id)    

# #Jwewllery sub-sub-cats Gold Jewellery
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat9.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat9.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat9.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat9.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat9.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat9.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat9.id)

# #Jwewllery sub-sub-cats Handmade Jewellery
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat10.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat10.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat10.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat10.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat10.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat10.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat10.id)


# #Jwewllery sub-sub-cats Ivory Jewellery
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat11.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat11.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat11.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat11.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat11.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat11.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat11.id)


# #Jwewllery sub-sub-cats Jadau Jewellery
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat12.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat12.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat12.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat12.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat12.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat12.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat12.id)


# #Jwewllery sub-sub-cats Kundan Jewellery
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat13.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat13.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat13.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat13.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat13.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat13.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat13.id)


# #Jwewllery sub-sub-cats Lac Jewellery
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat14.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat14.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat14.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat14.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat14.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat14.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat14.id)


# #Jwewllery sub-sub-cats Meenakari Jewellery
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat15.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat15.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat15.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat15.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat15.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat15.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat15.id)                    

# #Jwewllery sub-sub-cats Navratna Jewellery
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat16.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat16.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat16.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat16.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat16.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat16.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat16.id)   

# #Jwewllery sub-sub-cats Pachchikam Jewellery
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat17.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat17.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat17.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat17.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat17.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat17.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat17.id)   

# #Jwewllery sub-sub-cats Stone Jewellery
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat18.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat18.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat18.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat18.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat18.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat18.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat18.id)   

# #Jwewllery sub-sub-cats Temple Jewellery
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat19.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat19.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat19.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat19.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat19.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat19.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat19.id)   

# #Jwewllery sub-sub-cats Tribal Jewellery
# SubSubCategory.create(:name => 'Earrings', :sub_category_id => @subcat20.id)
# SubSubCategory.create(:name => 'Rings', :sub_category_id => @subcat20.id)
# SubSubCategory.create(:name => 'Pendants', :sub_category_id => @subcat20.id)
# SubSubCategory.create(:name => 'Mangalsutras', :sub_category_id => @subcat20.id)
# SubSubCategory.create(:name => 'Nose pins', :sub_category_id => @subcat20.id)
# SubSubCategory.create(:name => 'Chains', :sub_category_id => @subcat20.id)
# SubSubCategory.create(:name => 'Alphabet Pendants', :sub_category_id => @subcat20.id)                   
# end
#   