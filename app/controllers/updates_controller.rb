class UpdatesController<ApplicationController

  def index
    @updates = Update.all
  end

  def new
    @update = Update.new
  end

  def create
    @update = Update.new(params.require(:update).permit(:status, :user, :likes))
    if @update.save
      redirect_to update_path(@update), notice: "Successful Update"
    else
      render :new
    end
  end


  def show
    @update = Update.find(params[:id])
  end

  def edit
    @update = Update.find(params[:id])
  end

  def update
    @update = Update.find(params[:id])
      if @update.update(params.require(:update).permit(:status, :user, :likes))
        redirect_to update_path(@update), notice: "Successful Update"
      else render :edit
    end 
  end

  def destroy
    @update = Update.find(params[:id])
    @update.destroy
    redirect_to updates_path, notice: "Successfully Deleted"
  end


end
