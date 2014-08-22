class DealsController < ApplicationController
    def index
      @deals = HTTParty.get('http://api.popshops.com/v3/deals.json?account=etl4xy4bqez70idzyypjwyfxn&catalog=dxeqyv83t3vcox7iztg9ufg16')
      # Deal.title = popshops_deal['description']
      # Deal.description = popshops_deal['name']

      # popshops_deal = Deal.new

     #@deals = Deal.all
    end

    def show
     @deal = Deal.find(params[:id])
    end

    def new
     @deal = Deal.new
    end
end



# Psuedo
# Go get api deals
# apiDeals = api.httparty.get('')
#
# @apiDeals is some json object, map the data
# newDbDeal = model.deal()
# newDbDeal.name = @apiDeals[0].name
#
# Save to db
# newDbDeal.save();
#
# Get it again for the view
# viewDbDeals = model.getDbDeals()

# t.string :title
# t.text :description
# t.float :number
# t.decimal :price
