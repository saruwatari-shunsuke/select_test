class WelcomeController < ApplicationController
  def home
    @genres = Genre.all.map{|o| [o.name, o.id]}
  end

  def create
    p "**************begin******************"
    p 'パラメーターの出力'
    p params
    p '必要部分を配列で取り出す'
    p result = params[:genre]['name']
    result.delete('')
    p "邪魔な最初の空文字要素を外すと"
    p result
    p "***************end*******************"
    redirect_to root_path
  end
end
