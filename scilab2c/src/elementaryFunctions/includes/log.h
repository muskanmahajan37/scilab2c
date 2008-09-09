/*
 *  Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 *  Copyright (C) 2007-2008 - INRIA - Bruno JOFRET
 *
 *  This file must be used under the terms of the CeCILL.
 *  This source file is licensed as described in the file COPYING, which
 *  you should have received as part of this distribution.  The terms
 *  are also available at
 *  http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
 *
 */

#ifndef __LOG_H__
#define __LOG_H__

#include "floatComplex.h"
#include "doubleComplex.h"

/*
** Compute Logarithm for different types .
*/

/*
** \brief Float Logarithm function
** \param in : input value.
*/
float		slogs(float in);

/*
** \brief Double Logarithm function
** \param in : input value.
*/
double		dlogs(double in);

/*
** \brief Float Complex Logarithm function
** \param in : input value.
*/
floatComplex	clogs(floatComplex in);

/*
** \brief Double Complex Logarithm function
** \param in : input value.
*/
doubleComplex	zlogs(doubleComplex in);

/*
** \brief Float Matrix Logarithm function
** \param in : input array value.
** \param out : output array value.
** \param size : the size of in and out arrays.
*/
void		sloga(float* in, int size, float* out);

/*
** \brief Double Matrix Logarithm function
** \param in : input array value.
** \param out : output array value.
** \param size : the size of in and out arrays.
*/
void		dloga(double* in, int size, double* out);

/*
** \brief Float Complex Matrix Logarithm function
** \param in : input array value.
** \param out : output array value.
** \param size : the size of in and out arrays.
*/
void		cloga(floatComplex* in, int size, floatComplex* out);

/*
** \brief Double Complex Matrix Logarithm function
** \param in : input array value.
** \param out : output array value.
** \param size : the size of in and out arrays.
*/
void		zloga(doubleComplex* in, int size, doubleComplex* out);

#endif /* !__LOG_H__ */
