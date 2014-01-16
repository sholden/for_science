namespace :for_science do
  desc "crawl reddit"
  task :crawl => :environment do
    crawler = Crawler.new
    crawler.crawl!
  end

  desc "build word counts from comments"
  task :count_words => :environment do
    Link.find_each do |link|
      WordCount.from_link(link).each(&:save!)
    end
  end
end