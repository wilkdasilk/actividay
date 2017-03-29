require 'rails_helper'

RSpec.describe Challenge, type: :model do
  let(:user){User.new(name: "name", goals: "goals", born_on: DateTime.now-2.year, zip: 12345, email: "example@example.com", password: "123456")}
  let(:activity){Activity.new(title: "I'm awesome", description: "and tired!")}
  subject {
    described_class.new
  }

  describe "Associations" do

    it "belongs to a user" do
      user.challenges << subject
      expect(subject.user).to be user
    end

    it "belongs to an activity" do
      activity.challenges << subject
      expect(subject.activity).to be activity
    end


  end

  describe "Validations" do

    it "is valid with valid parameters" do
      subject.user = user
      subject.activity = activity
      expect(subject).to be_valid
    end

    it "is invalid without a user" do
      subject.user = nil
      expect(subject).to_not be_valid
    end

    it "is invalid without activity" do
      subject.activity = nil
      expect(subject).to_not be_valid
    end

  end

end
