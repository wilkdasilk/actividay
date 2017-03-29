FactoryGirl.define do

  factory :challenge, :class => 'Challenge' do
    user
    activity
  end

end
