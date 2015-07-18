class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render :index
  end

  def new
  @skill = Skill.new
  render :new
end  

    def show
    @skill = Skill.find(params[:id])
    render :show
  end
end
