class Timer

	attr_accessor	:seconds

	def initialize
    @seconds = 0
  end    
  
  def time_string
    get_hours + ":" + get_minutes + ":" + get_seconds
  end

  private

  def get_hours
    hours = ( @seconds / 3600 ).to_i
    if hours < 10
      "0" + hours.to_s
    else
      hours.to_s
    end
  end

  def get_minutes
    minutes = ( @seconds / 60 ).to_i % 60

    if minutes < 10
      "0" + minutes.to_s
    else
      minutes.to_s
    end

  end

  def get_seconds
    seconds = @seconds % 60

    if seconds < 10
      "0" + seconds.to_s
    else
      seconds.to_s
    end
  end
end
