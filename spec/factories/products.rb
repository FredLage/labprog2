FactoryGirl.define do
  factory :product do
    name 'Cachecol azul com pompons'
    category 'Roupas'
    price '12.99'
    confection_time_in_hours '3.5'
    description 'Um cachecol azul com pompons muito bonito.'
    raw_materials { build_list :raw_material, 2 }
  end
end
