# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
    matching_movie=Character.where({ :actor_id=>self.id})
    movie=matching_movie.at(0)
    return movie
  end
end
