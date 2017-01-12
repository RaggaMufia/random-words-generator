namespace :words do
  desc "Adding words to db"
  task add_words: :environment do
    words = JSON.parse(File.read("./lib/tasks/data/words.json"))

    words.each do |word|
      Word.create(name: word)
    end
  end
end
