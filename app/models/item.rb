class Item < ApplicationRecord
  has_many :purchase_dates, dependent: :destroy

  def self.recommendations
    @recommends = {}

      self.all.each do |item|
        comparable_dates = item.purchase_dates.last(2)
        first_date = comparable_dates[0].created_at # Most recent date
        second_date = comparable_dates[1].created_at # Second most recent date

        if ( date_check?(first_date, 0, 7) && date_check?(second_date, 8, 14) )
          @recommends[item.name] = item.price
        end
      end

    @recommends
  end

  private

  def self.date_check?(date, days_from, days_to)
    current_date = Time.now
    one_day = 86400      # day in seconds
    @qualify = false

    if((date <= (current_date - (one_day * days_from))) && (date >= (current_date - (one_day * days_to))))
      @qualify = true
    end
    return @qualify
  end

end
