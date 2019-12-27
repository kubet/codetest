require 'rails_helper'

RSpec.describe User, type: :model do
  context "validation" do
    
    it "can create user" do
      user = User.new(email: 'test@example.com', password: 'test').save
      expect(user).to eq(true) 
    end
    

  end
  
end
