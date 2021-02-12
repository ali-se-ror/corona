class Corona::Scraper

  def self.scrap_table(url)
    doc = Nokogiri::HTML(URI.open(url))
    data = []
    doc.css("table tbody tr").each do |tr|
      row = {}
      tr.search('td').each do |td|
        label, value = td.search('span')
        row[label.text] = value.text
      end
      data << row
    end
    return data
  end

end 