require "JohnnyNumber5_palindrome/version"

module JohnnyNumber5Palindrome
  class Error < StandardError; end

  # Returns true if the text is a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

    # Converts the string's content to lower case.
  def processed_content
    to_s.scan(/[a-z0-9]/i).join.downcase
  end
end

class String
  include JohnnyNumber5Palindrome
end

class Integer
  include JohnnyNumber5Palindrome
end
