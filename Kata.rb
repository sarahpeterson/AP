class RomanConverter
	def converter (number)
		result = ""
		@denominations.each do |deonomination|
			while number >= denomination [:value]
				number -= denomination [:value]
				result << denomination [:name]
			end
		end
		result
	end

	#Constructor/Initializer

	def initialize
		@denominations = []

		add_denomination("C", 100)
		add_denomination("XC", 90)
		add_denomination("L", 50)
		add_denomination("XL", 40)
		add_denoination("X", 10)
		add_denoination("IX", 9)
		add_denoination("V", 5)
		add_denoination("IV", 4)
		add_denoination("I", 1)
	end

	def add_denomination(name,value)
		@denomination << (name: name, value: value)
	end
end
