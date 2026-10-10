direcao_y += random_range(-0.03, 0.03);
direcao_y = clamp(direcao_y, -0.8, 0.8);

y += direcao_y;

image_angle += rot;