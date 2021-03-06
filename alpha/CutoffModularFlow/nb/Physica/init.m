#!/usr/bin/env wolframscript
(* ::Package:: *)
(* Linked to `~/.Mathematica/Autoload/FrontEnd/init.m` *)

"### Spelunking";
Quiet[Get["Spelunking`"];];

"### Add quit kernel shortcut";
FrontEndExecute[
    FrontEnd`AddMenuCommands["MenuListQuitEvaluators", {MenuItem[
        "Quit Default"
        , FrontEnd`KernelExecute[ToExpression["Quit[]"]]
        , MenuKey["q", Modifiers -> {"Control", "Shift"}]
        , System`MenuEvaluator -> Automatic
]}]]
