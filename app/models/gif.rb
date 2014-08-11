class Gif < ActiveRecord::Base
  validates_presence_of :url, {message: "URL cannot be blank"}
  validates_presence_of :title, {message: "Title cannot be blank"}
end