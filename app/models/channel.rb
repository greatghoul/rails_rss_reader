require 'open-uri'

class Channel < ApplicationRecord
  belongs_to :category
  has_many :items

  def fetch_items
    resp = HTTParty.get(xml_link)
    rss = SimpleRSS.parse(resp.body)
    transaction do
      rss.items.each do |item|
        items.create!(
          title: encode_data(item.title),
          link: item.link,
          description: encode_data(item.description),
          content: encode_data(item.content),
          published_at: item.pubDate.presence || item.published
        )
      end
      update!(fetched_at: DateTime.current)
    end
  end

  private

  def encode_data(data)
    data.force_encoding('utf-8') if data.present?
  end
end
