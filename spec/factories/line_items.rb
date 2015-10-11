FactoryGirl.define do
  factory :line_item do
    product
    order
    quantity 3
  end
end
