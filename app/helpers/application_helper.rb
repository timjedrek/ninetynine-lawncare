module ApplicationHelper
  def randomized_background_image
    images = ["bg-randomhead0", 
              "bg-randomhead1", 
              "bg-randomhead2",
              "bg-randomhead3",
              "bg-randomhead4"
            ]
            
    images[rand(images.size)]
  end
end
