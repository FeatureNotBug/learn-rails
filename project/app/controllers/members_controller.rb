class MembersController < ApplicationController

  include ActiveModel::Conversion
  extend  ActiveModel::Naming

  def create
    @name = Member.new(params[:name])
    @pwd = Member.new(params[:pwd])
    if @member.save
      redirect_to @member
    else
      render "new"
    end
  end

  def new
    @member = Member.new
  end

  private

    def member_params
      params.require(:member).permit(:name, :pwd)
    end

  def show
    @member = Member.find(params[:name])
  end
end
