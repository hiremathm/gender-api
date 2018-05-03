class Name < ActiveRecord::Base

	before_create :find_gender

	def find_gender
		name = self.name
		url ="https://gender-api.com/get?name=#{name}&key=AtuqEuWPyABdWYorNr"
		response = HTTParty.get(url)
		self.gender = response["gender"]
	end
end
