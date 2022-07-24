module ApplicationHelper

  # meat_tagsの記述
  def default_meta_tags
    {
      site: 'まれまれアクアリウム',
      reverse: true,
      separator: '|',
      charset: "utf-8",
      og: defalut_og,
    }
  end
  
  private
  
  def defalut_og
    {
      title: :full_title,          # :full_title とすると、サイトに表示される <title> と全く同じものを表示できる
      description: :description,   # 上に同じ
      url: request.url,
    }
  end
  
 # twittercard というものがあるらしい

end
