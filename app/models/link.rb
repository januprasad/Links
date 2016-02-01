class Link < ActiveRecord::Base
	validates :url, :format => URI::regexp(%w(http https))
	validates :url, :presence => true
	validates :title, :presence => true
end
