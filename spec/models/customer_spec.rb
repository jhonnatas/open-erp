# frozen_string_literal: true

# == Schema Information
#
# Table name: customers
#
#  id         :bigint           not null, primary key
#  cellphone  :string
#  cpf        :string
#  email      :string
#  name       :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  account_id :integer
#
# Indexes
#
#  index_customers_on_account_id  (account_id)
#
require 'rails_helper'

RSpec.describe Customer, type: :model do
  it { is_expected.to have_many(:sales) }

  it { is_expected.to belong_to(:account) }

  context 'when create' do
    let(:customer) { create(:customer) }

    it 'is valid' do
      expect(customer).to be_valid
    end
  end
end
