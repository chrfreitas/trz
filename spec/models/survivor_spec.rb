require 'rails_helper'

RSpec.describe Survivor, type: :model do
  context "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_inclusion_of(:gender).in_array(%w(male female others)) }
  end
end
