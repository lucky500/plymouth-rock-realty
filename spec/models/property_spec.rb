require 'rails_helper'

RSpec.describe Property, type: :model do
  context 'validation tests' do
    let(:property) { build(:property) }
    it 'ensures presence of address' do
      expect(property.address).to(eq('295 O Littleton County Rd, Harvard, MA 01451'))
    end

    it 'ensures presence of price' do
      expect(property.price).to(eq('575,000'))
    end

    it 'ensures presence of description' do
      property.description = nil
      expect(property.save).to(eq(false))
    end

    it 'ensures presence of bedrooms' do
      expect(property.bedrooms).to(eq('4'))
    end

    it 'ensures presence of bathrooms' do
      property.bathrooms = '3'
      expect(property.bathrooms).to(eq('3'))
    end

    it 'ensures presence of property type' do
      expect(property.property_type).to(eq('Single Family'))
    end

    it 'ensures presence of property sqft' do
      property.sqft = nil
      expect(property.save).to(eq(false))
    end

    it 'ensures presence of lot size' do
      expect(property.lot).to(eq('6.92'))
    end

    it 'ensures presence of property age' do
      expect(property.year_built).to(eq('1974'))
    end

  end
end
