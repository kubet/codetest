require 'rails_helper'

RSpec.describe Course, type: :model do
  context "references" do
    it { is_expected.to belong_to(:category) }
  end
end
