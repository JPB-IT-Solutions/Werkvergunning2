class EnquiriesController < ApplicationController
  before_action :set_enquiry, only: [:show, :edit, :update, :destroy]

  # GET /enquiries
  # GET /enquiries.json
  def index
    @enquiries = Enquiry.all
  end

  # GET /enquiries/1
  # GET /enquiries/1.json
  def show
  end

  # GET /enquiries/new
  def new
    @enquiry = Enquiry.new
    2.times { @enquiry.enquirymeasures.build }
    #@enquiry.measurements.build
    @enquiry.tools.build
    @enquiry.build_applicant
    @enquiry.signatures.build
    @enquiry.gasmeters.build
    #@enquiry.enquirymeasures.build.build_measurement
  end

  # GET /enquiries/1/edit
  def edit
  end

  # POST /enquiries
  # POST /enquiries.json
  def create
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

  # PATCH/PUT /enquiries/1
  # PATCH/PUT /enquiries/1.json
  def update
    respond_to do |format|
      if @enquiry.update(enquiry_params)
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
    def enquiry_params
      params.require(:enquiry).permit(:reference, :location, :description, :date, :amount, enquirymeasures_attributes: [:id, :responsible, :done, :needed, :measurement_id],
                                      tools_attributes: [:id, :handtool, :other, :motorvehicle, :compressor, :ramp, :scaffold, :crane, :ladder, :generator, :tankladder],
                                        applicant_attributes: [:id, :name, :email, :contractor_id],
                                      signatures_attributes: [:id, :date, :signature, :representative_id],
                                      gasmeters_attributes: [:id, :date, :tester, :signature, :oxigen, :o_needed, :o_continu, :explosives, :e_needed, :e_continu, :mat1, :mat1_needed, :mat1_continu, :mat2, :mat2_needed, :mat2_continu, :mat3, :mat3_needed, :mat3_continu])
    end
end
