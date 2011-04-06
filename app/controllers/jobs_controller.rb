class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find params[:id]
  end

  def new
    @job = Job.new
  end

  def edit
    @job = Job.find params[:id]
  end

  def create
    @job = Job.new params[:job]
    if @job.save
      redirect_to @job, :notice => 'Job was successfully created.'
    else
      render :action => 'new', :error => @job.errors.full_messages
    end
  end

  def update
    @job = Job.find params[:id]
    if @job.update_attributes params[:job]
      redirect_to @job, :notice => 'Job was successfully updated.'
    else
      render :action => 'edit', :error => @job.errors.full_messages
    end
  end

  def destroy
    @job = Job.find params[:id]
    @job.destroy
    redirect_to jobs_url
  end
end
