class Question < ApplicationRecord
  belongs_to :questioner, class_name: 'Politician'
  belongs_to :recipient, class_name: 'Politician'
end
