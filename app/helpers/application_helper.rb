module ApplicationHelper

  def default_meta_tags
    {
      site: '薬価検索サイトmedipra',
      reverse: true,
      separator: '|',
      charset: 'utf-8',
      description: 'おくすりの値段（薬価）が検索できるサービスです。AG（オーソライズドジェネリック）や同種薬の検索もできます。',
      keywords: '薬価,おくすり,オーソライズド,ジェネリック',
      canonical: request.original_url,
      og: defalut_og,
      twitter: default_twitter_card
    }
  end
  
  private
  
  def defalut_og
    {
      title: :full_title,          # :full_title とすると、サイトに表示される <title> と全く同じものを表示できる
      description: :description,   # 上に同じ
      url: request.url,
      # image: 'https://example.com/hoge.png'
    }
  end
  
  def default_twitter_card
    {
      card: 'summary_large_image', # または summary
      site: '@pharma_tech3'            # twitter ID
    }
  end

end
