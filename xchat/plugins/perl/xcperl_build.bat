perl generate_header

gcc -W -Os -DPACKAGE_VERSION=\"2.8.6\" -DWIN32 -DOLD_PERL -DPERL_DLL=\"perl58.dll\" -I "C:\MinGW\include" -I .. -I "C:\ActivePerl-5.8.9\perl\lib\CORE" -L "C:\ActivePerl-5.8.9\perl\bin" -c perl.c -o perl5.8.9.o

dllwrap --def perl.def --dllname xcperl5.8.9.dll "C:\ActivePerl-5.8.9\perl\bin\perl58.dll" perl5.8.9.o

strip xcperl5.8.9.dll



gcc -W -Os -DPACKAGE_VERSION=\"2.8.6\" -DWIN32 -DOLD_PERL -DPERL_DLL=\"perl510.dll\" -I "C:\MinGW\include" -I .. -I "C:\Perl\lib\CORE" -L "C:\Perl\bin" -c perl.c -o perl5.10.0.o

dllwrap --def perl.def --dllname xcperl5.10.0.dll "C:\Perl\bin\perl510.dll" perl5.10.0.o

strip xcperl5.10.0.dll
