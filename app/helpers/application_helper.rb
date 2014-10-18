module ApplicationHelper

  def age(d)
    years_between_dates(d, Date.today)
  end

  def years_between_dates(from, to)
    from, to = to, from if from > to
    ( to.year - from.year ) - ( to.yday < from.yday ? 1 : 0 )
  end
end
