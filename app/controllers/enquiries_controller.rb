class EnquiriesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  # before_action :set_enquiry, only: [:show, :edit, :update, :destroy]
  #11-1-2017 Devise geinstalleerd, nog verder afmaken!(oa onderstaande uncommenten)


  # GET /enquiries
  # GET /enquiries.json
  def index
   # @enquiries = Enquiry.all
    #Toont de enquirys van alleen de ingelogde gebruiker!

   if can? :manage, @enquiry
        #@enquiry  = Enquiry.all
        #@enquirie= Enquiry.all
        @tasks_grid = initialize_grid(Enquiry, order: 'id', per_page: 15)
   else
    #@enquirie = current_user.enquiries
    @user_id = @current_user.id
    @tasks_grid = initialize_grid(Enquiry, order: 'id', per_page: 15, conditions: ['enquiries.user_id = ?', 3])
   end

  end


  # GET /enquiries/1
  # GET /enquiries/1.json
  def show
    @enquiry = Enquiry.find(params[:id])
  end

  def print
    @enquiry = Enquiry.find(params[:id])
  end

  # GET /enquiries/new
  def new
    @enquiry = Enquiry.new
    @enquiry.enquirymeasures.build
       #@enquiry.measurements.build
   @enquiry.tools.build
    @enquiry.build_applicant
    @enquiry.signatures.build
    @enquiry.gasmeters.build
    @enquiry.controls.build

#@measurement = Measurement.new
       #@enquiry.enquirymeasures.build.build_measurement
  end

  # GET /enquiries/1/edit
  def edit
    @enquiry = Enquiry.find(params[:id])
  end

  # POST /enquiries
  # POST /enquiries.json
  def create
    @enquiry.user_id = current_user.id
    @enquiry = Enquiry.new(enquiry_params)
    #@enquiry.enquirymeasures.build


    respond_to do |format|
      if @enquiry.save
        format.html { redirect_to @enquiry, notice: 'Enquiry was successfully created.' }
        format.json { render :show, status: :created, location: @enquiry }
      else
        format.html { render :new }
        format.json { render json: @enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  #approved_enquiry_notification

  # PATCH/PUT /enquiries/1
  # PATCH/PUT /enquiries/1.json
  def update
    @enquiry = Enquiry.find(params[:id])
     respond_to do |format|
       if @enquiry.update_attributes(enquiry_params)
        format.html { redirect_to @enquiry, notice: 'Enquiry was successfully updated.' }
        format.json { render :show, status: :ok, location: @enquiry }
      else
        format.html { render :edit }
        format.json { render json: @enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enquiries/1
  # DELETE /enquiries/1.json
  def destroy
    @enquiry.destroy
    respond_to do |format|
      format.html { redirect_to enquiries_url, notice: 'Enquiry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_enquiry
      @enquiry = Enquiry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
  #25-1 MG alle attributes hadden ook :id
    def enquiry_params
      params.require(:enquiry).permit(:reference, :location, :description, :date, :amount, :approved, :status,
                                      enquirymeasures_attributes: [:id, :responsible, :done, :needed, :measurement_id, :measurementid, :user, :other, :type, :description],
                                      tools_attributes: [:id, :handtool, :other, :motorvehicle, :compressor, :ramp, :scaffold, :crane, :ladder, :generator, :tankladder],
                                      applicant_attributes: [:id, :name, :email, :contractor_id, :company],
                                      signatures_attributes: [:id, :date, :representative_id],
                                      gasmeters_attributes: [:id, :date, :tester, :signature, :oxigen, :o_needed, :o_continu, :explosives, :e_needed, :e_continu, :mat1, :mat1_needed, :mat1_continu, :mat2, :mat2_needed, :mat2_continu, :mat3, :mat3_needed, :mat3_continu],
                                      controls_attributes: [:id, :enquirycheck, :workspacecheck, :enquiry_id],
                                      roles_attributes: [:name],
                                      user_attributes: [:id, :name, :company]).merge(user_id: current_user.id)


    end



end
