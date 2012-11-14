Color = 16#F09A29.                       
% 15768105

Pixel = <<Color:24>>.
% <<240,154,41>>



Pixels = <<213,45,132,64,76,32,76,0,0,234,32,15>>.
% <<213,45,132,64,76,32,76,0,0,234,32,15>>

<<Pix1,Pix2,Pix3,Pix4>> = Pixels.
% ** exception error: no match of right hand side value <<213,45,132,64,76,32,76, 0,0,234,32,15>>

<<Pix1:24, Pix2:24, Pix3:24, Pix4:24>> = Pixels.
% <<213,45,132,64,76,32,76,0,0,234,32,15>>

<<R:8, G:8, B:8>> = <<Pix1:24>>.
% <<213,45,132>>

R.
% 213

<<R:8, Rest/binary>> = Pixels.
% <<213,45,132,64,76,32,76,0,0,234,32,15>>

R.
% 213

% Erlang segments:
%  Value
%  Value:Size
%  Value/TypeSpecifierList
%  Value:Size/TypeSpecifierList
% where Size is always in bits and TypeSpecifierList represents one or more of the following:
% Type (kind of binary data. default: integer):  integer | float | binary | bytes | bitstring | bits | utf8 | utf16 | utf32
% Signedness (only for integers. default: unsigned): signed | unsigned
% Endianness (only integer, utf16, utf32 or float. default: big): big | little | native
% 
%