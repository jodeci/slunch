require 'slack'

class SlackbotHelper

  def self.init
    Slack.configure do |config|
      config.token = SlackSettings.slack.token
    end
  end

  def self.chat message
    args = { as_user: true, text: message }
    SlackSettings.slack.channels.each do |channel|
      args[:channel] = channel
      Slack.chat_postMessage(args)
    end
  end

  def self.channels
    channels = []
    (Slack.channels_list['channels'] + Slack.groups_list['groups']).each do |channel|
      channels << { id: channel['id'], name: channel['name'] }
    end
    channels
  end

end
