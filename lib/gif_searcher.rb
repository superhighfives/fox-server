class GifSearcher

  SEARCH_RETRY_ATTEMPTS = 3

  def random_result(text)
    if gif = search(text)
      log "Found: \"#{text}\"."
      {
        url: gif.original_image.url,
        frames: gif.original_image.frames,
        size: gif.original_image.size,
        source: gif.bitly_gif_url.to_s
      }
    else
      log "Nothing found :("
    end
  end

  def search(text)
    log "Searching giphy for \"#{text}\"..."
    attempts = 1
    begin
      Giphy.search(text, {limit: 10}).sample
    rescue
    rescue Giphy::Error::ClientError => e
      log "Giphy returned an error: #{e.inspect}"
      if attempts <= SEARCH_RETRY_ATTEMPTS
        puts "Attempt #{attempts}. Retrying..."
        attempts += 1
        retry
      else
        puts "#{attempts} failed attempts. Giving up on giphy search."
        []
      end
    end
  end

  def log(m)
    puts "[GifSearch] #{m}"
  end

end
