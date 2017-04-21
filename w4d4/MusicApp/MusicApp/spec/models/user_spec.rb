require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.new(email: 'string', password: 'password') }

  describe "model validations" do
    it { should validate_presence_of(:email) }
    it do
      should validate_presence_of(:password_digest).
        with_message("Password can't be blank")
      end
    it { should have_secure_password }
    it { should validate_length_of(:password).is_at_least(6) }
  end

  describe '#is_password?' do
    it 'should return true for a valid password' do
      expect(user.is_password?('password')).to be_truthy
    end
    it 'should return false for an invalid password' do
      expect(user.is_password?('pass')).to be_falsey
    end
  end

  describe '#reset_session_token' do
    it 'should give a new token' do
      old_token = user.session_token
      new_token = user.reset_session_token!
      expect(old_token).to_not eq(new_token)
    end
  end

  describe '::find_by_credentials' do
    before(:each) do
      user.save
    end
    it 'should return nil if there\'s no user' do
      expect(User.find_by_credentials('something','something')).to eq(nil)
    end
    it 'should return a user' do
      expect(User.find_by_credentials('string', 'password')).to be_a User
    end
  end
end
