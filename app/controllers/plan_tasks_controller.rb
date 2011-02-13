class PlanTasksController < ApplicationController
  # GET /plan_tasks
  # GET /plan_tasks.xml
  def index
    @plan_tasks = PlanTask.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @plan_tasks }
    end
  end

  # GET /plan_tasks/1
  # GET /plan_tasks/1.xml
  def show
    @plan_task = PlanTask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @plan_task }
    end
  end

  # GET /plan_tasks/new
  # GET /plan_tasks/new.xml
  def new
    @plan_task = PlanTask.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @plan_task }
    end
  end

  # GET /plan_tasks/1/edit
  def edit
    @plan_task = PlanTask.find(params[:id])
  end

  # POST /plan_tasks
  # POST /plan_tasks.xml
  def create
    @plan_task = PlanTask.new(params[:plan_task])

    respond_to do |format|
      if @plan_task.save
        format.html { redirect_to(@plan_task, :notice => 'Plan task was successfully created.') }
        format.xml  { render :xml => @plan_task, :status => :created, :location => @plan_task }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @plan_task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /plan_tasks/1
  # PUT /plan_tasks/1.xml
  def update
    @plan_task = PlanTask.find(params[:id])

    respond_to do |format|
      if @plan_task.update_attributes(params[:plan_task])
        format.html { redirect_to(@plan_task, :notice => 'Plan task was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @plan_task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_tasks/1
  # DELETE /plan_tasks/1.xml
  def destroy
    @plan_task = PlanTask.find(params[:id])
    @plan_task.destroy

    respond_to do |format|
      format.html { redirect_to(plan_tasks_url) }
      format.xml  { head :ok }
    end
  end
end
