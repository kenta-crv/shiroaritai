module ApplicationHelper
  def default_meta_tags
    {
      site: "",
      title:"",
      description: "ファクタリング一括見積『ファクタリンク』は、完全無料で最安値のファクタリング会社を見つける事ができます。",
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
