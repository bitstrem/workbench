class PartCompaniesController < ApplicationController
  # GET /part_companies
  # GET /part_companies.json
  def index
    @part_companies = PartCompany.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @part_companies }
    end
  end

  # GET /part_companies/1
  # GET /part_companies/1.json
  def show
    @part_company = PartCompany.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @part_company }
    end
  end

  # GET /part_companies/new
  # GET /part_companies/new.json
  def new
    @part_company = PartCompany.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @part_company }
    end
  end

  # GET /part_companies/1/edit
  def edit
    @part_company = PartCompany.find(params[:id])
  end

  # POST /part_companies
  # POST /part_companies.json
  def create
    @part_company = PartCompany.new(params[:part_company])

    respond_to do |format|
      if @part_company.save
        format.html { redirect_to @part_company, notice: 'Part company was successfully created.' }
        format.json { render json: @part_company, status: :created, location: @part_company }
      else
        format.html { render action: "new" }
        format.json { render json: @part_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /part_companies/1
  # PUT /part_companies/1.json
  def update
    @part_company = PartCompany.find(params[:id])

    respond_to do |format|
      if @part_company.update_attributes(params[:part_company])
        format.html { redirect_to @part_company, notice: 'Part company was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @part_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part_companies/1
  # DELETE /part_companies/1.json
  def destroy
    @part_company = PartCompany.find(params[:id])
    @part_company.destroy

    respond_to do |format|
      format.html { redirect_to part_companies_url }
      format.json { head :ok }
    end
  end
end
