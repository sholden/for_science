namespace :crawler do
  desc "crawl reddit"
  task :crawl => :environment do
    crawler = Crawler.new
    crawler.crawl!
  end
end