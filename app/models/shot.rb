class Shot < ApplicationRecord
  belongs_to :shotlist

  #SHOT_SIZE = ["Close-up", "Long shot", "Medium shot", "point-of-view shot", ]
  #SHOT_SIZE_HINT = "Shot size refers to how big or small the frame is in relation to the subject. Does your character fill the frame or are they so far away as to be nearly invisible? What else is visible in your shot? Multiple characters? Objects? Landscapes?"

  #ANGLE = ["Eye level", "Low angle", "High angle", "Dutch angle", "Over-the-Shoulder"]
  #ANGLE_HINT = "Once you’ve decided on a shot size, you can add a bit more perspective to your shot by choosing an angle. The camera angle can help you create a sense of fear, empathy, or disorientation in the viewer."

  #MOVEMENT = ["Pan", "Tilt", "Crane shot", "Zoom", "Random motion", "360-degree motion", "Compound motion", "Compound motion", "Dolly zoom"]
  #MOVEMENT_HINT ="By adding motion to a scene, you can move between camera angles easily"

end

