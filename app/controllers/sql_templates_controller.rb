class SqlTemplatesController < ApplicationController
  before_action :set_sql_template, only: %i[ show edit update destroy ]

  # GET /sql_templates or /sql_templates.json
  def index
    @sql_templates = SqlTemplate.all
  end

  # GET /sql_templates/1 or /sql_templates/1.json
  def show
  end

  # GET /sql_templates/new
  def new
    @sql_template = SqlTemplate.new
  end

  # GET /sql_templates/1/edit
  def edit
  end

  # POST /sql_templates or /sql_templates.json
  def create
    @sql_template = SqlTemplate.new(sql_template_params)

    respond_to do |format|
      if @sql_template.save
        format.html { redirect_to @sql_template, notice: "Sql template was successfully created." }
        format.json { render :show, status: :created, location: @sql_template }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sql_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sql_templates/1 or /sql_templates/1.json
  def update
    respond_to do |format|
      if @sql_template.update(sql_template_params)
        format.html { redirect_to @sql_template, notice: "Sql template was successfully updated." }
        format.json { render :show, status: :ok, location: @sql_template }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sql_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sql_templates/1 or /sql_templates/1.json
  def destroy
    @sql_template.destroy!

    respond_to do |format|
      format.html { redirect_to sql_templates_path, status: :see_other, notice: "Sql template was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sql_template
      @sql_template = SqlTemplate.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def sql_template_params
      params.expect(sql_template: [ :body, :path, :format, :locale, :handler, :partial ])
    end
end
