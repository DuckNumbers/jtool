with oPlayer {
    var isOnBlock;
    if( global.checkNudgeEarly ) {
        isOnBlock = nudgeBlockCheck;
    } else {
        isOnBlock = place_meeting(x,y+global.grav,oBlock);
    }
    if isOnBlock and not frozen {
        if keyboard_check_pressed(ord('A')) || keyboard_check(ord("U")) 
        and not place_meeting(x-1,y,oBlock)  {
            global.tasAD= true
            
        }
        if keyboard_check_pressed(ord('D')) || keyboard_check(ord("I")) 
        and not place_meeting(x+1,y,oBlock)  {
            
            global.tasAD= true 
       
        }
        if keyboard_check_pressed(ord('N')) 
        and not place_meeting(x-.5,y,oBlock)  {
            //global.ADonce=true
            global.tasAD= true 
            //global.adjustTAS=not global.adjustTAS
        }
         if keyboard_check_pressed(ord('M')) 
         and not place_meeting(x+.5,y,oBlock) {
            //global.ADonce=true
            global.tasAD= true
            //global.adjustTAS=not global.adjustTAS
         }
    }
}
