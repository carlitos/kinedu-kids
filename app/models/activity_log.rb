class ActivityLog < ApplicationRecord

  belongs_to :activity
  belongs_to :baby
  belongs_to :assistant

  after_update :compute_duration

  scope :baby_activities, -> (baby_id) do
    where('baby_id = ?', baby_id )
  end

  def date_start
    start_time.strftime('%Y/%m/%d')
  end

  def date_end
    stop_time.strftime('%Y/%m/%d')
  end

  def assistant_name
    assistant.name
  end


  def compute_duration
      self.duration = ( self.stop_time - self.start_time) / 1.minutes
  end


end
