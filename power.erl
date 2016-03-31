-module(power).
-export([power/2]).

power(A,0) -> 1;
power(A,N) when N > 0 -> A * power(A,N-1);
power(A,N) when N < 0 -> power(A, N+1) / A.
