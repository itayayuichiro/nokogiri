require_relative './common.rb'


def open_url(url)
  charset = nil
  html = open(url) do |f|
    charset = f.charset
    f.read
  end
  return html
end

p open_url('http://qiita.com/hondy12345/items/d32ed749fb49e9da7de6')