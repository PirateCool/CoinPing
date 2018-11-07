class CryptosController < ApplicationController

	def index
		@crypto = CryptoPrices.new.perform
		@crypt = params[:crypto_name]
		@cryptovalue = @crypto[@crypt]
	end

end
