require 'rails_helper'

RSpec.describe UserAddress, type: :model do
  it { belong_to(:user) }
  it { belong_to(:address) }
end
