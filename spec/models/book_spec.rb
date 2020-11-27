# == Schema Information
#
# Table name: books
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  price      :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :bigint           not null
#
# Indexes
#
#  index_books_on_author_id  (author_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#
require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'Associations' do
    it { is_expected.to belong_to(:author) }
    it { is_expected.to have_many(:orders).dependent(:destroy) }
  end

  describe 'Attributes' do
    describe '#name' do
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_presence_of(:price) }
    end
  end
end
