//
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009-2009 - DIGITEO - Bruno JOFRET
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//
//

function allHeaders = getAllHeaders()
  allHeaders = [
      "includes/blas.h"
      "includes/lapack.h"
      "includes/constant.h"
      "includes/f2c.h"
      "includes/notFound.h"
      "includes/sci2clib.h"
      "src/c/auxiliaryFunctions/abs/testAbs.h"
      "src/c/auxiliaryFunctions/interfaces/int_rand.h"
      "src/c/auxiliaryFunctions/interfaces/int_sign.h"
      "src/c/auxiliaryFunctions/interfaces/int_size.h"
      "src/c/auxiliaryFunctions/interfaces/int_length.h"
      "src/c/auxiliaryFunctions/interfaces/int_type.h"
      "src/c/auxiliaryFunctions/interfaces/int_isempty.h"
      "src/c/auxiliaryFunctions/interfaces/int_isnan.h"
      "src/c/auxiliaryFunctions/interfaces/int_pythag.h"
      "src/c/auxiliaryFunctions/interfaces/int_frexp.h"
      "src/c/auxiliaryFunctions/interfaces/int_abs.h"
      "src/c/auxiliaryFunctions/interfaces/int_max.h"
      "src/c/auxiliaryFunctions/interfaces/int_min.h"
      "src/c/auxiliaryFunctions/interfaces/int_conj.h"
      "src/c/auxiliaryFunctions/interfaces/int_find.h"
      "src/c/auxiliaryFunctions/find/testFind.h"
      "src/c/auxiliaryFunctions/rand/testRand.h"
      "src/c/auxiliaryFunctions/sign/testSign.h"
      "src/c/auxiliaryFunctions/size/testSize.h"
      "src/c/auxiliaryFunctions/type/testType.h"
      "src/c/auxiliaryFunctions/isnan/testIsNan.h"
      "src/c/auxiliaryFunctions/find2d/testFind2d.h"
      "src/c/auxiliaryFunctions/length/testLength.h"
      "src/c/auxiliaryFunctions/pythag/testPythag.h"
      "src/c/auxiliaryFunctions/includes/abs.h"
      "src/c/auxiliaryFunctions/includes/max.h"
      "src/c/auxiliaryFunctions/includes/min.h"
      "src/c/auxiliaryFunctions/includes/dynlib_auxiliaryfunctions.h"
      "src/c/auxiliaryFunctions/includes/find2d.h"
      "src/c/auxiliaryFunctions/includes/length.h"
      "src/c/auxiliaryFunctions/includes/conj.h"
      "src/c/auxiliaryFunctions/includes/find.h"
      "src/c/auxiliaryFunctions/includes/frexp.h"
      "src/c/auxiliaryFunctions/includes/rand.h"
      "src/c/auxiliaryFunctions/includes/sign.h"
      "src/c/auxiliaryFunctions/includes/size.h"
      "src/c/auxiliaryFunctions/includes/type.h"
      "src/c/auxiliaryFunctions/includes/pythag.h"
      "src/c/auxiliaryFunctions/includes/isempty.h"
      "src/c/auxiliaryFunctions/includes/isnan.h"
      "src/c/auxiliaryFunctions/isempty/testIsEmpty.h"
      "src/c/type/int_imag.h"
      "src/c/type/doubleComplex.h"
      "src/c/type/int_real.h"
      "src/c/type/dynlib_type.h"
      "src/c/type/floatComplex.h"
      "src/c/matrixOperations/interfaces/int_vmagn.h"
      "src/c/matrixOperations/interfaces/int_ones.h"
      "src/c/matrixOperations/interfaces/int_spec.h"
      "src/c/matrixOperations/interfaces/int_zeros.h"
      "src/c/matrixOperations/interfaces/int_OpBackSlash.h"
      "src/c/matrixOperations/interfaces/int_OpApex.h"
      "src/c/matrixOperations/interfaces/int_OpCc.h"
      "src/c/matrixOperations/interfaces/int_OpRc.h"
      "src/c/matrixOperations/interfaces/int_transpose.h"
      "src/c/matrixOperations/interfaces/int_v2magn.h"
      "src/c/matrixOperations/interfaces/int_invert.h"
      "src/c/matrixOperations/interfaces/int_OpSlash.h"
      "src/c/matrixOperations/interfaces/int_OpDotApex.h"
      "src/c/matrixOperations/interfaces/int_trace.h"
      "src/c/matrixOperations/interfaces/int_det.h"
      "src/c/matrixOperations/interfaces/int_eye.h"
      "src/c/matrixOperations/interfaces/int_OpStar.h"
      "src/c/matrixOperations/interfaces/int_chol.h"
      "src/c/matrixOperations/interfaces/int_dist.h"
      "src/c/matrixOperations/interfaces/int_fill.h"
      "src/c/matrixOperations/interfaces/int_expm.h"
      "src/c/matrixOperations/includes/cat.h"
      "src/c/matrixOperations/includes/hilbert.h"
      "src/c/matrixOperations/includes/eye.h"
      "src/c/matrixOperations/includes/matrixTrace.h"
      "src/c/matrixOperations/includes/matrixExponential.h"
      "src/c/matrixOperations/includes/matrixInversion.h"
      "src/c/matrixOperations/includes/infiniteNorm.h"
      "src/c/matrixOperations/includes/zeros.h"
      "src/c/matrixOperations/includes/matrixMagnitude.h"
      "src/c/matrixOperations/includes/chol.h"
      "src/c/matrixOperations/includes/dist.h"
      "src/c/matrixOperations/includes/fill.h"
      "src/c/matrixOperations/includes/dynlib_matrixoperations.h"
      "src/c/matrixOperations/includes/matrixPow.h"
      "src/c/matrixOperations/includes/matrixDivision.h"
      "src/c/matrixOperations/includes/jmat.h"
      "src/c/matrixOperations/includes/logm.h"
      "src/c/matrixOperations/includes/ones.h"
      "src/c/matrixOperations/includes/matrixSquaredMagnitude.h"
      "src/c/matrixOperations/includes/spec.h"
      "src/c/matrixOperations/includes/matrixTranspose.h"
      "src/c/matrixOperations/includes/determ.h"
      "src/c/matrixOperations/includes/matrixMultiplication.h"
      "src/c/elementaryFunctions/cos/testCos.h"
      "src/c/elementaryFunctions/exp/testExp.h"
      "src/c/elementaryFunctions/log/testLog.h"
      "src/c/elementaryFunctions/pow/testPow.h"
      "src/c/elementaryFunctions/sin/testSin.h"
      "src/c/elementaryFunctions/tan/testTan.h"
      "src/c/elementaryFunctions/interfaces/int_asinh.h"
      "src/c/elementaryFunctions/interfaces/int_atanh.h"
      "src/c/elementaryFunctions/interfaces/int_sinh.h"
      "src/c/elementaryFunctions/interfaces/int_tanh.h"
      "src/c/elementaryFunctions/interfaces/int_sqrt.h"
      "src/c/elementaryFunctions/interfaces/int_OpDotHat.h"
      "src/c/elementaryFunctions/interfaces/int_OpHat.h"
      "src/c/elementaryFunctions/interfaces/int_lnp1m1.h"
      "src/c/elementaryFunctions/interfaces/int_round.h"
      "src/c/elementaryFunctions/interfaces/int_log10.h"
      "src/c/elementaryFunctions/interfaces/int_log1p.h"
      "src/c/elementaryFunctions/interfaces/int_floor.h"
      "src/c/elementaryFunctions/interfaces/int_exp10.h"
      "src/c/elementaryFunctions/interfaces/int_cos.h"
      "src/c/elementaryFunctions/interfaces/int_fix.h"
      "src/c/elementaryFunctions/interfaces/int_exp.h"
      "src/c/elementaryFunctions/interfaces/int_int.h"
      "src/c/elementaryFunctions/interfaces/int_log.h"
      "src/c/elementaryFunctions/interfaces/int_pow.h"
      "src/c/elementaryFunctions/interfaces/int_sin.h"
      "src/c/elementaryFunctions/interfaces/int_tan.h"
      "src/c/elementaryFunctions/interfaces/int_acosh.h"
      "src/c/elementaryFunctions/interfaces/int_acos.h"
      "src/c/elementaryFunctions/interfaces/int_asin.h"
      "src/c/elementaryFunctions/interfaces/int_atan.h"
      "src/c/elementaryFunctions/interfaces/int_ceil.h"
      "src/c/elementaryFunctions/interfaces/int_cosh.h"
      "src/c/elementaryFunctions/acos/testAcos.h"
      "src/c/elementaryFunctions/asin/testAsin.h"
      "src/c/elementaryFunctions/atan/testAtan.h"
      "src/c/elementaryFunctions/cosh/testCosh.h"
      "src/c/elementaryFunctions/sinh/testSinh.h"
      "src/c/elementaryFunctions/tanh/testTanh.h"
      "src/c/elementaryFunctions/sqrt/testSqrt.h"
      "src/c/elementaryFunctions/acosh/testAcosh.h"
      "src/c/elementaryFunctions/asinh/testAsinh.h"
      "src/c/elementaryFunctions/atanh/testAtanh.h"
      "src/c/elementaryFunctions/exp10/testExp10.h"
      "src/c/elementaryFunctions/log10/testLog10.h"
      "src/c/elementaryFunctions/log1p/testLog1p.h"
      "src/c/elementaryFunctions/lnp1m1/testLnp1m1.h"
      "src/c/elementaryFunctions/includes/cos.h"
      "src/c/elementaryFunctions/includes/fix.h"
      "src/c/elementaryFunctions/includes/exp.h"
      "src/c/elementaryFunctions/includes/int.h"
      "src/c/elementaryFunctions/includes/log.h"
      "src/c/elementaryFunctions/includes/pow.h"
      "src/c/elementaryFunctions/includes/sin.h"
      "src/c/elementaryFunctions/includes/tan.h"
      "src/c/elementaryFunctions/includes/round.h"
      "src/c/elementaryFunctions/includes/log10.h"
      "src/c/elementaryFunctions/includes/log1p.h"
      "src/c/elementaryFunctions/includes/acos.h"
      "src/c/elementaryFunctions/includes/asin.h"
      "src/c/elementaryFunctions/includes/atan.h"
      "src/c/elementaryFunctions/includes/floor.h"
      "src/c/elementaryFunctions/includes/ceil.h"
      "src/c/elementaryFunctions/includes/exp10.h"
      "src/c/elementaryFunctions/includes/cosh.h"
      "src/c/elementaryFunctions/includes/dynlib_elementaryfunctions.h"
      "src/c/elementaryFunctions/includes/acosh.h"
      "src/c/elementaryFunctions/includes/sinh.h"
      "src/c/elementaryFunctions/includes/lnp1m1.h"
      "src/c/elementaryFunctions/includes/tanh.h"
      "src/c/elementaryFunctions/includes/sqrt.h"
      "src/c/elementaryFunctions/includes/asinh.h"
      "src/c/elementaryFunctions/includes/atan2.h"
      "src/c/elementaryFunctions/includes/atanh.h"
      "src/c/statisticsFunctions/interfaces/int_mean.h"
      "src/c/statisticsFunctions/interfaces/int_prod.h"
      "src/c/statisticsFunctions/interfaces/int_variance.h"
      "src/c/statisticsFunctions/interfaces/int_sum.h"
      "src/c/statisticsFunctions/includes/variance.h"
      "src/c/statisticsFunctions/includes/sum.h"
      "src/c/statisticsFunctions/includes/mean.h"
      "src/c/statisticsFunctions/includes/prod.h"
      "src/c/statisticsFunctions/includes/dynlib_statisticsfunctions.h"
      "src/c/statisticsFunctions/includes/statMax.h"
      "src/c/statisticsFunctions/includes/statMin.h"
      "src/c/operations/includes/subtraction.h"
      "src/c/operations/includes/addition.h"
      "src/c/operations/includes/dynlib_operations.h"
      "src/c/operations/includes/division.h"
      "src/c/operations/includes/multiplication.h"
      "src/c/operations/interface/int_OpDotStar.h"
      "src/c/operations/interface/int_OpDotSlash.h"
      "src/c/operations/interface/int_OpBackSlash.h"
      "src/c/operations/interface/int_OpDotBackSlash.h"
      "src/c/operations/interface/int_OpSlash.h"
      "src/c/operations/interface/int_OpPlus.h"
      "src/c/operations/interface/int_OpMinus.h"
      "src/c/operations/interface/int_OpStar.h"
      "src/c/string/interfaces/int_disp.h"
      "src/c/string/includes/dynlib_string.h"
      "src/c/string/includes/disp.h"
      "src/c/string/includes/string.h"
      "src/c/signalProcessing/fft/fft_internal.h"
      "src/c/signalProcessing/interfaces/int_ifft.h"
      "src/c/signalProcessing/interfaces/int_lpc2cep.h"
      "src/c/signalProcessing/interfaces/int_cepstrum.h"
      "src/c/signalProcessing/interfaces/int_xcorr.h"
      "src/c/signalProcessing/interfaces/int_convol.h"
      "src/c/signalProcessing/interfaces/int_hilbert.h"
      "src/c/signalProcessing/interfaces/int_levin.h"
      "src/c/signalProcessing/interfaces/int_fftshift.h"
      "src/c/signalProcessing/interfaces/int_fft.h"
      "src/c/signalProcessing/interfaces/int_lev.h"
      "src/c/signalProcessing/ifft/ifft_internal.h"
      "src/c/signalProcessing/levin/levinUtils.h"
      "src/c/signalProcessing/includes/hilbert.h"
      "src/c/signalProcessing/includes/fft.h"
      "src/c/signalProcessing/includes/lev.h"
      "src/c/signalProcessing/includes/levin.h"
      "src/c/signalProcessing/includes/conv.h"
      "src/c/signalProcessing/includes/conv2d.h"
      "src/c/signalProcessing/includes/ifft.h"
      "src/c/signalProcessing/includes/fftshift.h"
      "src/c/signalProcessing/includes/lpc2cep.h"
      "src/c/signalProcessing/includes/dynlib_signalprocessing.h"
      "src/c/signalProcessing/includes/crossCorr.h"
      "src/c/implicitList/dynlib_implicitlist.h"
      "src/c/implicitList/int_OpColon.h"
      "src/c/implicitList/implicitList.h"];


endfunction