class DateTimeSpan

  attr_writer :format, :separator

  class << self
    
    attr_accessor :default_format, :default_separator
    
  end
  
  def initialize(start_dt, end_dt, format = nil, separator = nil)
    raise ArgumentError("Start date/time must be before end date/time") if end_dt < start_dt
    @start_dt, @end_dt = start_dt, end_dt
    @format = format || self.class::default_format
    @separator = separator || self.class::default_separator
  end
  
  def to_s(format = nil, separator = nil)
    @format = format unless format.nil?
    @separator = separator unless separator.nil?
    from = ''
    to = ''
    differing = false
    parts.reverse.each do |part|
      if part[0, 1]
        from_part = @start_dt.strftime(part)
        to_part = @end_dt.strftime(part)
        if from_part != to_part || differing
          differing = true
          from.prepend(from_part)
        end
        to.prepend(to_part)
      else
        to.prepend(part)
        from.prepend(part) if differing
      end
    end
    "#{from}#{@separator}#{to}"
  end    
  
  def parts
    @format.scan(/(%\w|[^%])/).flatten
  end
  
end

DateTimeSpan.default_format = "%A %e %B %Y"
DateTimeSpan.default_separator = ' - '

class String
  
  def prepend(str)
    insert(0, str)
  end
  
end
