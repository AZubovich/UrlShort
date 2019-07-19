class Link < ApplicationRecord
	validates :url, url: true
	before_create :generate_short_url
    
	def generate_short_url
		gen_url = ([*('a'..'z'),*('0'..'9'),*('A'..'Z')]).sample(6).join
		old_url = Link.where(short_url: gen_url).last
		if old_url.present?
			self.generate_short_url
		else
			self.short_url = gen_url
		end
	end
end
