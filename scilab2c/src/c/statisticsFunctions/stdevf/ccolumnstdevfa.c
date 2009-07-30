/*
 *  Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 *  Copyright (C) 2008-2008 - INRIA - Allan SIMON
 *
 *  This file must be used under the terms of the CeCILL.
 *  This source file is licensed as described in the file COPYING, which
 *  you should have received as part of this distribution.  The terms
 *  are also available at
 *  http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
 *
 */


#include "stdevf.h"


void ccolumnstdevfa(floatComplex *in1, int lines, int columns, floatComplex*in2, floatComplex* out){
  int i = 0;
  int j = 0;
  floatComplex temp = FloatComplex(0.0f,0.0f);
  floatComplex accumulate = FloatComplex(0.0f,0.0f);
  float accumulateFre =0.0f ;
    
  ccolumnmeanfa(in1, lines, columns, in2, out );


  /*we first multiply each cell of the input matrix by its coefficient*/
  for (j = 0; j < lines; ++j)
    {
      accumulate = FloatComplex(0.0f,0.0f);
      accumulateFre =0.0f ;
      temp = FloatComplex(0.0f,0.0f);

      for ( i = 0 ; i < columns; ++i )
        {

         temp = cpows (  cdiffs (in1[lines*i + j] ,out[j] ) ,FloatComplex (2.0f, 0.0f ) );
         temp = cmuls( in2[lines*i + j] , temp);

         accumulate = cadds( temp , accumulate);
         accumulateFre +=  creals(in2[lines*i + j]);

        } 

      if (lines <= 1)
        {
          out[j] = cmuls (FloatComplex(0.0f,0.0f) , accumulate ) ; 
        }
      else
        {
          accumulate = FloatComplex(  creals(accumulate ) / (accumulateFre - 1) , cimags(accumulate)  / (accumulateFre - 1));
          out[j] =csqrts(accumulate);
        }
    }

}
