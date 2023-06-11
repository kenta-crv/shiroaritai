# app/services/facebook_conversion_api_service.rb

require 'faraday'
require 'json'

class FacebookConversionApiService
  def initialize(user_email, currency, value)
    @user_email = user_email
    @currency = currency
    @value = value
  end

  def send_event
    # パラメータの設定
    app_id = '1801840603565240'
    app_secret = 'ac500a2a96707a4604c92e721de15af5'
    pixel_id = '652331780097676'
    access_token = 'EAALIPEHAaHYBAAW9mlXzy2oZCbUH4yiIhZAMEE2JMlRWsfv3jLwRS8MoGZAYrZAXYZC45PFsq4tRvWj213LOZCuCOWz8ttBfoFSWBhGcZB6FZCSZBCbYZBzEVRrZAaAHjj9mVZCnZAG5aagafgJAPVdILE3HWCLcFPAsZAWbWwEDsIKWYh4loh5zadZAegmPimoc1YZAZBhUZD'
    api_version = 'v11.0'  # API version might change

    # URLの設定
    url = "https://graph.facebook.com/#{api_version}/#{pixel_id}/events"

    # ユーザーデータの作成
    user_data = {
      em: [Digest::SHA256.hexdigest(@user_email)]
    }

    # イベントデータの作成
    event_data = {
      data: [
        {
          event_name: 'Purchase',
          event_time: Time.now.to_i,  # Unix timestamp
          action_source: 'website',
          user_data: user_data,
          custom_data: {
            currency: @currency,
            value: @value
          }
        }
      ],
      access_token: access_token
    }

    # POSTリクエストの実行
    response = Faraday.post(url, event_data.to_json, 'Content-Type' => 'application/json')

    # レスポンスの確認
    if response.success?
      puts "Event sent successfully: #{response.body}"
    else
      puts "Error sending event: #{response.body}"
    end
  end
end