require 'rails_helper'

  RSpec.describe Product, type: :model do
    describe 'Validations' do
      # validates :name, presence: true
      it 'validates the presence of a name' do
        @category = Category.new(name: 'test')
        @product = Product.new(name: nil, price_cents: 1000, quantity: 1, category: @category)
        expect(@product).to_not be_valid
      end

      # validates :price, presence: true
      it 'validates the presence of a price' do
        @category = Category.new(name: 'test')
        @product = Product.new(name: 'test', price_cents: nil, quantity: 1, category: @category)
        expect(@product).to_not be_valid
      end
      
      # validates :quantity, presence: true
      it 'validates the presence of a quantity' do
        @category = Category.new(name: 'test')
        @product = Product.new(name: 'test', price_cents: 1000, quantity: nil, category: @category)
        expect(@product).to_not be_valid
      end
      
      # validates :category, presence: true
      it 'validates the presence of a category' do
        @category = Category.new(name: 'test')
        @product = Product.new(name: 'test', price_cents: 1000, quantity: 1, category: nil)
        expect(@product).to_not be_valid
      end    
  end
end
