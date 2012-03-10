# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :servicelisting do
      title "MyString"
      description "MyText"
      availability "2012-03-11"
      buyPirce 1
      minBidPrice 1
      noOfGuest 1
      status 1
      hightestBid 1
    end
end