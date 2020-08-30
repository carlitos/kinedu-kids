class Api::V1::BabyActivityLogsSerializer < Api::V1::BaseSerializer
  attributes :id, :baby_id, :activity_id, :assistant_name, :date_start, :date_end
end
