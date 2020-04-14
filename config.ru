# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

CarrierWave.configure do |config|
  config.ftp_host = "ftp.example.com"
  config.ftp_port = 25
  config.ftp_user = "example"
  config.ftp_passwd = "secret"
  config.ftp_folder = "/public_html/uploads"
  config.ftp_url = "http://example.com/uploads"
  config.ftp_passive = false # false by default
  config.ftp_tls = false # false by default
end


run Rails.application
