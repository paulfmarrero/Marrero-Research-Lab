(* ::Package:: *)

BeginPackage["NDRootPackage`"]
NegativeDigitalRoot::usage = "NegativeDigitalRoot[n] returns the negative digital root of the negative integer n"
NegativeDigitalRoot[n_?(IntegerQ[#]&&#<0&)]:= n-(-9)*Floor[(n+1)/-9]
NegativeDigitalRoot[_]:=Message[Error::InvalidInput]
Error::InvalidInput="The provided input is not a negative integer.";
Attributes[NegativeDigitalRoot]={Listable};
EndPackage[]






