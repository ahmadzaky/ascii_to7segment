library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;



package ascii_7segment_package is


    constant cSPC : std_logic_vector(7 downto 0) := X"00"; --  (space)
	constant ch_0 : std_logic_vector(7 downto 0) := X"3F"; --  0 
	constant ch_1 : std_logic_vector(7 downto 0) := X"06"; --  1 
	constant ch_2 : std_logic_vector(7 downto 0) := X"5B"; --  2 
	constant ch_3 : std_logic_vector(7 downto 0) := X"4F"; --  3 
	constant ch_4 : std_logic_vector(7 downto 0) := X"66"; --  4 
	constant ch_5 : std_logic_vector(7 downto 0) := X"6D"; --  5 
	constant ch_6 : std_logic_vector(7 downto 0) := X"7D"; --  6 
	constant ch_7 : std_logic_vector(7 downto 0) := X"07"; --  7 
	constant ch_8 : std_logic_vector(7 downto 0) := X"7F"; --  8 
	constant ch_9 : std_logic_vector(7 downto 0) := X"6F"; --  9 
	constant ch_A : std_logic_vector(7 downto 0) := X"77"; --  A 
	constant ch_B : std_logic_vector(7 downto 0) := X"7C"; --  B 
	constant ch_C : std_logic_vector(7 downto 0) := X"39"; --  C 
	constant ch_D : std_logic_vector(7 downto 0) := X"5E"; --  D 
	constant ch_E : std_logic_vector(7 downto 0) := X"79"; --  E 
	constant ch_F : std_logic_vector(7 downto 0) := X"71"; --  F 
	constant ch_G : std_logic_vector(7 downto 0) := X"3D"; --  G 
	constant ch_H : std_logic_vector(7 downto 0) := X"76"; --  H 
	constant ch_I : std_logic_vector(7 downto 0) := X"30"; --  I 
	constant ch_J : std_logic_vector(7 downto 0) := X"1E"; --  J 
	constant ch_K : std_logic_vector(7 downto 0) := X"75"; --  K 
	constant ch_L : std_logic_vector(7 downto 0) := X"38"; --  L 
	constant ch_M : std_logic_vector(7 downto 0) := X"15"; --  M 
	constant ch_N : std_logic_vector(7 downto 0) := X"37"; --  N 
	constant ch_O : std_logic_vector(7 downto 0) := X"3F"; --  O 
	constant ch_P : std_logic_vector(7 downto 0) := X"73"; --  P 
	constant ch_Q : std_logic_vector(7 downto 0) := X"6B"; --  Q 
	constant ch_R : std_logic_vector(7 downto 0) := X"33"; --  R 
	constant ch_S : std_logic_vector(7 downto 0) := X"6D"; --  S 
	constant ch_T : std_logic_vector(7 downto 0) := X"78"; --  T 
	constant ch_U : std_logic_vector(7 downto 0) := X"3E"; --  U 
	constant ch_V : std_logic_vector(7 downto 0) := X"3E"; --  V 
	constant ch_W : std_logic_vector(7 downto 0) := X"2A"; --  W 
	constant ch_X : std_logic_vector(7 downto 0) := X"76"; --  X 
	constant ch_Y : std_logic_vector(7 downto 0) := X"6E"; --  Y 
	constant ch_Z : std_logic_vector(7 downto 0) := X"5B"; --  Z 
	constant cl_a : std_logic_vector(7 downto 0) := X"5F"; --  a 
	constant cl_b : std_logic_vector(7 downto 0) := X"7C"; --  b 
	constant cl_c : std_logic_vector(7 downto 0) := X"58"; --  c 
	constant cl_d : std_logic_vector(7 downto 0) := X"5E"; --  d 
	constant cl_e : std_logic_vector(7 downto 0) := X"7B"; --  e 
	constant cl_f : std_logic_vector(7 downto 0) := X"71"; --  f 
	constant cl_g : std_logic_vector(7 downto 0) := X"6F"; --  g 
	constant cl_h : std_logic_vector(7 downto 0) := X"74"; --  h 
	constant cl_i : std_logic_vector(7 downto 0) := X"10"; --  i 
	constant cl_j : std_logic_vector(7 downto 0) := X"0C"; --  j 
	constant cl_k : std_logic_vector(7 downto 0) := X"75"; --  k 
	constant cl_l : std_logic_vector(7 downto 0) := X"30"; --  l 
	constant cl_m : std_logic_vector(7 downto 0) := X"14"; --  m 
	constant cl_n : std_logic_vector(7 downto 0) := X"54"; --  n 
	constant cl_o : std_logic_vector(7 downto 0) := X"5C"; --  o 
	constant cl_p : std_logic_vector(7 downto 0) := X"73"; --  p 
	constant cl_q : std_logic_vector(7 downto 0) := X"67"; --  q 
	constant cl_r : std_logic_vector(7 downto 0) := X"50"; --  r 
	constant cl_s : std_logic_vector(7 downto 0) := X"6D"; --  s 
	constant cl_t : std_logic_vector(7 downto 0) := X"78"; --  t 
	constant cl_u : std_logic_vector(7 downto 0) := X"1C"; --  u 
	constant cl_v : std_logic_vector(7 downto 0) := X"1C"; --  v 
	constant cl_w : std_logic_vector(7 downto 0) := X"14"; --  w 
	constant cl_x : std_logic_vector(7 downto 0) := X"76"; --  x 
	constant cl_y : std_logic_vector(7 downto 0) := X"6E"; --  y 
	constant cl_z : std_logic_vector(7 downto 0) := X"5B"; --  z 

end package;
