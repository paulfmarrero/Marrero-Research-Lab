(* ::Package:: *)

BeginPackage["DigitalRootPackage`"]
DigitalRoot::usage= "DigitalRoot[n] returns the Additive Digital Root of the non-negative integer n."
DigitalRoot[n_?(IntegerQ[#]&&#>0&)]:= Mod[n,9,1]
With[{n=0}, DigitalRoot[n] = 0]
DigitalRoot[_]:=Message[Error::InvalidInput]
Error::InvalidInput= "The input is not a non-negative integer."
Attributes[DigitalRoot]={Listable};
EndPackage[]



