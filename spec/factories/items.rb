# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    id                      "1"
    name                    "sample"
    price                   "1000"
    detail                  "explanation of item"
    condition               "good"
    lcategory_id            "1"
    mcategory_id            "2"
    scategory_id            "1"
  end
end
