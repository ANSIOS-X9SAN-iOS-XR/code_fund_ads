# == Schema Information
#
# Table name: organization_transactions
#
#  id               :bigint           not null, primary key
#  organization_id  :bigint           not null
#  amount_cents     :integer          default(0), not null
#  amount_currency  :string           default("USD"), not null
#  transaction_type :string           not null
#  posted_at        :datetime         not null
#  description      :text
#  reference        :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  gift             :boolean          default(FALSE)
#

require "test_helper"

class OrganizationTransactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
