require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new(name: "name", goals: "goals", born_on: DateTime.now-2.year, zip: 12345, email: "example@example.com", password: "123456")}

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without goals" do
    subject.goals = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with goals longer than 255 characters" do
    subject.goals = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    expect(subject).to_not be_valid
  end

  it "is not valid without born_on" do
    subject.born_on = "nil"
    expect(subject).to_not be_valid
  end

  it "is not valid with born_on string" do
    subject.born_on = "test"
    expect(subject).to_not be_valid
  end

  it "is not valid with born_on future" do
    subject.born_on = DateTime.now+2.year
    expect(subject).to_not be_valid
  end

  it "is not valid without zip" do
    subject.zip = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without e-mail" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a string without an @ symbol" do
    subject.email = "test"
    expect(subject).to_not be_valid
  end

  it "is not valid with a string without an ." do
    subject.email = "test@test"
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a short password" do
    subject.password = "25"
    expect(subject).to_not be_valid
  end

  it "calculates age" do
    subject.born_on = DateTime.now
    expect(subject.age).instance_of? Date
  end

end
