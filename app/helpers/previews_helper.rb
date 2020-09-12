require 'nokogiri'
require 'open-uri'

module PreviewsHelper
  def getMetaTags(url)
    document = Nokogiri::HTML(URI.open(URI.parse(url)).read)
    document.encoding = 'UTF-8'
    result = Hash.new
    result[:title] = document.at('meta[property="og:title"]')['content']
    result[:ogtype] = document.at('meta[property="og:type"]')['content']
    result[:url] = document.at('meta[property="og:url"]')['content']
    result[:image] = document.at('meta[property="og:image"]')['content']
    result[:description] = document.at('meta[property="og:description"]')['content']

    result
  end
end
