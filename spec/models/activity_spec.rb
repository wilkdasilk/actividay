require 'rails_helper'

RSpec.describe Activity, type: :model do

  subject { described_class.new}

  it "is valid with valid attributes" do
    subject.title = "title"
    subject.description = "description"
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = ""
    subject.description = "description"
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject.title = "title"
    subject.description = ""
    expect(subject).to_not be_valid
  end

  it "is not valid with a title longer than 75 characters" do
    subject.title = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    subject.description = "description"
    expect(subject).to_not be_valid
  end


end
