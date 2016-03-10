class SeriesTemp < ActiveRecord::Base
     has_many :seasons
  accepts_nested_attributes_for :seasons, reject_if: :all_blank, allow_destroy: true
end
