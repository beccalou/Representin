require 'spec_helper'

#in the below, "it" is a method.  Contact is the class.  Contact create is a new instance of the Contact class.
describe User do
	describe "validations" do
		it { should validate_presence_of(:first_name) }
		it { should validate_presence_of(:last_name) }
		it { should validate_presence_of(:address)}
		it { should validate_presence_of(:email)}
	end

	describe "associations" do
		it { should have_many(:phrases) }
		it { should have_and_belong_to_many(:legislators) }
	end
end