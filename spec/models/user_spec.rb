require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    subject { User.new(name: 'test', email: 'test@test.COM', password: 'testtest', password_confirmation: 'testtest') }
    it 'validates a user when password & confirmation are both and match' do
      @user = User.new(name: 'test', email: 'test@test.COM', password: 'testtest', password_confirmation: 'testtest')
      expect(@user).to be_valid
    end
    it 'validates matching password and confirmation' do
      @user = User.new(email: 'test@test.com', password: 'testtest', password_confirmation: 'testtest2')
      expect(@user).to_not be_valid
    end
  end

end
