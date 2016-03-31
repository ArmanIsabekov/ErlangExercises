-module(geometry).
-compile(export_all).

p({triangle, A, B, C}) -> ((A + B + C)/2);
area({rectangle, Width, Ht}) -> Width * Ht;
area({circle, R}) -> 3.14159 * R * R;
area({square, X}) -> X * X;
area({triangle, A, B, C}) -> math:sqrt(p({triangle, A, B, C})*
(p({triangle, A, B, C})-A)*
(p({triangle, A, B, C})-B)*
(p({triangle, A, B, C})-C)).