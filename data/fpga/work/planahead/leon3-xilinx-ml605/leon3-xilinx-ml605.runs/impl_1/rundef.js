//
// PlanAhead(TM)
// rundef.js: a PlanAhead-generated Runs Script for WSH 5.1/5.6
// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
//

echo "This script was generated under a different operating system."
echo "Please update the PATH variable below, before executing this script"
exit

var WshShell = new ActiveXObject( "WScript.Shell" );
var ProcEnv = WshShell.Environment( "Process" );
var PathVal = ProcEnv("PATH");
if ( PathVal.length == 0 ) {
  PathVal = "/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64:/opt/Xilinx/14.7/ISE_DS/common/bin/lin64;/opt/Xilinx/14.7/ISE_DS/ISE/lib/lin64:/opt/Xilinx/14.7/ISE_DS/common/lib/lin64;/opt/Xilinx/14.7/ISE_DS/PlanAhead/bin;";
} else {
  PathVal = "/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64:/opt/Xilinx/14.7/ISE_DS/common/bin/lin64;/opt/Xilinx/14.7/ISE_DS/ISE/lib/lin64:/opt/Xilinx/14.7/ISE_DS/common/lib/lin64;/opt/Xilinx/14.7/ISE_DS/PlanAhead/bin;" + PathVal;
}

ProcEnv("PATH") = PathVal;

var RDScrFP = WScript.ScriptFullName;
var RDScrN = WScript.ScriptName;
var RDScrDir = RDScrFP.substr( 0, RDScrFP.length - RDScrN.length - 1 );
var ISEJScriptLib = RDScrDir + "/ISEWrap.js";
eval( EAInclude(ISEJScriptLib) );


ISEStep( "ngdbuild",
         "-intstyle ise -p xc6vlx240tff1156-1 -dd _ngo -uc \"leon3mp.ucf\" \"leon3mp.edf\"" );
ISEStep( "map",
         "-intstyle pa -w -pr b -t 2 -timing -logic_opt on -register_duplication -ol high -xe n \"leon3mp.ngd\"" );
ISEStep( "par",
         "-intstyle pa \"leon3mp.ncd\" -w \"leon3mp_routed.ncd\" -ol high -xe n" );
ISEStep( "trce",
         "-intstyle ise -o \"leon3mp.twr\" -v 30 -l 30 \"leon3mp_routed.ncd\" \"leon3mp.pcf\"" );
ISEStep( "xdl",
         "-secure -ncd2xdl -nopips \"leon3mp_routed.ncd\" \"leon3mp_routed.xdl\"" );
ISEStep( "bitgen",
         "\"leon3mp_routed.ncd\" \"leon3mp.bit\" \"leon3mp.pcf\" -m -w -intstyle pa" );



function EAInclude( EAInclFilename ) {
  var EAFso = new ActiveXObject( "Scripting.FileSystemObject" );
  var EAInclFile = EAFso.OpenTextFile( EAInclFilename );
  var EAIFContents = EAInclFile.ReadAll();
  EAInclFile.Close();
  return EAIFContents;
}
