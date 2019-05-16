function type_out = FA_TP_USER(PrecisionSpecifier,DefaultType)
// function type_out = FA_TP_USER(PrecisionSpecifier,DefaultType)
// -----------------------------------------------------------------
// Generate the output type of the output argument by using the
// output (AnnotationFnc) generated by CheckAnnotationFunction.
// double and float functions can be used to specify the type
// of the output argument. They are typically used in combination
// with zeros-like function.
//
// Input data:
// PrecisionSpecifier: it can be 'double' or 'float'.
//
// Output data:
// type_out: specifies the type of the output argument. It can be
//           's' for float precision or 'd' for double precision.
//
// Status:
// 26-Oct-2007 -- Raffaele Nutricato: Author.
// 26-Oct-2007 -- Alberto Morea: Test Ok.
// -----------------------------------------------------------------

// ------------------------------
// --- Check input arguments. ---
// ------------------------------
SCI2CNInArgCheck(argn(2),2,2);

if (mtlb_strcmp(PrecisionSpecifier,'int'))
   type_out = 'i';
elseif (mtlb_strcmp(PrecisionSpecifier,'float'))
   type_out = 's';
elseif (mtlb_strcmp(PrecisionSpecifier,'double'))
   type_out = 'd';
elseif (mtlb_strcmp(PrecisionSpecifier,'default'))
   type_out = DefaultType;
else
   error(9999, 'Unknown precision function: ""'+AnnotationFnc+'"".');
end
endfunction
