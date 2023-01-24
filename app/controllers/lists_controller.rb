class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :destroy]

  # GET ---> /lists
  def index
    @lists = List.all
  end

  # GET ---> /lists/:id
  def show
    # empty because of before_action
  end

  # GET ---> /lists/new
  def new
    @list = List.new
  end

  # GET ---> /lists/:id/edit
  def edit
  # empty because of before_action
  end

  # PATCh ---> /lists/:id
  def updated
    if @list.update(list_params)
      redirect_to @list, notice: "List was successfully UPDATED"
    else
      render :edit
    end
  end

  # POST ---> /lists
  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to list_path(@list), notice: "A new list has been successfully CREATED"
    else
      render :new
    end
  end

  # DELETE ---> /lists/:id
  def destroy
    @list.destroy
    redirect_to list_path, status: :see_other, notice:"List has been successfully DELETED"
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
