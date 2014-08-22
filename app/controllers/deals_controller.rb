class DealsController < ApplicationController
    def index
      deal = HTTParty.get('http://api.popshops.com/v3/deals.json?account=etl4xy4bqez70idzyypjwyfxn&catalog=dxeqyv83t3vcox7iztg9ufg16')
      @description = deal['results']['deals']['deal'][0]['description']
      @name = deal['results']['deals']['deal'][0]['name']
      @restrictions = deal['results']['deals']['deal'][0]['restrictions']
    end


    def show
     @deal = Deal.find(params[:id])
    end


    def new
     @deal = Deal.new
    end
end
