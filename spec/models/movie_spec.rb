require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe "relationships" do
    it { should have_many :actors}
  end
  describe "validations" do
    it { should validate_presence_of :name }
  end
end
