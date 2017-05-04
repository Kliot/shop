require 'rails_helper'

RSpec.describe AuthProvider, type: :model do
  it { should have_many(:auth_providers).dependent(:destroy)}
end
