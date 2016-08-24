class EmailInterceptor
  def self.delivering_email(message)
    message.subject = "#{message.to} #{message.subject}"
    message.to = [ 'guillaume.cochennec@outlook.fr' ]
  end
end
