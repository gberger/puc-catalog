require 'open-uri'
require 'nokogiri'

cod = '#hCodigo'
tit = '#hTitulo'
eme = '#pEmenta'


(1000..3999).each do |n|
  page = Nokogiri::HTML(open("http://www.puc-rio.br/ferramentas/ementas/ementa.aspx?cd=INF#{n}"))
  unless page.css(tit).text.empty?
    puts "#{page.css(cod).text} - #{page.css(tit).text} - #{page.css(eme).text}"
  end
end
