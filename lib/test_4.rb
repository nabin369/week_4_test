class ArrayReloded < Array

	def injection(arg = nil)
		i = 0

		if arg == nil
			value = self.first
			self.delete_at(0)
		else
			value = arg
		end

		until i == self.length
			index_value = self[i]
		 	value = yield value, index_value

		 	i += 1
		end
		value
	end

end