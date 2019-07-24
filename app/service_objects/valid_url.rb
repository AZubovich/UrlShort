# frozen_string_literal: true

class ValidUrl
  def initialize(url)
    @url = url
  end

  def valid
    @url =~ %r/^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/
  end
end
