class Machine < ApplicationRecord
  belongs_to :enterprise

  enum status: { 'available' => 0, 'under_maintenance' => 5 }
end
