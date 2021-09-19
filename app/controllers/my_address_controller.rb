class MyAddressController < ApplicationController

    def index
        @addresses = Address.all
        p 'hoge'

        render "my_address"
    end
end
