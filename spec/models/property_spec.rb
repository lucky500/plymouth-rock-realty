require 'rails_helper'

RSpec.describe Property, type: :model do
  context 'validation tests' do
    let(:property) { build(:property) }
    it 'ensures presence of address' do
      property.address = nil
      expect(property.save).to(eq(false))
    end
  end
end
