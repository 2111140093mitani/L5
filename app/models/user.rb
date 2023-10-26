class User < ApplicationRecord
    has_many :likess
    has_many :like_tweets, through: :likes, source: :tweet
end
