require 'rails_helper'

describe User do

  before  { @user = FactoryGirl.build(:user) }
  subject { @user }

  describe "validations" do
    it { should be_valid }

    FactoryGirl.attributes_for(:user).each do |attr, val|
      describe "when #{attr} is not present" do
        before { @user.send("#{attr}=", nil) }
        it { should_not be_valid }
      end
    end
  end

end
