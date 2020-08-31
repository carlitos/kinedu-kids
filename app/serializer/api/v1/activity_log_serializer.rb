class Api::V1::ActivityLogSerializer < Api::V1::BaseSerializer
  attributes  :start_time, :duration, :assistant_name, :duration_info
  belongs_to :activity
  belongs_to :baby
  belongs_to :assistant
end
