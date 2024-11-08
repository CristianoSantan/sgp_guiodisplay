class ProductionOrder < ApplicationRecord
  belongs_to :order
  belongs_to :machine

  enum status: { 'in_progress' => 0, 'completed' => 5, 'paused' => 10 }
end
