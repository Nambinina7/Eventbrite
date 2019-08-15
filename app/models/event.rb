class Event < ApplicationRecord
	belongs_to :admin, class_name: 'User'
  has_many :attendances
	has_many :participants, class_name: 'User', through: :attendances

  validates :start_date, presence: true
  validates :duration, presence: true
  validates :title, presence: true, length: { in: 5..140 }
  validates :description, presence: true, length: { in: 20..1000 }
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 1000 }
  validates :location, presence: true

  def end_date
    self.start_date + self.duration * 60
	end
  	
  	# def validate_price?
  	# 	if price.present?
  	# 		if price >= 1 && price <= 1000
  	# 			return true
  	# 		else
  	# 			errors.add(:price, "errors ! min 1/max 1000")
  	# 		end
  	# 	end
  	# end

  	# def validate_duration?
  	# 	if duration.present?
  	# 		if duration % 5 == 0
  	# 			return true
  	# 		else
  	# 			errors.add(:duration, "not valide please retry")
  	# 		end
  	# 	end
  	# end

  	# def already_past?
  	# 	if start_date < DateTime.now
  	# 		errors.add(:start_date, "already_past")
  	# 	end
  	# end
end
