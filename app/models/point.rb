class Point < ActiveRecord::Base
  belongs_to :customer

  validates_presence_of :point_total, :customer_id, :employee_id
  validates :point_total, :numericality => {:only_integer => true}
  validates_length_of :point_total, minimum: 1, maximum: 3
end
