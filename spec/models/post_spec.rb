require 'rails_helper'

RSpec.describe Post, type: :model do

  subject {
    described_class.new
  }

  describe "Associations" do

    it "belongs to a challenge" do
      user = User.new(name: "name", goals: "goals", born_on: DateTime.now-2.year, zip: 12345, email: "example@example.com", password: "123456")
      user.save
      activity = Activity.new(title: "I'm awesome", description: "and tired!")
      activity.save
      challenge = Challenge.new
      challenge.user = user
      challenge.activity = activity
      challenge.save
      subject.challenge = challenge
      subject.title = "title"
      subject.content = "content"
      subject.save
      expect(subject.challenge).to be challenge
    end


  end

  describe "Validations" do

    it "has a title" do
      user = User.new(name: "name", goals: "goals", born_on: DateTime.now-2.year, zip: 12345, email: "example@example.com", password: "123456")
      user.save
      activity = Activity.new(title: "I'm awesome", description: "and tired!")
      activity.save
      challenge = Challenge.new
      challenge.user = user
      challenge.activity = activity
      challenge.save
      subject.challenge = challenge
      subject.title = "title"
      subject.content = "content"
      subject.save
      expect(subject).to be_valid
    end

    it "invalid without title" do
      user = User.new(name: "name", goals: "goals", born_on: DateTime.now-2.year, zip: 12345, email: "example@example.com", password: "123456")
      user.save
      activity = Activity.new(title: "I'm awesome", description: "and tired!")
      activity.save
      challenge = Challenge.new
      challenge.user = user
      challenge.activity = activity
      challenge.save
      subject.challenge = challenge
      subject.title = nil
      subject.content = "content"
      subject.save
      expect(subject).to_not be_valid
    end

    it "invalid without content" do
      user = User.new(name: "name", goals: "goals", born_on: DateTime.now-2.year, zip: 12345, email: "example@example.com", password: "123456")
      user.save
      activity = Activity.new(title: "I'm awesome", description: "and tired!")
      activity.save
      challenge = Challenge.new
      challenge.user = user
      challenge.activity = activity
      challenge.save
      subject.challenge = challenge
      subject.title = "title"
      subject.content = nil
      subject.save
      expect(subject).to_not be_valid
    end

    it "invalid without content and title" do
      user = User.new(name: "name", goals: "goals", born_on: DateTime.now-2.year, zip: 12345, email: "example@example.com", password: "123456")
      user.save
      activity = Activity.new(title: "I'm awesome", description: "and tired!")
      activity.save
      challenge = Challenge.new
      challenge.user = user
      challenge.activity = activity
      challenge.save
      subject.challenge = challenge
      subject.title = nil
      subject.content = nil
      subject.save
      expect(subject).to_not be_valid
    end

    it "is invalid if title is greater than 75" do
      user = User.new(name: "name", goals: "goals", born_on: DateTime.now-2.year, zip: 12345, email: "example@example.com", password: "123456")
      user.save
      activity = Activity.new(title: "I'm awesome", description: "and tired!")
      activity.save
      challenge = Challenge.new
      challenge.user = user
      challenge.activity = activity
      challenge.save
      subject.challenge = challenge
      subject.title = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
      subject.content = "content"
      subject.save
      subject.challenge = challenge
      expect(subject).to_not be_valid
    end

    it "is invalid if content is greater than 1000" do
      user = User.new(name: "name", goals: "goals", born_on: DateTime.now-2.year, zip: 12345, email: "example@example.com", password: "123456")
      user.save
      activity = Activity.new(title: "I'm awesome", description: "and tired!")
      activity.save
      challenge = Challenge.new
      challenge.user = user
      challenge.activity = activity
      challenge.save
      subject.challenge = challenge
      subject.title = "Title"
      subject.content = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
      subject.save
      subject.challenge = challenge
      expect(subject).to_not be_valid
    end

  end


end
