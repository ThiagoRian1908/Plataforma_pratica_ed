var _Coroa_l1 = layer_get_id("Coroa_l1");
var _Coroa_l2 = layer_get_id("Coroa_l2");
var _Coroa_l3 = layer_get_id("Coroa_l3");

layer_x(_Coroa_l1, lerp(0, camera_get_view_x(view_camera[0]), 0.5) );
layer_x(_Coroa_l2, lerp(0, camera_get_view_x(view_camera[0]), 0.6) );
layer_x(_Coroa_l3, lerp(0, camera_get_view_x(view_camera[0]), 0.7) );
/*
var _Colesterol = layer_get_id("Colesterol");
var _Fosfolipidos_2 = layer_get_id("Fosfolipidos_2");

layer_x(_Colesterol, lerp(0, camera_get_view_x(view_camera[0]), 0.1));
layer_x(_Fosfolipidos_2, lerp(0, camera_get_view_x(view_camera[0]), 0.6));
 */

var _Microtubulo = layer_get_id("Microtubulo_longe");
layer_x(_Microtubulo, lerp(0, camera_get_view_x(view_camera[0]), 0.5) );

var _Microtubulo_2 = layer_get_id("Microtubulo_longe2");
layer_x(_Microtubulo_2, lerp(0, camera_get_view_x(view_camera[0]), 0.6) );

var _Microtubulo_3 = layer_get_id("Microtubulo_longe3");
layer_x(_Microtubulo_3, lerp(0, camera_get_view_x(view_camera[0]), 0.7) );

var _Microtubulo_4 = layer_get_id("Microtubulo_longe4");
layer_x(_Microtubulo_4, lerp(0, camera_get_view_x(view_camera[0]), 0.3) );

var _Microtubulo_vert = layer_get_id("Microtubulo_vert"); 
layer_x(_Microtubulo_vert, lerp(0, camera_get_view_x(view_camera[0]), 0.8) );

var _Microtubulo_vert_frente = layer_get_id("Microtubulo_vert_frente"); 
layer_x(_Microtubulo_vert_frente, lerp(0, camera_get_view_x(view_camera[0]), 0.6) );
 
