class Lession < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  belongs_to :city
end
