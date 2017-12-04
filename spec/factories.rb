FactoryBot.define do
  factory :comment do
    description "MyText"
    user nil
    property nil
  end
  factory :user do
    
  end
  factory(:property) do
    address('295 O Littleton County Rd, Harvard, MA 01451')
    price('575,000')
    description('++NEW PRICE++ WOW this private paradise will steal your heart! The property comprises 2 parcels (6.92 acres) which will convey together.')
    bedrooms('4')
    bathrooms('2 1/2')
    property_type('Single Family')
    sqft('3508')
    lot('6.92')
    year_built('1974')
  end
end