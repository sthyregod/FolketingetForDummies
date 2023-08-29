class Politician < ApplicationRecord
  # TODO: Add party

  def full_name
    "#{firstname} #{lastname}"
  end
end
