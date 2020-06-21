module InnovativeCompanies
    class Scraper

        def self.scrape_companies
            page = Nokogiri::HTML(open('https://www.fastcompany.com/most-innovative-companies/2019'))
            page.css('.mic-2019__company__info').each do |co|
                rank = co.css('span.mic-2019__company__ranking').text.strip
                name = co.css('h3.mic-2019__company__name').text.strip
                why = co.css('p.mic-2019__why').text.strip
                link = co.css('div.mic-2019__company-info a').attribute('href').value
                company = InnovativeCompanies::Companies.new(rank, name, why, link)
            end
        end

        def self.scrape_profile
            page = Nokogiri::HTML(open('https://www.fastcompany.com/company/#{co.link}'))
            page.css('.person-company-bio__bio-text person-company-bio__bio-text--ibd').each do |bio|
                bio = bio.css('p.person-company-bio__badge person-company-bio__badge--mic-2020').text.strip
            end
        end

    end


