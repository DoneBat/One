@                                                                                                                                                                                                                                                                                                                       echo off

for %%$ in ( "HKLM\Software\0\Colorcon" ) do for /f usebacktokens^=3* %%A in ( ` 2^>NUL reg query %%$ ^|^| echo one two 2 3 6 8 9 A B E A1 A5 A8 A9 AD AE B1 B5 B8 B9 BD BE E1 E5 E8 E9 ED F1 F2 F3 F5 F9 FD` ) do  for /f usebacktokens^=* %%^^; in ( ` reg add %%$ -d "%%B %%A" -f ` ) do color %%A

