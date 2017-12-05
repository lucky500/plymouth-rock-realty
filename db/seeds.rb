# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
User.create!([
    {
        email: 'user1@test.com',
        password: '123456',
        password_confirmation: '123456',
        admin: true
    },
    {
        email: 'user2@test.com',
        password: '123456',
        password_confirmation: '123456',
        admin: true
    },
    {
        email: 'user4@test.com',
        password: '123456',
        password_confirmation: '123456',
    },
    {
        email: 'user6@test.com',
        password: '123456',
        password_confirmation: '123456',
    }
])

#Property.destroy_all
Property.create!([
  {
    address: '24 Lake Shore Dr, Leominster, MA 01453',
    price: '$379,000',
    description: '***OPEN HOUSE SATURDAY NOV 18TH 11AM-1PM***METICULOUSLY MAINTAINED COLONIAL ON LAKE SAMOSET!! Three bedrooms and an office nicely situated across from the Lake. ***********',
    bedrooms: '4',
    bathrooms: '3',
    property_type: 'Single Family',
    sqft: '2,205',
    lot: '10,018',
    year_built: '2002',
    user_id: Random.rand(1...4)
  },
  {
    address: '46 Fairview Rd,Lunenburg, MA 01462',
    price: '$319,000',
    description: 'If you need more room, consider this unique 4 bedroom home with over 2000 sq. ft. of living area, situated on a private dead end street minutes to downtown.',
    bedrooms: '4',
    bathrooms: '2',
    property_type: 'Single Family',
    sqft: '2,354',
    lot: '0.46',
    year_built: '1962',
    user_id: Random.rand(1...4)
  },
  {
    address: '59 Banbury Ln, Holden, MA 01520',
    price: '$429,000',
    description: 'Location location! And so much space for the price! This contemporary home was custom built by owners and lovingly maintained. You will be in awe of the space, attention to light, storage and flow. There are multiple levels of living to accommodate versatility and multi-generational living.',
    bedrooms: '5',
    bathrooms: '3',
    property_type: 'Single Family',
    sqft: '3,016',
    lot: '1.2',
    year_built: '1972',
    user_id: Random.rand(1...3)
  }
])

# Comment.destroy_all
property_id = Property.pluck(:id)
#property_id_to_i = property_id.collect{|i| i.to_i}
20.times do
  Comment.create!([{
    description: Faker::Lorem.paragraph(2, true, 4),
    property_id: property_id.sample,
    user_id: Random.rand(1...3)
  }])
end

