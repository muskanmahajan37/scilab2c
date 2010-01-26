//
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - INRIA - Vincent COUVERT
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//

function sci2c_gui()

// Sizes
widgeth = 20;
btnh = 22;
btnw = 80;
defaultfont = "arial";
margin = 13;
radiow = 85;

// Figure creation
sci2cfig = figure("figure_name", gettext("Scilab to C conversion tool"),"tag","sci2cfig");

// Remove Scilab graphics menus & toolbar
delmenu(sci2cfig.figure_id, gettext("&File"));
delmenu(sci2cfig.figure_id, gettext("&Tools"));
delmenu(sci2cfig.figure_id, gettext("&Edit"));
delmenu(sci2cfig.figure_id, gettext("&?"));
toolbar(sci2cfig.figure_id, "off");

h = uimenu("parent", sci2cfig, "label", gettext("File"));
uimenu("parent", h, "label", gettext("Close"), "callback", "cb_sci2c_gui", "tag", "close_menu");

h = uimenu("parent", sci2cfig, "label", gettext("?"));
uimenu("parent", h, "label", gettext("Sci2c help page"), "callback", "cb_sci2c_gui", "tag", "sci2c_help_menu");
uimenu("parent", h, "label", gettext("About SCI2C tools..."), "callback", "cb_sci2c_gui", "tag", "about_sci2c_menu");

figw = 500;
figh = 15*margin + btnh + 6*widgeth;
sci2cfig.axes_size = [figw figh];
sci2cfig.auto_resize = "off";
sci2cfig.visible = "off"; // to be sure that no plot can appear in the window

//-------------------
// --- Validation ---
//-------------------

// Convert button
convertbtn = uicontrol("parent", sci2cfig,...
    "backgroundcolor", [0.8 0.8 0.8],...
    "style", "pushbutton",...
    "string", gettext("Convert"),...
    "position", [figw-2*margin-2*btnw margin btnw btnh],...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12,...
    "tag","convertbtn",...
    "callback","cb_sci2c_gui");

// Cancel button
cancelbtn = uicontrol("parent", sci2cfig,...
    "backgroundcolor", [0.8 0.8 0.8],...
    "style", "pushbutton",...
    "string", gettext("Cancel"),...
    "position", [figw-margin-btnw margin btnw btnh],...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12,...
    "tag", "cancelbtn",...
    "callback","cb_sci2c_gui");

//----------------
// --- Options ---
//----------------
// Frame
optframe = uicontrol("parent", sci2cfig,...
    "relief", "groove",...
    "style", "frame",...
    "units", "pixels",...
    "position", [margin 2*margin+btnh figw-2*margin 4*margin+3*widgeth],...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12,...
    "fontweight", "bold", ...
    "horizontalalignment", "center");
// Frame title
opttitle = uicontrol("parent", sci2cfig,...
    "style", "text",...
    "string", gettext("Options"),...
    "units", "pixels",...
    "position", [2*margin 2*margin+btnh+4*margin+3*widgeth-8 50 14],...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 11,...
    "horizontalalignment", "center");

// --- Paths style ---
pathsy = 2*margin+btnh+margin;
pathslabel = uicontrol("parent", sci2cfig,...
    "style", "text",...
    "string", gettext("Paths style in C code: "),...
    "position",[2*margin pathsy 160 widgeth],...
    "horizontalalignment", "left",...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12);
pathsradiowin = uicontrol("parent", sci2cfig,...
    "style", "radiobutton",...
    "string", gettext("Windows"),...
    "position",[2*margin+160 pathsy radiow widgeth],...
    "horizontalalignment", "left",...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12,...
    "min", 0, ...
    "max", 1, ...
    "callback", "cb_sci2c_gui",...
    "tag", "pathsradiowin");
pathsradiounix = uicontrol("parent", sci2cfig,...
    "style", "radiobutton",...
    "string", gettext("Unix"),...
    "position",[2*margin+160+radiow pathsy radiow widgeth],...
    "horizontalalignment", "left",...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12,...
    "min", 0, ...
    "max", 1, ...
    "callback", "cb_sci2c_gui",...
    "tag", "pathsradiounix");
if MSDOS
  set(pathsradiowin, "value", 1);
  set(pathsradiounix, "value", 0);
else
  set(pathsradiowin, "value", 0);
  set(pathsradiounix, "value", 1);
end
// pathsradiocygwin = uicontrol("parent", sci2cfig,...
//     "style", "radiobutton",...
//     "string", gettext("Cygwin"),...
//     "position",[2*margin+160+2*radiow pathsy radiow widgeth],...
//     "horizontalalignment", "left",...
//     "fontname", defaultfont,...
//     "fontunits", "points",...
//     "fontsize", 12,...
//     "min", 0, ...
//     "max", 1, ...
//     "value", 0,...
//     "callback", "cb_sci2c_gui",...
//     "tag", "pathsradiocygwin");

// --- Copy Scilab code into C option ---
sciintocy = pathsy + margin + btnh ;
sciintoclabel = uicontrol("parent", sci2cfig,...
    "style", "text",...
    "string", gettext("Copy Scilab code into C: "),...
    "position",[2*margin sciintocy 160 widgeth],...
    "horizontalalignment", "left",...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12);
sciintocradioyes = uicontrol("parent", sci2cfig,...
    "style", "radiobutton",...
    "string", gettext("Yes"),...
    "position",[2*margin+160 sciintocy radiow widgeth],...
    "horizontalalignment", "left",...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12,...
    "min", 0, ...
    "max", 1, ...
    "value", 0,...
    "callback", "cb_sci2c_gui",...
    "tag", "sciintocradioyes");
sciintocradiono = uicontrol("parent", sci2cfig,...
    "style", "radiobutton",...
    "string", gettext("No"),...
    "position",[2*margin+160+radiow sciintocy radiow widgeth],...
    "horizontalalignment", "left",...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12,...
    "min", 0, ...
    "max", 1, ...
    "value", 1,...
    "callback", "cb_sci2c_gui",...
    "tag", "sciintocradiono");

// --- Run mode option ---
runy = sciintocy + margin + widgeth;
runlabel = uicontrol("parent", sci2cfig,...
    "style", "text",...
    "string", gettext("Run mode: "),...
    "position",[2*margin runy 160 widgeth],...
    "horizontalalignment", "left",...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12);
runradioall = uicontrol("parent", sci2cfig,...
    "style", "radiobutton",...
    "string", gettext("All"),...
    "position",[2*margin+160 runy radiow widgeth],...
    "horizontalalignment", "left",...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12,...
    "min", 0, ...
    "max", 1, ...
    "value", 1,...
    "callback", "cb_sci2c_gui",...
    "tag", "runradioall");
runradiotranslate = uicontrol("parent", sci2cfig,...
    "style", "radiobutton",...
    "string", gettext("Translate"),...
    "position",[2*margin+160+radiow runy radiow widgeth],...
    "horizontalalignment", "left",...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12,...
    "min", 0, ...
    "max", 1, ...
    "value", 0,...
    "callback", "cb_sci2c_gui",...
    "tag", "runradiotranslate");
runradiogenlib = uicontrol("parent", sci2cfig,...
    "style", "radiobutton",...
    "string", gettext("Generate library"),...
    "position",[2*margin+160+2*radiow runy 120 widgeth],...
    "horizontalalignment", "left",...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12,...
    "min", 0, ...
    "max", 1, ...
    "value", 0,...
    "callback", "cb_sci2c_gui",...
    "tag", "runradiogenlib");

// ------------------------
// --- Output directory ---
// ------------------------
// Frame
optframemaxy = 2*margin+btnh + 4*margin+3*widgeth;
outframe = uicontrol("parent", sci2cfig,...
    "relief", "groove",...
    "style", "frame",...
    "units", "pixels",...
    "position", [margin optframemaxy+margin figw-2*margin widgeth+2*margin],...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12,...
    "fontweight", "bold", ...
    "horizontalalignment", "center");
// Frame title
outtitle = uicontrol("parent", sci2cfig,...
    "style", "text",...
    "string", gettext("Output directory"),...
    "units", "pixels",...
    "position", [2*margin optframemaxy+margin+widgeth+2*margin-8 90 14],...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 11,...
    "horizontalalignment", "center");
outlabel = uicontrol("parent", sci2cfig,...
    "style", "text",...
    "string", gettext("Directory name: "),...
    "position",[2*margin optframemaxy+2*margin-1 100 widgeth],...
    "horizontalalignment", "left",...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12);
outedit = uicontrol("parent", sci2cfig,...
    "style", "edit",...
    "string", pwd(),...
    "units", "pixels",...
    "position",[3*margin+100 optframemaxy+2*margin-1 figw-6*margin-100-btnw widgeth],...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12, ...
    "tag", "outedit");
outbtn = uicontrol("parent", sci2cfig,...
    "backgroundcolor", [0.8 0.8 0.8],...
    "style", "pushbutton",...
    "string", gettext("Browse"),...
    "position",[figw-2*margin-btnw optframemaxy+2*margin btnw btnh],...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12,...
    "callback", "cb_sci2c_gui",...
    "tag", "outbtn");

// -------------------------------
// --- SciLib main header file ---
// -------------------------------
// Frame
outframemaxy = optframemaxy + 2*margin + widgeth + margin;
// headerframe = uicontrol("parent", sci2cfig,...
//     "relief", "groove",...
//     "style", "frame",...
//     "units", "pixels",...
//     "position", [margin outframemaxy+margin figw-2*margin widgeth+2*margin],...
//     "fontname", defaultfont,...
//     "fontunits", "points",...
//     "fontsize", 12,...
//     "fontweight", "bold", ...
//     "horizontalalignment", "center");
// // Frame title
// headertitle = uicontrol("parent", sci2cfig,...
//     "style", "text",...
//     "string", gettext("Scilab library header"),...
//     "units", "pixels",...
//     "position", [2*margin outframemaxy+margin+widgeth+2*margin-8 110 14],...
//     "fontname", defaultfont,...
//     "fontunits", "points",...
//     "fontsize", 11,...
//     "horizontalalignment", "center");
// headerlabel = uicontrol("parent", sci2cfig,...
//     "style", "text",...
//     "string", gettext("File name: "),...
//     "position",[2*margin outframemaxy+2*margin-1 100 widgeth],...
//     "horizontalalignment", "left",...
//     "fontname", defaultfont,...
//     "fontunits", "points",...
//     "fontsize", 12);
// headeredit = uicontrol("parent", sci2cfig,...
//     "style", "edit",...
//     "string", gettext("<enter a file name>"),...
//     "units", "pixels",...
//     "position",[3*margin+100 outframemaxy+2*margin-1 figw-6*margin-100-btnw widgeth],...
//     "fontname", defaultfont,...
//     "fontunits", "points",...
//     "fontsize", 12, ...
//     "tag", "headeredit");
// headerbtn = uicontrol("parent", sci2cfig,...
//     "backgroundcolor", [0.8 0.8 0.8],...
//     "style", "pushbutton",...
//     "string", gettext("Browse"),...
//     "position",[figw-2*margin-btnw outframemaxy+2*margin btnw btnh],...
//     "fontname", defaultfont,...
//     "fontunits", "points",...
//     "fontsize", 12,...
//     "callback", "cb_sci2c_gui",...
//     "tag", "headerbtn");

// -------------------------
// --- File(s) selection ---
// -------------------------
// Frame
headerframemaxy = outframemaxy //+ 2*margin + widgeth + margin;
selframe = uicontrol("parent", sci2cfig,...
    "relief", "groove",...
    "style", "frame",...
    "units", "pixels",...
    "position", [margin headerframemaxy+margin figw-2*margin 3*margin+2*widgeth],...
    "fontname", "arial",...
    "fontunits", "points",...
    "fontsize", 12,...
    "fontweight", "bold", ...
    "horizontalalignment", "center");
// Frame title
seltitle = uicontrol("parent", sci2cfig,...
    "style", "text",...
    "string", gettext("Input file"),...
    "units", "pixels",...
    "position", [2*margin headerframemaxy+margin+3*margin+2*widgeth-8 50 14],...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 11,...
    "horizontalalignment", "center", ...
    "tag", "seltitle");

// --- Sub-functions selection ---
subfunslabel = uicontrol("parent", sci2cfig,...
    "style", "text",...
    "string", gettext("Sub-functions: "),...
    "position",[2*margin headerframemaxy+2*margin-1 100 widgeth],...
    "horizontalalignment", "left",...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12);
subfunsedit = uicontrol("parent", sci2cfig,...
    "style", "edit",...
    "string", "",...
    "units", "pixels",...
    "position",[3*margin+100 headerframemaxy+2*margin-1 figw-6*margin-100-btnw widgeth],...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12, ...
    "tag", "subfunsedit");
subfunsbtn = uicontrol("parent", sci2cfig,...
    "backgroundcolor", [0.8 0.8 0.8],...
    "style", "pushbutton",...
    "string", gettext("Browse"),...
    "position",[figw-2*margin-btnw headerframemaxy+2*margin btnw btnh],...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12,...
    "callback", "cb_sci2c_gui",...
    "tag", "subfunsbtn");

// --- File selection ---
filelabel = uicontrol("parent", sci2cfig,...
    "style", "text",...
    "string", gettext("Main file name: "),...
    "position",[2*margin headerframemaxy+3*margin-1+widgeth 100 widgeth],...
    "horizontalalignment", "left",...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12,...
    "tag", "filelabel");

fileedit = uicontrol("parent", sci2cfig,...
    "style", "edit",...
    "string", gettext("<enter a file name>"),...
    "position",[3*margin+100 headerframemaxy+3*margin-1+widgeth figw-6*margin-100-btnw widgeth],...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12,...
    "tag", "fileedit");

filebtn = uicontrol("parent", sci2cfig,...
    "backgroundcolor", [0.8 0.8 0.8],...
    "style", "pushbutton",...
    "string", gettext("Browse"),...
    "position",[figw-2*margin-btnw headerframemaxy+3*margin+widgeth btnw btnh],...
    "fontname", defaultfont,...
    "fontunits", "points",...
    "fontsize", 12,...
    "callback", "cb_sci2c_gui",...
    "tag", "filebtn");

endfunction
