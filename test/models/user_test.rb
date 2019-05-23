# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  roles                  :string           default([]), is an Array
#  skills                 :text             default([]), is an Array
#  first_name             :string           not null
#  last_name              :string           not null
#  company_name           :string
#  address_1              :string
#  address_2              :string
#  city                   :string
#  region                 :string
#  postal_code            :string
#  country                :string
#  us_resident            :boolean          default(FALSE)
#  api_access             :boolean          default(FALSE), not null
#  api_key                :string
#  bio                    :text
#  website_url            :string
#  github_username        :string
#  twitter_username       :string
#  linkedin_username      :string
#  paypal_email           :string
#  email                  :string           not null
#  encrypted_password     :string           not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  invitation_token       :string
#  invitation_created_at  :datetime
#  invitation_sent_at     :datetime
#  invitation_accepted_at :datetime
#  invitation_limit       :integer
#  invited_by_type        :string
#  invited_by_id          :bigint
#  invitations_count      :integer          default(0)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  legacy_id              :uuid
#  organization_id        :bigint
#  stripe_customer_id     :string
#  referring_user_id      :bigint
#  referral_code          :string
#  referral_click_count   :integer          default(0)
#  hubspot_deal_vid       :bigint
#  hubspot_contact_vid    :bigint
#  hubspot_company_vid    :bigint
#  utm_source             :string
#  utm_medium             :string
#  utm_campaign           :string
#  utm_term               :string
#  utm_content            :string
#  status                 :string           default("active")
#

require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "roles can be set" do
    subject = User.new
    subject.roles = ["admin"]
    assert_not subject.valid?
    puts subject.errors[:roles]
    # assert subject.errors[:roles].empty?
  end
end
