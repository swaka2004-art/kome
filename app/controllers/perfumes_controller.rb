class PerfumesController < ApplicationController
    def index
    end

    def new
        @perfume = Perfume.new
    end

    def show
        @perfume = Perfume.find(params[:id])
    end



    def create
        perfume = Perfume.new(perfume_params)
        if perfume.save
            flash[:notice] = "診断が完了しました"
            redirect_to perfume_path(perfume.id)
        else
            redirect_to :action => "new"
        end
    end

    def hinsyuitirann
    end

    def takikata
    end

    def top
    end
  
  private
    def perfume_params
        params.require(:perfume).permit(:question1, :question2, :question3)
    end
end
