class CharactersController < ApplicationController
  before_filter :require_user
  before_filter :find_user
  before_filter :find_character_by_id, :except => [:index, :new, :create]

  in_place_edit_for :character, :hair_color
  in_place_edit_for :character, :eye_color
  in_place_edit_for :character, :skin_color
  in_place_edit_for :character, :gender
  in_place_edit_for :character, :age
  in_place_edit_for :character, :height
  in_place_edit_for :character, :weight
  in_place_edit_for :character, :homeland

  # GET /characters
  # GET /characters.xml
  def index
    @characters = @user.characters.find :all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @characters }
    end
  end

  # GET /characters/1
  # GET /characters/1.xml
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @character }
    end
  end

  # GET /characters/combat/1
  # GET /characters/combat/1.xml
  def combat
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @character }
    end
  end

  # GET /characters/feats/1
  # GET /characters/feats/1.xml
  def feats
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @character }
    end
  end

  # GET /characters/inventory/1
  # GET /characters/inventory/1.xml
  def inventory
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @character }
    end
  end

  # GET /characters/skills/1
  # GET /characters/skills/1.xml
  def skills
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @character }
    end
  end

  # GET /characters/spells/1
  # GET /characters/spells/1.xml
  def spells
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @character }
    end
  end

  # GET /characters/new
  # GET /characters/new.xml
  def new
    @character = @user.build_character

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @character }
    end
  end

  # POST /characters
  # POST /characters.xml
  def create
    @character = @user.build_character(params[:character])

    respond_to do |format|
      if @character.save
        flash[:notice] = 'Character was successfully created.'
        format.html { redirect_to(@character) }
        format.xml  { render :xml => @character, :status => :created, :location => @character }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @character.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /characters/1
  # PUT /characters/1.xml
  def update
    respond_to do |format|
      if @character.update_attributes(params[:character])
        flash[:notice] = 'Character was successfully updated.'
        format.html { redirect_to(@character) }
        format.xml  { head :ok }
      else
        format.html { redirect_to(@character) }
        format.xml  { render :xml => @character.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.xml
  def destroy
    @character.destroy

    respond_to do |format|
      format.html { redirect_to(characters_url) }
      format.xml  { head :ok }
    end
  end
  
private

  def find_user
    @user = current_user
  end
  
  def find_character_by_id
    @character = @user.characters.find(params[:id])
  end

end
