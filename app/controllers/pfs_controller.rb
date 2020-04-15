class PfsController < ApplicationController
before_action :set_pf, only:[:edit, :update, :show, :destroy]
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
    
 end


    def edit
     
       end
    def update
    
        if @pf.update(pf_params) 
            flash[:notice]="pf is sucessfully completed"
        redirect_to pf_path(@pf)
        else 
            render 'edit'
        end
    end
def index
    @pfs=Pf.all
end
def destroy
   
    @pf.destroy
    flash[:notice]="PF succcessfully deleted"
    redirect_to pfs_path
    
end
 private
 def set_pf
    @pf=Pf.find(params[:id]) 
 end
  def pf_params
    params.require(:pf).permit(:name, :pfamount)
  end

end 