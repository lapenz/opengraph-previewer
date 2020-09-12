require 'rails_helper'

RSpec.describe Preview, :type => :model do
  describe 'validations' do
    it{ is_expected.to validate_presence_of :url }
  end

end