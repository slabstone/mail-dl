# frozen_string_literal: true

require 'iconv'

def decode_mailbox_name(mailbox_name)
  utf7_string = mailbox_name.gsub(/&([^-])/, '+\1')
                            .gsub('&-', '&')
                            .gsub(',', '/')
  Iconv.iconv('UTF-8', 'UTF-7', utf7_string).first
end
