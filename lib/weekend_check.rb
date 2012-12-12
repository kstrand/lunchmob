require 'time'

def weekend?
	today = Time.now
 	today.sunday? || today.saturday? 	
end

def week_day?
	today = Time.now
 	!today.sunday? && !today.saturday? 	
end




# describe "#weekend?" do

# 	context "when today is weekend" do
# 		it "returns true" do
 
# 			Time.stub(:now).and_return('12-13-2012')
# 			weekend?.should be_true	
# 		end
# 	end

# 	context "when today is week day" do
# 		it "returns false" do
# 			stub(:today).and_return('weeend time object format')
# 			weekend?.should be_false	
# 		end
# 	end

# end




