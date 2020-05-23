class Contact < ApplicationRecord
	has_one_attached :avatar
	def full_name
		if self.first_name.present? && self.last_name.present?
			"#{self.first_name} #{self.last_name}"
		end
	end

	def my_avatar
		if self.avatar.attached?
			self.avatar.variant(resize_to_fill: [150, 150], quality: 100, gravity: "center")
		else
			"https://via.placeholder.com/150"
		end

	end
	has_many :phones, dependent: :destroy
	accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true

	has_many :emails, dependent: :destroy
	accepts_nested_attributes_for :emails, reject_if: :all_blank, allow_destroy: true

	has_many :addresses, dependent: :destroy
	accepts_nested_attributes_for :addresses, reject_if: :all_blank, allow_destroy: true


end
