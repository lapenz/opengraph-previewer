require "rails_helper"

RSpec.describe PreviewsHelper, :type => :helper do

  describe "invalid" do
    it 'empty URL' do
      expect( helper.getMetaTags("") ).to be_nil
    end

    it 'website without OpenGraph Tags' do
      expect( helper.getMetaTags("https://google.com") ).to be {}
    end

    it 'URL' do
      expect { helper.getMetaTags("https://googdasfsdfasfs234324343ddle.com") }.to raise_error(SocketError)
      expect { helper.getMetaTags("htsdfsdftps://goo43ddle.com") }.to raise_error(Errno::ENOENT)
    end
  end

  describe "valid" do
    let(:page_url) { file_fixture("youtubevideo.html") }
    let(:result) { Hash.new }

    it 'from HTML file' do
      result[:description] = "David earns his professional skydiving license to prepare for Ascension. Five hundred jumps and a few rough landings later, he’s ready to go. FOLLOW DAVID BL..."
      result[:image] = "https://i.ytimg.com/vi/U4HrkJkk3Hc/maxresdefault.jpg"
      result[:ogtype] = "video.other"
      result[:title] = "Jumping out of a plane 500 times"
      result[:url] = "https://www.youtube.com/watch?v=U4HrkJkk3Hc"

      expect(helper.getMetaTags(page_url)).to match(result)
    end

    it 'from Website' do
      # Dont check every information because it may change
      expect( helper.getMetaTags("https://www.youtube.com/watch?v=7ANvl8ITQ08") ).not_to be_empty
    end

  end
end