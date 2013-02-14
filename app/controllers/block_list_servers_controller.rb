class BlockListServersController < ApplicationController
  # GET /block_list_servers
  # GET /block_list_servers.json
  def index
    @block_list_servers = BlockListServer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @block_list_servers }
    end
  end

  # GET /block_list_servers/1
  # GET /block_list_servers/1.json
  def show
    @block_list_server = BlockListServer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @block_list_server }
    end
  end

  # GET /block_list_servers/new
  # GET /block_list_servers/new.json
  def new
    @block_list_server = BlockListServer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @block_list_server }
    end
  end

  # GET /block_list_servers/1/edit
  def edit
    @block_list_server = BlockListServer.find(params[:id])
  end

  # POST /block_list_servers
  # POST /block_list_servers.json
  def create
    @block_list_server = BlockListServer.new(params[:block_list_server])

    respond_to do |format|
      if @block_list_server.save
        format.html { redirect_to @block_list_server, notice: 'Block list server was successfully created.' }
        format.json { render json: @block_list_server, status: :created, location: @block_list_server }
      else
        format.html { render action: "new" }
        format.json { render json: @block_list_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /block_list_servers/1
  # PUT /block_list_servers/1.json
  def update
    @block_list_server = BlockListServer.find(params[:id])

    respond_to do |format|
      if @block_list_server.update_attributes(params[:block_list_server])
        format.html { redirect_to @block_list_server, notice: 'Block list server was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @block_list_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /block_list_servers/1
  # DELETE /block_list_servers/1.json
  def destroy
    @block_list_server = BlockListServer.find(params[:id])
    @block_list_server.destroy

    respond_to do |format|
      format.html { redirect_to block_list_servers_url }
      format.json { head :no_content }
    end
  end
end
