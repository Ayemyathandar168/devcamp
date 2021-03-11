class PortfoliosController < ApplicationController
	def index
		@portfolios  = Portfolio.all
	end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

	def new
		@portfolio = Portfolio.new
    3.times {@portfolio.technologies.build }
	end

	  def create
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: "portfolio was successfully created." }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  	@portfolio = Portfolio.find(params[:id])
  end

    def update
    @portfolio = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: "Blog was successfully updated." }
        format.json { render :show, status: :ok, location: @portfolio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
     @portfolio = Portfolio.find(params[:id])
  end

  def destroy
    # Perform the lookup
    @portfolio = Portfolio.find(params[:id])

    # Destroy/delete the record
    @portfolio.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to portfolio_url, notice: "portfolio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def portfolio_params
      params.require(:portfolio).permit(:title, 
                                        :subtitile,
                                        :body,
                                        technologies_attributes: [:name]
                                        )  
  end


end
