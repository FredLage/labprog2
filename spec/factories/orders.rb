FactoryGirl.define do
  factory :order do
    price 10.1
    status "Aguardando Pagamento"
    type_of_payment 'Dinheiro'
    client
  end
end
