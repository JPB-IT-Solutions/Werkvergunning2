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
        @enquiry  = Enquiry.all.paginate(:page => params[:page], per_page: 10)
        @enquirie= Enquiry.all.paginate(:page => params[:page], per_page: 10).order(date: :desc)

   else
    @enquirie = current_user.enquiries.paginate(:page => params[:page], per_page: 10).order(date: :desc)
   end

  end


  # GET /enquiries/1
  # GET /enquiries/1.json
  def show
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
    #nog op kunnen slaan!!!! 1-01-17 Marco
    @enquiry = Enquiry.find(params[:id])
    @enquiry.enquirymeasures.build

    @enquiry.tools.build
    @enquiry.build_applicant
    @enquiry.signatures.build
   @enquiry.gasmeters.build
#test voor mailen na approved, 31-1-17
    #if @enquiry.approved == '1'
     # ModelMailer.enquiry_approved_mailer(self).deliver
#end
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
      params.require(:enquiry).permit(:reference, :location, :description, :date, :amount, :approved, enquirymeasures_attributes: [:id, :responsible, :done, :needed, :measurement_id, :user],
                                      tools_attributes: [:id, :handtool, :other, :motorvehicle, :compressor, :ramp, :scaffold, :crane, :ladder, :generator, :tankladder],
                                        applicant_attributes: [:id, :name, :email, :contractor_id, :pin],
                                      signatures_attributes: [:id, :date, :pin, :representative_id],
                                      gasmeters_attributes: [:id, :date, :tester, :signature, :oxigen, :o_needed, :o_continu, :explosives, :e_needed, :e_continu, :mat1, :mat1_needed, :mat1_continu, :mat2, :mat2_needed, :mat2_continu, :mat3, :mat3_needed, :mat3_continu],
                                      controls_attributes: [:id, :enquirycheck, :workspacecheck, :enquiry_id],
                                      user_attributes: [:id, :name, :company]).merge(user_id: current_user.id)


    end



end
