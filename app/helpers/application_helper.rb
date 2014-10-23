module ApplicationHelper

  def age(d)
    years_between_dates(d, Date.today)
  end

  def years_between_dates(from, to)
    from, to = to, from if from > to
    ( to.year - from.year ) - ( to.yday < from.yday ? 1 : 0 )
  end

  def display_flash
    capture do
      flash.each do |key, value|
          concat( content_tag( :div, class: flash_class( key ) ) do
            concat( button_tag( type: 'button', class: 'close', data: { dismiss: 'alert' } ) do
              content_tag('span', '&times;'.html_safe, 'aria-hidden' => 'true')
            end )
            concat value
          end )
      end
    end
  end

  private

  def flash_class(level)
    'alert ' +
    case level.to_sym
      when :notice then 'alert-info'
      when :success then 'alert-success'
      when :error then 'alert-danger'
      when :warn then 'alert-danger'
      when :alert then 'alert-danger'
    end + ' alert-dismissable'
  end
end
