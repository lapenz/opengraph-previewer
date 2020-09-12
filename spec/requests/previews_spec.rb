require 'rails_helper'

RSpec.describe "Previews", type: :request do
  describe "get" do
    it 'list of all previews' do
      preview = create(:preview)
      get previews_path
      expect(response).to be_successful
      expect(response.body).to include(preview.url)
    end

  end

  describe 'new' do
    it 'preview from file' do
      post previews_path, :params => {:preview => {:url => file_fixture("youtubevideo.html")}}
      expect(response).to be_successful
      expect(response.body).to include("Jumping out of a plane")
    end

    it 'preview from http' do
      post previews_path, :params => {:preview => {:url => 'https://www.youtube.com/watch?v=QIfWtznPUGo'}}
      expect(response).to be_successful
      expect(response.body).to include("https://www.youtube.com/watch?v=QIfWtznPUGo")
    end
  end
end