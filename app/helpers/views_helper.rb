helpers do

  def print_nice_date(timestamp)
    timestamp.strftime('%B %e, %Y')
  end

  def to_date_format(date_string)
    Date.strptime(date_string,'%m/%d/%Y')
  end



end
