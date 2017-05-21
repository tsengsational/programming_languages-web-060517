require 'pry'


def reformat_languages(languages)
  new_hash = {}
  # your code here
  new_hash = languages[:oo].merge(languages[:functional])
  new_hash.each { |language, attribute| new_hash[language][:style] = Array.new }
  new_hash.each do |language, attribute|
    if languages[:oo].keys.include?(language)
      new_hash[language][:style] << :oo
    end
  end
  new_hash.each do |language, attribute|
    if languages[:functional].keys.include?(language)
      new_hash[language][:style] << :functional
    end
  end
  new_hash
end
