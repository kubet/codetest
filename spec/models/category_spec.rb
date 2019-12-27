require 'rails_helper'

RSpec.describe Category, type: :model do
  context "references" do
    it { is_expected.to belong_to(:vertical) }
    it { is_expected.to have_many(:courses).dependent(:destroy) }
  end



  context "validate uniqueness name vertical" do
    vertical = Vertical.create(name:"vertical")
    category = Category.create(name:"test",vertical_id:vertical.id)

    it 'expect error on creation' do
      expect do
        verticaltwo = Vertical.create(name:category.name)
        end.to raise_exception(ActiveRecord::RecordInvalid)
    end
    

  end
end
