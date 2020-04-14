class PfsController < ApplicationController

    def new
        @pf=Pf.new
    end
    def create
@pf=Pf.new(pf_params)
if @pf.save 
    flash[:notice]="pf is sucessfully completed"
redirect_to pf_path(@pf)
else 
    render 'new'
end
    end 

    def show
        @pf=Pf.find(params[:id])
    end
    def edit
        @pf=Pf.find(params[:id])
       end
    def update
        @pf=Pf.find(params[:id])
        if @pf.update(pf_params) 
            flash[:notice]="pf is sucessfully completed"
        redirect_to pf_path(@pf)
        else 
            render 'edit'
        end
    end
def index
    @pf=Pf.all
end
 private
  def pf_params
    params.require(:pf).permit(:name, :pfamount)
  end

end 