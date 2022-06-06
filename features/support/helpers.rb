require "httparty"

module Helpers
    def delore (email)
        HTTParty.get("http://parodify.herokuapp.com/helpers?email=#{email}")

    end

end
