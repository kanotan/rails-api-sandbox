# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
    it { is_expected.to have_many(:orders).dependent(:destroy) }
  end

  describe 'Attributes' do
    describe '#name' do
      it { is_expected.to validate_presence_of(:name) }
    end
  end
end
