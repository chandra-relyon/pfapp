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
 private
  def pf_params
    params.require(:pf).permit(:name, :pfamount)
  end

end 