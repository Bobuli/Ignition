class TemplateTasksController < ApplicationController
  # GET /template_tasks
  # GET /template_tasks.xml
  def index
    @template_tasks = TemplateTask.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @template_tasks }
    end
  end

  # GET /template_tasks/1
  # GET /template_tasks/1.xml
  def show
    @template_task = TemplateTask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @template_task }
    end
  end

  # GET /template_tasks/new
  # GET /template_tasks/new.xml
  def new
    @template_task = TemplateTask.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @template_task }
    end
  end

  # GET /template_tasks/1/edit
  def edit
    @template_task = TemplateTask.find(params[:id])
  end

  # POST /template_tasks
  # POST /template_tasks.xml
  def create
    @template_task = TemplateTask.new(params[:template_task])

    respond_to do |format|
      if @template_task.save
        format.html { redirect_to(@template_task, :notice => 'Template task was successfully created.') }
        format.xml  { render :xml => @template_task, :status => :created, :location => @template_task }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @template_task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /template_tasks/1
  # PUT /template_tasks/1.xml
  def update
    @template_task = TemplateTask.find(params[:id])

    respond_to do |format|
      if @template_task.update_attributes(params[:template_task])
        format.html { redirect_to(@template_task, :notice => 'Template task was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @template_task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /template_tasks/1
  # DELETE /template_tasks/1.xml
  def destroy
    @template_task = TemplateTask.find(params[:id])
    @template_task.destroy

    respond_to do |format|
      format.html { redirect_to(template_tasks_url) }
      format.xml  { head :ok }
    end
  end
end
