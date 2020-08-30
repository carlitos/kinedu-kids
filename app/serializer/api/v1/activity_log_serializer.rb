class Api::V1::ActivityLogSerializer < Api::V1::BaseSerializer
  attributes :id, :baby_id, :assistant_id, :start_time, :stop_time, :activity_id, :duration, :comments
end
