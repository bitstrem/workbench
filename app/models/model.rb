class Model < ActiveRecord::Base
  belongs_to :types
  belongs_to :brands
end
