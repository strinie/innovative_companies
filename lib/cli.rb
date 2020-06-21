require_relative 'profile.rb'
require_relative 'paragraph.rb'
require_relative 'company.rb'

module InnovativeCompanies
    class Cli
        
        def start
            list_cos
        end

        def start
            puts "Welcome to the list of".pink.bold
            puts "🇲​​​​​🇴​​​​​🇸​​​​​🇹​​​​​ 🇮​​​​​🇳​​​​​🇳​​​​​🇴​​​​​🇻​​​​​🇦​​​​​🇹​​​​​🇮​​​​​🇻​​​​​🇪​​​​​ 🇨​​​​​🇴​​​​​🇲​​​​​🇵​​​​​🇦​​​​​🇳​​​​​🇮​​​​​🇪​​​​​🇸!​​​​​".pink.bold
            list_cos
            puts "-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-".pink.bold # divider
            puts "\nPlease select a company from 1 - 50".pink.bold
            input = gets.strip
            company = InnovativeCompanies::Companies.all[input.to_i - 1]
            InnovativeCompanies::Scaper.scrape_companies(rank, name, why)
            puts "Here is the information about the company:".pink.bold
            puts company.rank
            puts company.name
            puts company.why
            paragraph
        end

        def paragraph
            puts "Would you like to know more about the company? Type yes or exit.".pink.bold
            if yes
                company = InnovativeCompanies::Companies.all[input.to_i - 1]
                InnovativeCompanies::Scaper.scrape_profile(bio)
                puts company.bio
            else
                exit_app
            elsif
                puts "Invalid input. Please type yes or exit.".pink.bold
            end
        end

        def list_cos
            InnovativeCompanies::Companies.all.each do |cos|
                puts "#{company.rank} #{company.name}"
            end
        end

        def exit_app
            puts "\nSee your company in the list in the fuiture!".pink.bold
            exit
        end
    end