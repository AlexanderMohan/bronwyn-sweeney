# frozen_string_literal: true

class ContactsController < ApplicationController
  before_action :set_contact, only: %i[show edit update destroy]

  # GET /contacts or /contacts.json
  def index
    @contacts = Contact.all
  end

  # GET /contacts/1 or /contacts/1.json
  def show; end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit; end

  # POST /contacts or /contacts.json
  def create
    @contact = Contact.new(contact_params)

    check = verify_recaptcha action: 'contact', minimum_score: 0.7, secret_key: Rails.application.credentials.recaptcha_v3[:secret_key]

    respond_to do |format|
      if check && @contact.save
        format.html { redirect_to contact_success_url, notice: 'Your message was sent successfully.' }
        format.json { render :show, status: :created, location: @contact }
        helpers.email_notification_override_reply_to("Contact form submitted by: #{@contact.name}",
          "The message entered by the user follows:<br/>#{@contact.message}<br/>
          You can reply to this email as normal and all replies will be sent to the user(#{@contact.email})", 
          @contact.email, @contact.name)
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1 or /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to contact_success_url, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1 or /contacts/1.json
  def destroy
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def success; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_contact
    @contact = Contact.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
