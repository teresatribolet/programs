module ApplicationHelper
	def hash_and_msg_generator(results, station)

		@message = ""
		@buses = {}

		results.each do |result|
			if result ["TIMEPOINT"].include? station
				#if the user's selection matching an upcoming bus stop in the api data, we will save that info in our hash
				@buses[result["ROUTE"]] = result["VEHICLE"]
			end
		end

		if @buses.count == 0
			#no buses have the user's station as their next stop.
			@message = "Sorry, it's gonna be awhile."
		elsif @buses.count == 1
			#There is one bus will be making the user's station it's next stop
			@message = "A bus is on the way!"
		elsif @buses.count > 1
			#There are two or more buses that will be making the user's station their next stop. 
			@message = "These buses will be coming soon:"
		else
			#just in case we end up with a negative number some how
			@message = "Oops...I think there was a slight error."
		end
	end
end