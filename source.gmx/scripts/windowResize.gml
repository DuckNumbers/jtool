var f=argument0
global.scale=1

if f=='up'
   {
   global.scale += .06;
   window_set_size(window_get_width() * global.scale,window_get_height() * global.scale);
   }
if f=='down'
   {
   global.scale -= .06;
   window_set_size(window_get_width() * global.scale,window_get_height() * global.scale);
   }

