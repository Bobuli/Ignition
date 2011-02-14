class PeriodesController < ApplicationController
  # GET /periodes
  # GET /periodes.xml
  def index
    @periodes = Periode.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @periodes }
    end
  end

  # GET /periodes/1
  # GET /periodes/1.xml
  def show
    @periode = Periode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @periode }
    end
  end

  # GET /periodes/new
  # GET /periodes/new.xml
  def new
    @periode = Periode.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @periode }
    end
  end

  # GET /periodes/1/edit
  def edit
    @periode = Periode.find(params[:id])
  end

  # POST /periodes
  # POST /periodes.xml
  def create
    @periode = Periode.new(params[:periode])

    respond_to do |format|
      if @periode.save
        format.html { redirect_to(@periode, :notice => 'Periode was successfully created.') }
        format.xml  { render :xml => @periode, :status => :created, :location => @periode }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @periode.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /periodes/1
  # PUT /periodes/1.xml
  def update
    @periode = Periode.find(params[:id])

    respond_to do |format|
      if @periode.update_attributes(params[:periode])
        format.html { redirect_to(@periode, :notice => 'Periode was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @periode.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /periodes/1
  # DELETE /periodes/1.xml
  def destroy
    @periode = Periode.find(params[:id])
    @periode.destroy

    respond_to do |format|
      format.html { redirect_to(periodes_url) }
      format.xml  { head :ok }
    end
  end
  
  
  
  
  
 # def sort

 # 	periodeName = params[:periodeName]
 # 	newPeriodesArray = params[periodeName]
#	 params.inspect
#logger.debug "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaaa"
#logger.debug newPeriodesArray.inspect
  	
#  	@plan = Plan.find(params[:id])
    #@periode = @plan.find_periode_by_name(periodeName)  	
  	#tasksList = @periode.tasks
 # 	debug @plan
 #   render :nothing => true
 # end
  
   

    
#     if periodeName != nil && newPeriodesArray != nil
#      
 #      newPeriodesArray.each do |idx|
  #      task = Task.find(idx)
 #       if task.is_a?(Templatetask)
#          @clone = task.clone
#          @clone.type = "PlanTask"
  #        @periode.tasks << @clone
 #        
     #  Task doesn't belog the curent periode, but is still in the plan  
  #      elsif not tasksList.include?(task)
   #       @clone = task.dup
    #      @periode.tasks << @clone
#        end
 #    
  #     end
      
    
      
  #    @periode.tasks.each do |task|
 #       if params[periodeName].include?(task.id.to_s)
#          task.position = params[periodeName].index(task.id.to_s) + 1
    #      task.save         
   #     end
  #    end
 #   
#    end #periode isnt pool
    
  #  end  
 #   render :nothing => true
#  end
  
  
  def sort
    periodeName = params[:periodeName]
    if periodeName != "pool"

       
    end  
    render :nothing => true
  end

    
end
