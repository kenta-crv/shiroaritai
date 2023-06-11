# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://factolink.jp/"

SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.create do
add "/" , changefreq: 'daily', priority: 1.0

  add columns_path, :priority => 1.0, :changefreq => 'daily'
  Column.find_each do |column|
    add column_path(column), :lastmod => column.updated_at
  end
end
