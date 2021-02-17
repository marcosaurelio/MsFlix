require 'rails_helper'

describe Video do
  it 'is valid if name is not null' do
    video = Video.new(name: "Video Teste")
    video.valid?
    expect(video.errors[:name]).not_to include("can't be blank")
  end
  it 'is valid if url is not null' do
    video = Video.new(url: "Url Teste")
    video.valid?
    expect(video.errors[:url]).not_to include("can't be blank")
  end
end


