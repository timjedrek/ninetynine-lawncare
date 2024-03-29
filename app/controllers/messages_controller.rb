class MessagesController < ApplicationController
  before_action :set_message, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!, except: [:new, :create, :update, :confirmation]
  invisible_captcha only: [:create], honeypot: :email_confirmation

  # GET /messages or /messages.json
  def index
    @messages = Message.all
  end

  def confirmation
  end

  # GET /messages/1 or /messages/1.json
  def show
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages or /messages.json
  def create
    @message = Message.new(message_params)
  
    #validation_text = @message.validation_text
  
    #if validation_text == helpers.answer_check(@message.key) && verify_recaptcha(model: @message)
    respond_to do |format|
      if @message.save #&& verify_recaptcha(model: @message)
        MessageMailer.new_message(@message).deliver
        format.html { redirect_to contact_confirmation_path, notice: @message.content}
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
    #else  
    #  respond_to do |format|
    #    format.html { redirect_to new_message_path, alert: "Error: You did not complete the captcha" }
    #  end
    #end
  end

  # PATCH/PUT /messages/1 or /messages/1.json
  #def update
  #  respond_to do |format|
  #    if @message.update(message_params) && verify_recaptcha(model: @message)
  #      # COMMENTING THIS OUT BELOW -- Weird error here.. So basically, if user fails the recaptcha, then it fails it and reloads page.. 
  #      # but then.. after they pass recaptcha, it takes them 
  #      # to the sign in page.  This is because it thinks it is updating it.  
  #      # So since for this app we are never updating messages, I copied the "new message" response below
  #      # Below is the original "update" code
  #      #format.html { redirect_to message_url(@message), notice: "Message was successfully updated." }
  #      #format.json { render :show, status: :ok, location: @message }
  #      MessageMailer.new_message(@message).deliver
  #      format.html { redirect_to contact_confirmation_path, notice: @message.content}
  #      format.json { render :show, status: :created, location: @message }
  #    else
  #      format.html { render :new, status: :unprocessable_entity }
  #      format.json { render json: @message.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  # DELETE /messages/1 or /messages/1.json
  def destroy
    @message.destroy

    respond_to do |format|
      format.html { redirect_to messages_url, alert: "Message was deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def message_params
      params.require(:message).permit(:name, :email, :phone, :content, :validation_text, :key)
    end
end
