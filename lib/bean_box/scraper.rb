class BeanBoxCoffee::Scraper

  def self.scraper_category
    doc = Nokogiri::HTML(open("https://beanbox.com/coffee"))
    doc.css("#div.roast-list").each do |data|
      title = data.css("h2 a").first.text
      description = data.css("h3 class").first.text
      price = data.css("h4 class").last.text
      BeanBoxCoffee::BeanBox.new(title, description, price)
    end

  end

end
