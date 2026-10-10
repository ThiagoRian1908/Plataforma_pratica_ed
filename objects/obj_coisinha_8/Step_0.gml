//y += random_range(1, 3);
y += vel_y;

// Tremidinha lateral
x += lengthdir_x(0.3, current_time / 20 + fase);