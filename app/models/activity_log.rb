class ActivityLog < ApplicationRecord

  belongs_to :activity
  belongs_to :baby
  belongs_to :assistant

  after_update :compute_duration

  before_validation :stop_time_after_start_time
  #  validates :start_time, presence: true, timeliness: { type: :datetime }

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

  def duration_info
    if duration == nil
      '*'
    else
      "#{duration} min"
    end
  end

  private

  def stop_time_after_start_time

    if stop_time < start_time
      errors.add(:stop_time, "must be after the start date")
    end

 end


end
