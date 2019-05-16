function SCI2Cmdelete(InFile)
// function SCI2Cmdelete(InFile)
// -----------------------------------------------------------------
// #RNU_RES_B
// Deletes the input files only if the file really exists.
// This avoids the issuing of the error generated by mdelete.
//
// Input data:
// InFile: full path of the file to be deleted.
//
// Output data:
// #RNU_RES_E
//
// Status:
// 12-Apr-2007 -- Nutricato Raffaele: Author.
//
// Copyright 2007 Raffaele Nutricato.
// Contact: raffaele.nutricato@tiscali.it
// -----------------------------------------------------------------

// ------------------------------
// --- Check input arguments. ---
// ------------------------------
SCI2CNInArgCheck(argn(2),1,1);

[Inx,Inierr]=fileinfo(InFile);
if Inierr == 0
   mdelete(InFile);//NUT: questa stampa a video il file che sta cancellando.
   //NUT ho fatto delle altre prove e mi funzionava tutto. solo che quando 
   //NUT eseguo il codice scilab to c mi stampa a video tutto il nome del file.
end

endfunction
