class Load < ApplicationRecord
  require 'csv' 
  belongs_to :hold
  enum psend: [ :'sim', :'não']   
  
	def self.import(file)
		CSV.foreach(file.path, { encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do |row|
			if Load.exists?(load: row[:load])
				puts 'this load already exists'
			else
				Load.create! row.to_hash
			end
		end
	end  
  
  
  
  
  
end
