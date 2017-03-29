FactoryGirl.define do

  factory :user, :class => 'User' do
    name 'test'
    born_on DateTime.new(2000, 1, 1)
    goals 'test'
    email
    zip '94619'
    password '12345678'
    password_confirmation '12345678'
  end

end
