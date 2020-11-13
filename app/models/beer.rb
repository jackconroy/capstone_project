class Beer < ApplicationRecord

  has_many :beer_tasting_notes
  has_many :tasting_notes, through: :beer_tasting_notes

  has_many :votes

  validates :name, uniqueness: true
  validates :image, presence: true

  #Might not need this on here! But keep it so maybe you can do a test if you need to seed again!
  def self.brewery_db_seed
    Beer.destroy_all
    23.times do |index|
      response = HTTP
      .get("https://sandbox-api.brewerydb.com/v2/beers?p=#{index + 1}&withBreweries=y&key=b3933ad6faaa17fab8e3e96a108e5fa4")
      .parse
      response["data"].each do |beer|
        new_beer = Beer.create(
          brewerydb_api_id: beer["id"],
          name: beer["name"],
          brewery: beer["breweries"][0]["name"],
          abv: beer["abv"]
        )
        if beer["labels"]
          if beer["labels"]["contentAwareMedium"]
            new_beer.update(image: beer["labels"]["contentAwareMedium"].tr('\\', ''))
          else
            new_beer.update(image: beer["labels"]["medium"].tr('\\', ''))
          end
        end
        if beer["style"]
          new_beer.update(style: beer["style"]["shortName"])
        end
      end
    end
    return "All done!"
  end

  def self.remove_beers_without_image
    beers = Beer.where(image: nil)
    beers.destroy_all
  end

  def upvotes
    votes.sum(:vote_value)
  end


end
