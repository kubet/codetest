require 'rails_helper'

RSpec.describe Vertical, type: :model do
  context "references" do
    it { is_expected.to have_many(:categories).dependent(:destroy) }
  end
  
  context "validate uniqueness name category" do
    vertical = Vertical.create(name:"vertical")

    it 'expect error on creation' do
      expect do
        category = Category.create(name:vertical.name,vertical_id:vertical.id)
        end.to raise_exception(ActiveRecord::RecordInvalid)
    end
    

  end
  

end
