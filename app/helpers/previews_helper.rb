require 'nokogiri'
require 'open-uri'

module PreviewsHelper
  def getMetaTags(url)
    return nil if url.blank?
    document = getDocument(url)
    return nil if document.nil?

    extractData(document)
  end

  private

  def extractData(document)
    result = Hash.new
    result[:title] = document.at('meta[property="og:title"]')['content'] if document.at('meta[property="og:title"]')
    result[:ogtype] = document.at('meta[property="og:type"]')['content'] if document.at('meta[property="og:type"]')
    result[:url] = document.at('meta[property="og:url"]')['content'] if document.at('meta[property="og:url"]')
    result[:image] = document.at('meta[property="og:image"]')['content'] if document.at('meta[property="og:image"]')
    result[:description] = document.at('meta[property="og:description"]')['content'] if document.at('meta[property="og:description"]')

    result
  end

  def getDocument(url)
    document = Nokogiri::HTML(URI.open(url).read)
    document.encoding = 'UTF-8'
    document
  end


end
