class MailServersController < ApplicationController
  # GET /mail_servers
  # GET /mail_servers.json
  def index
    @mail_servers = MailServer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mail_servers }
    end
  end

  # GET /mail_servers/1
  # GET /mail_servers/1.json
  def show
    @mail_server = MailServer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mail_server }
    end
  end

  # GET /mail_servers/new
  # GET /mail_servers/new.json
  def new
    @mail_server = MailServer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mail_server }
    end
  end

  # GET /mail_servers/1/edit
  def edit
    @mail_server = MailServer.find(params[:id])
  end

  # POST /mail_servers
  # POST /mail_servers.json
  def create
    @mail_server = MailServer.new(params[:mail_server])

    respond_to do |format|
      if @mail_server.save
        format.html { redirect_to @mail_server, notice: 'Mail server was successfully created.' }
        format.json { render json: @mail_server, status: :created, location: @mail_server }
      else
        format.html { render action: "new" }
        format.json { render json: @mail_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mail_servers/1
  # PUT /mail_servers/1.json
  def update
    @mail_server = MailServer.find(params[:id])

    respond_to do |format|
      if @mail_server.update_attributes(params[:mail_server])
        format.html { redirect_to @mail_server, notice: 'Mail server was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mail_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mail_servers/1
  # DELETE /mail_servers/1.json
  def destroy
    @mail_server = MailServer.find(params[:id])
    @mail_server.destroy

    respond_to do |format|
      format.html { redirect_to mail_servers_url }
      format.json { head :no_content }
    end
  end
end
