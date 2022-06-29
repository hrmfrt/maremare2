module ApplicationHelper

  def page_title
    title = "まれまれアクアリウム" 
    title = @page_title + " | " + title if @page_title
    title
  end

end
