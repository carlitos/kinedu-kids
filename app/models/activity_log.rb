class ActivityLog < ApplicationRecord

  belongs_to :activity
  belongs_to :baby
  belongs_to :assistant

end
