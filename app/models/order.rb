class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :Enterprise

  enum status: { 'waiting' => 0, 'in_production' => 5, 'canceled' => 10, 'ready' => 15, 'delivered' => 20 }
end
