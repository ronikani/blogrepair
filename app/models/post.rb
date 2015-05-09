class Post < ActiveRecord::Base
   extend CarrierWave::Mount
   belongs_to :subcategory
   has_many :attaches, :as => :attacheable
   accepts_nested_attributes_for :attaches
   attr_accessor :attached

   has_many :comments, dependent: :destroy
   validates :title, presence: true, length: {minimum: 5}
   validates :body,  presence: true
end
