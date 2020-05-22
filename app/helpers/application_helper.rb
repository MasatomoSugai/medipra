module ApplicationHelper

  def default_meta_tags
    {
      site: '薬価計算サイトmedipra',
      reverse: true,
      separator: '|',
      charset: 'utf-8',
      description: 'おくすりの値段（薬価）が検索でき、簡単に小分けの値段が計算できるサービスです。AG（オーソライズドジェネリック）や同種薬の検索もできます。',
      keywords: 'メディプラ,薬価,計算,小分け,オーソライズド',
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
      card: 'summary', # または summary_large_image
      site: '@pharma_tech3'            # twitter ID
    }
  end

end
