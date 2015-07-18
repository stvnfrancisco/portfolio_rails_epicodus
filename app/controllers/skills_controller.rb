class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render :index
  end

  def new
  @skill = Skill.new
  render :new
end

def create
  @skill = Skill.new(skill_params)
  if @skill.save
    redirect_to  skills_path
  else
    render :new
  end
end

    def show
    @skill = Skill.find(params[:id])
    render :show
  end
end

private
  def skill_params
    params.require(:skill).permit(:name)
  end
