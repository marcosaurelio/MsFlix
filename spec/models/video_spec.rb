require 'rails_helper'

describe Video do
  let(:user) { User.new(email: 'marcos@teste.com.br', password: '123456', name: 'Marcos') }

  it 'is valid if the name is filled' do
    video = Video.new(name: 'Video 1', url: "http://www.teste-netshowme/video1.m3u8", user: user)
    expect(video).to be_valid
  end

  it 'is not valid if the name is not filled' do
    video = Video.new(url: "http://www.teste-netshowme/video1.m3u8", user: user)
    expect(video).to_not be_valid
  end

  it 'is valid if the url is filled' do
    video = Video.new(name: 'Video 1', url: "http://www.teste-netshowme/video1.m3u8", user: user)
    expect(video).to be_valid
  end

  it 'is not valid if the url is not filled' do
    video = Video.new(name: 'Video 1', user: user)
    expect(video).to_not be_valid
  end

  it 'is valid if the url extension m3u8' do
    video = Video.new(name: 'Video 1', url: "http://www.teste-netshowme/video1.m3u8", user: user)
    expect(video).to be_valid
  end
  
  it 'is not valid if the url extension not equal m3u8' do
    video = Video.new(name: 'Video 1', url: "http://www.teste-netshowme/video1.avi", user: user)
    expect(video).to_not be_valid
  end

end


