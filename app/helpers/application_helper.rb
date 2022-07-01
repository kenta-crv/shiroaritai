module ApplicationHelper
  def default_meta_tags
    {
      site: "ファクタリング一括見積で最安値企業が見つかる！",
      title:"<%= yield(:title) | ファクタリング一括見積' %>",
      description: "ファクタリング一括見積は、ファクタリング会社の一括見積りサービスを提供しております。一括比較することで、最安値で売掛金の売却で資金の現金化をできる企業をカンタンに探すことが出来ます。",
      keywords: "自販機　設置,自動販売機　設置",
      canonical: request.original_url,  # 優先されるurl
      charset: "UTF-8",
      reverse: true,
      separator: '|',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('favicon.ico'),  rel: 'apple-touch-icon' },
      ],
	    canonical: request.original_url  # 優先されるurl

    }
end

end
