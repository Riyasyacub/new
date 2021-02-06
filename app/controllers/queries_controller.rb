class QueriesController < ApplicationController
    def show
        @query = Query.all
    end
    
    def create
        @query = Query.new
    end
    def after_create
        @query = Query.new(query_params)
        if @query.save
            FeedBackMailer.query_mail.deliver_now
            redirect_to action: :show
        else
            redirect_to controller: :pages, action: :education
        end
    end

    private

    def query_params
        params.require(:query).permit(:email, :number, :content )
    end

end
