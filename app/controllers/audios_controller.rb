class AudiosController < ApplicationController

  before_action :find_will

  def new
    @will.audios.each do |audio|
      if audio.heir == true
        audio.name == nil
        audio.destroy
      end
    end
    @audio = @will.audios.create
  end

  def show
    @audios = @will.audios
  end

  def update
    @audio = @will.audios.find(params[:id])
    if @audio.update(params_audio)
      redirect_to will_audio_path(@will)
    else
      render :new
    end
  end



  private

  def find_will
    @will = current_user.will
  end

  def find_audio
    @audio = @will.audios.find(parms[:id])
  end

  def params_audio
    params.require(:audio).permit(:heir, :name, :email, :content, :video)
  end

end
