class WordCount < ActiveRecord::Base
  belongs_to :link, primary_key: :name
  belongs_to :comment, primary_key: :name

  def self.from_link(link)
    link.comments.each_with_object([]) do |comment, counts|
      counts.concat from_comment(comment)
    end
  end

  def self.from_comment(comment)
    words = comment.body.to_enum(:scan, /[\w']+/).lazy.map(&:downcase)

    word_counts = words.each_with_object(Hash.new(0)) do |word, counts|
      counts[word] += 1 unless StopWords::ENGLISH.include?(word)
    end

    word_counts.map do |word, count|
      WordCount.new(link_id: comment.link_id, comment_id: comment.name, word: word, count: count)
    end
  end
end
