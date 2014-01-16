class Crawler
  attr_reader :client

  def initialize
    @client = RedditKit::Client.new('funnycluster', 'funnycluster')
  end

  def crawl!
    clear_models!
    crawl_links!
    crawl_comments!
  end

  def clear_models!
    Comment.delete_all
    Link.delete_all
  end

  def crawl_links!
    client.links('funny', limit: 100, category: :top, time: :day).map do |link|
      Link.create(Hash[link.attributes.map{|k, v| [k, v.to_s]}])
    end
  end

  def crawl_comments!
    Link.find_each do |link|
      comments = client.comments(link.id)
      comments.each do |comment|
        save_comment(comment)
      end
    end
  end

  def save_comment(api_comment)
    attrs = Hash[api_comment.attributes.slice(*Comment.attribute_names.map(&:to_sym)).map{|k, v| [k, v.to_s]}]

    Comment.create(attrs)
    api_comment.replies.select{|r| r.attributes[:kind] == 't1'}.each{|reply| save_comment(reply)}
  rescue
    puts "Shit."
    #binding.pry
  end
end