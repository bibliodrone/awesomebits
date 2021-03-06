class Photo < ActiveRecord::Base
  belongs_to :project
  has_attached_file :image,
                    :default_style => :main,
                    :styles => {
                      :main => "940x470#",
                      :index => "500x300#"
                    },
                    :default_url => "/assets/no-image-:style.png"

  attr_accessible :image
end
