class FetchXml

  def notify
    get_authors
    get_titles
  end

  private

  def parse_xml_entries
    Feedjira::Feed.fetch_and_parse("http://www.radionula.com/rss.xml").entries
  end

  def get_songs
    songs_list = []
    parse_xml_entries.each do |s|
      songs_list.push(s.title) if s.title != "Photo"
    end
    songs_list
  end

  def get_authors
    authors_list = []
    get_songs.each do |author|
      authors_list.push(author.sub(/\s-\s.*/, ''))
    end
    authors_list
  end

  def get_titles
    titles_list = []
    get_songs.each do |title|
      titles_list.push(title.sub(/.*\s-\s/, ''))
    end
    titles_list
  end

end
