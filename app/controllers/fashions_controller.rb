class FashionsController < ApplicationController
  before_action :authenticate_user!
     def new
        @fashion = Fashion.new
      end
    
      def index
         @fashion = Fashion.all
      end

      def create
        fashion = Fashion.new(fashion_params)

        fashion.user_id = current_user.id 

        if fashion.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def fashion
        @fashion = Fashion.all
      end
    
      def word
        @fashion = Fashion.all
      end
    
      def news
        @fashion = Fashion.all
      end

      def food
        @fashion = Fashion.all
      end

      def music
        @fashion = Fashion.all
      end

      def movie
        @fashion = Fashion.all
      end

      def things
        @fashion = Fashion.all
      end

      def others
        @fashion = Fashion.all
      end

      def show
        @fashion = Fashion.find(params[:id])
        @comments = @fashion.comments
        @comment = Comment.new
      end

      def edit
        @fashion = Fashion.find(params[:id])
      end

      def update
        fashion = Fashion.find(params[:id])
        if fashion.update(fashion_params)
          redirect_to :action => "show", :id => fashion.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        fashion = Fashion.find(params[:id])
        fashion.destroy
        redirect_to action: :index
      end
     
      private
      def fashion_params
        params.require(:fashion).permit(:title, :genre, :about, :image, :category)
      end
    
    end
