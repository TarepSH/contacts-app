class ContactsInfosController < ApplicationController
  before_action :set_contacts_info, only: [:show, :edit, :update, :destroy]

  # GET /contacts_infos
  # GET /contacts_infos.json
  def index
    @contacts_infos = ContactsInfo.all
  end

  # GET /contacts_infos/1
  # GET /contacts_infos/1.json
  def show
  end

  # GET /contacts_infos/new
  def new
    @contacts_info = ContactsInfo.new
  end

  # GET /contacts_infos/1/edit
  def edit
  end

  # POST /contacts_infos
  # POST /contacts_infos.json
  def create
    @contacts_info = ContactsInfo.new(contacts_info_params)

    respond_to do |format|
      if @contacts_info.save
        format.html { redirect_to @contacts_info, notice: 'Contacts info was successfully created.' }
        format.json { render :show, status: :created, location: @contacts_info }
      else
        format.html { render :new }
        format.json { render json: @contacts_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts_infos/1
  # PATCH/PUT /contacts_infos/1.json
  def update
    respond_to do |format|
      if @contacts_info.update(contacts_info_params)
        format.html { redirect_to @contacts_info, notice: 'Contacts info was successfully updated.' }
        format.json { render :show, status: :ok, location: @contacts_info }
      else
        format.html { render :edit }
        format.json { render json: @contacts_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts_infos/1
  # DELETE /contacts_infos/1.json
  def destroy
    @contacts_info.destroy
    respond_to do |format|
      format.html { redirect_to contacts_infos_url, notice: 'Contacts info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contacts_info
      @contacts_info = ContactsInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contacts_info_params
      params.require(:contacts_info).permit(:name, :, :phone, :address, :compay, :birthday)
    end
end
