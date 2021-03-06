FactoryGirl.define do
  factory :user do
    name "SarahMustafa"
    email "sarah@gmail.com"
    username "sarahmustafa"
    password "12345"
    password_confirmation "12345"
    reward_points 100
    billing_address "Here"
    creditcard_num 1234567
    creditcard_type "MasterCard"
    security_num 1234
  end
  
  factory :movie do
    title "transformers 7"
    duration 110
    summary "It's amazing!"
    genre "scinece fiction"
    actors "Shamma Al hetmi, Madhurima Datta, Sarah Mustafa"
  end
  
  factory :cinema do
    name "Grand cinecenter"
    location "City Center Doha"
  end
end