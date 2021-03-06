#emacs, this is -*-Python-*- mode

cimport libc.stdint

cdef extern from "ipp.h" nogil:
    ctypedef enum IppStatus:
        ippStsNotSupportedModeErr
        ippStsCpuNotSupportedErr

        ippStsEphemeralKeyErr
        ippStsMessageErr
        ippStsShareKeyErr
        ippStsIvalidPublicKey
        ippStsIvalidPrivateKey
        ippStsOutOfECErr
        ippStsECCInvalidFlagErr

        ippStsMP3FrameHeaderErr
        ippStsMP3SideInfoErr

        ippStsBlockStepErr
        ippStsMBStepErr

        ippStsAacPrgNumErr
        ippStsAacSectCbErr
        ippStsAacSfValErr
        ippStsAacCoefValErr
        ippStsAacMaxSfbErr
        ippStsAacPredSfbErr
        ippStsAacPlsDataErr
        ippStsAacGainCtrErr
        ippStsAacSectErr
        ippStsAacTnsNumFiltErr
        ippStsAacTnsLenErr
        ippStsAacTnsOrderErr
        ippStsAacTnsCoefResErr
        ippStsAacTnsCoefErr
        ippStsAacTnsDirectErr
        ippStsAacTnsProfileErr
        ippStsAacErr
        ippStsAacBitOffsetErr
        ippStsAacAdtsSyncWordErr
        ippStsAacSmplRateIdxErr
        ippStsAacWinLenErr
        ippStsAacWinGrpErr
        ippStsAacWinSeqErr
        ippStsAacComWinErr
        ippStsAacStereoMaskErr
        ippStsAacChanErr
        ippStsAacMonoStereoErr
        ippStsAacStereoLayerErr
        ippStsAacMonoLayerErr
        ippStsAacScalableErr
        ippStsAacObjTypeErr
        ippStsAacWinShapeErr
        ippStsAacPcmModeErr
        ippStsVLCUsrTblHeaderErr
        ippStsVLCUsrTblUnsupportedFmtErr
        ippStsVLCUsrTblEscAlgTypeErr
        ippStsVLCUsrTblEscCodeLengthErr
        ippStsVLCUsrTblCodeLengthErr
        ippStsVLCInternalTblErr
        ippStsVLCInputDataErr
        ippStsVLCAACEscCodeLengthErr
        ippStsNoiseRangeErr
        ippStsUnderRunErr
        ippStsPaddingErr
        ippStsCFBSizeErr
        ippStsPaddingSchemeErr
        ippStsInvalidCryptoKeyErr
        ippStsLengthErr
        ippStsBadModulusErr
        ippStsLPCCalcErr
        ippStsRCCalcErr
        ippStsIncorrectLSPErr
        ippStsNoRootFoundErr
        ippStsJPEG2KBadPassNumber
        ippStsJPEG2KDamagedCodeBlock
        ippStsH263CBPYCodeErr
        ippStsH263MCBPCInterCodeErr
        ippStsH263MCBPCIntraCodeErr
        ippStsNotEvenStepErr
        ippStsHistoNofLevelsErr
        ippStsLUTNofLevelsErr
        ippStsMP4BitOffsetErr
        ippStsMP4QPErr
        ippStsMP4BlockIdxErr
        ippStsMP4BlockTypeErr
        ippStsMP4MVCodeErr
        ippStsMP4VLCCodeErr
        ippStsMP4DCCodeErr
        ippStsMP4FcodeErr
        ippStsMP4AlignErr
        ippStsMP4TempDiffErr
        ippStsMP4BlockSizeErr
        ippStsMP4ZeroBABErr
        ippStsMP4PredDirErr
        ippStsMP4BitsPerPixelErr
        ippStsMP4VideoCompModeErr
        ippStsMP4LinearModeErr
        ippStsH263PredModeErr
        ippStsH263BlockStepErr
        ippStsH263MBStepErr
        ippStsH263FrameWidthErr
        ippStsH263FrameHeightErr
        ippStsH263ExpandPelsErr
        ippStsH263PlaneStepErr
        ippStsH263QuantErr
        ippStsH263MVCodeErr
        ippStsH263VLCCodeErr
        ippStsH263DCCodeErr
        ippStsH263ZigzagLenErr
        ippStsFBankFreqErr
        ippStsFBankFlagErr
        ippStsFBankErr
        ippStsNegOccErr
        ippStsCdbkFlagErr
        ippStsSVDCnvgErr
        ippStsJPEGHuffTableErr
        ippStsJPEGDCTRangeErr
        ippStsJPEGOutOfBufErr
        ippStsDrawTextErr
        ippStsChannelOrderErr
        ippStsZeroMaskValuesErr
        ippStsQuadErr
        ippStsRectErr
        ippStsCoeffErr
        ippStsNoiseValErr
        ippStsDitherLevelsErr
        ippStsNumChannelsErr
        ippStsCOIErr
        ippStsDivisorErr
        ippStsAlphaTypeErr
        ippStsGammaRangeErr
        ippStsGrayCoefSumErr
        ippStsChannelErr
        ippStsToneMagnErr
        ippStsToneFreqErr
        ippStsTonePhaseErr
        ippStsTrnglMagnErr
        ippStsTrnglFreqErr
        ippStsTrnglPhaseErr
        ippStsTrnglAsymErr
        ippStsHugeWinErr
        ippStsJaehneErr
        ippStsStrideErr
        ippStsEpsValErr
        ippStsWtOffsetErr
        ippStsAnchorErr
        ippStsMaskSizeErr
        ippStsShiftErr
        ippStsSampleFactorErr
        ippStsSamplePhaseErr
        ippStsFIRMRFactorErr
        ippStsFIRMRPhaseErr
        ippStsRelFreqErr
        ippStsFIRLenErr
        ippStsIIROrderErr
        ippStsDlyLineIndexErr
        ippStsResizeFactorErr
        ippStsInterpolationErr
        ippStsMirrorFlipErr
        ippStsMoment00ZeroErr
        ippStsThreshNegLevelErr
        ippStsThresholdErr
        ippStsContextMatchErr
        ippStsFftFlagErr
        ippStsFftOrderErr
        ippStsStepErr
        ippStsScaleRangeErr
        ippStsDataTypeErr
        ippStsOutOfRangeErr
        ippStsDivByZeroErr
        ippStsMemAllocErr
        ippStsNullPtrErr
        ippStsRangeErr
        ippStsSizeErr
        ippStsBadArgErr
        ippStsNoMemErr
        ippStsSAReservedErr3
        ippStsErr
        ippStsSAReservedErr1

        ippStsNoErr


        ippStsNoOperation
        ippStsMisalignedBuf
        ippStsSqrtNegArg
        ippStsInvZero
        ippStsEvenMedianMaskSize
        ippStsDivByZero
        ippStsLnZeroArg
        ippStsLnNegArg
        ippStsNanArg
        ippStsJPEGMarker
        ippStsResFloor
        ippStsOverflow
        ippStsLSFLow
        ippStsLSFHigh
        ippStsLSFLowAndHigh
        ippStsZeroOcc
        ippStsUnderflow
        ippStsSingularity
        ippStsDomain
        ippStsNonIntelCpu
        ippStsCpuMismatch
        ippStsNoIppFunctionFound
        ippStsDllNotFoundBestUsed
        ippStsNoOperationInDll
        ippStsInsufficientEntropy
        ippStsOvermuchStrings
        ippStsOverlongString
        ippStsAffineQuadChanged

    ctypedef enum IppRoundMode:
        ippRndZero
        ippRndNear

    ctypedef enum IppiMaskSize:
        ippMskSize1x3
        ippMskSize1x5
        ippMskSize3x1
        ippMskSize3x3
        ippMskSize5x1
        ippMskSize5x5

    ctypedef enum IppiBayerGrid:
        ippiBayerBGGR
        ippiBayerRGGB
        ippiBayerGBRG
        ippiBayerGRBG

    ctypedef enum IppCpuType:
        ippCpuUnknown
        ippCpuPP
        ippCpuPMX
        ippCpuPPR
        ippCpuPII
        ippCpuPIII
        ippCpuP4
        ippCpuP4HT
        ippCpuP4HT2
        ippCpuCentrino
        ippCpuITP
        ippCpuITP2

    ctypedef enum IppCmpOp:
        ippCmpLess
        ippCmpLessEq
        ippCmpEq
        ippCmpGreaterEq
        ippCmpGreater

    ctypedef unsigned char   Ipp8u
    ctypedef unsigned short  Ipp16u
    ctypedef unsigned int    Ipp32u


    ctypedef libc.stdint.int8_t Ipp8s
    ctypedef libc.stdint.int16_t Ipp16s
    ctypedef libc.stdint.int32_t Ipp32s
    ctypedef libc.stdint.uint64_t Ipp64u
    ctypedef float   Ipp32f
    ctypedef double  Ipp64f

    ctypedef struct IppiSize:
        int width
        int height

    ctypedef struct IppiRect:
        int x
        int y
        int width
        int height

    ctypedef struct IppiPoint:
        int x
        int y

    ctypedef enum IppHintAlgorithm:
        ippAlgHintNone
        ippAlgHintFast
        ippAlgHintAccurate

    ctypedef enum IppiBorderType:
        ippBorderRepl
        ippBorderWrap
        ippBorderMirror
        ippBorderMirrorR
        ippBorderDefault
        ippBorderConst
        ippBorderTransp
        ippBorderInMemTop
        ippBorderInMemBottom
        ippBorderInMemLeft
        ippBorderInMemRight
        ippBorderInMem

    ctypedef enum IppiMaskSize:
        ippMskSize1x3
        ippMskSize1x5
        ippMskSize3x1
        ippMskSize3x3
        ippMskSize5x1
        ippMskSize5x5

    ctypedef enum IppDataType:
        ippUndef
        ipp1u
        ipp8u
        ipp8uc
        ipp8s
        ipp8sc
        ipp16u
        ipp16uc
        ipp16s
        ipp16sc
        ipp32u
        ipp32uc
        ipp32s
        ipp32sc
        ipp32f
        ipp32fc
        ipp64u
        ipp64uc
        ipp64s
        ipp64sc
        ipp64f
        ipp64fc

#cdef extern from "ippbase.h":
    ctypedef struct IppLibraryVersion:
        int major
        int minor
        int majorBuild
        int build
        char targetCpu[4]
        const char* Name
        const char* Version
        const char* BuildDate

#cdef extern from "ippcore.h":
#    IppStatus ippStaticInit()
#    IppStatus ippStaticFree()
#    IppStatus ippStaticInitBest()
#    IppStatus ippStaticInitCpu( IppCpuType cpu )

#    IppStatus ippCoreSetFlushToZero( int value, unsigned int* pUMask )
#    IppStatus ippCoreSetDenormAreZeros( int value )

#    IppCpuType ippCoreGetCpuType()
    char* ippGetStatusString( IppStatus StsCode )
    IppStatus ippInit()
    IppStatus ippGetCpuFeatures( Ipp64u* pFeaturesMask, Ipp32u  pCpuidInfoRegs[4])
    Ipp64u ippGetEnabledCpuFeatures()

#cdef extern from "ippi.h":
    ctypedef struct IppiMomentState_64f
    ctypedef Ipp64f IppiHuMoment_64f[7]

    const IppLibraryVersion* ippiGetLibVersion()

    Ipp8u* ippiMalloc_8u_C1( int widthPixels, int heightPixels, int* pStepBytes )
    Ipp8u* ippiMalloc_8u_C3( int widthPixels, int heightPixels, int* pStepBytes )
    Ipp32f* ippiMalloc_32f_C1( int widthPixels, int heightPixels, int* pStepBytes )
    void ippiFree(void* ptr)
    IppStatus ippiSub_8u_C1IRSfs(Ipp8u* pSrc, int srcStep, Ipp8u* pSrcDst,
                                 int srcDstStep, IppiSize roiSize, int scaleFactor)
    IppStatus ippiSub_8u_C1RSfs( Ipp8u* pSrc1, int src1Step, Ipp8u* pSrc2,
                                 int src2Step, Ipp8u* pDst, int dstStep, IppiSize roiSize,
                                 int scaleFactor)
    IppStatus ippiSub_32f_C1IR(Ipp32f* pSrc, int srcStep, Ipp32f* pSrcDst,
                               int srcDstStep, IppiSize roiSize)
    IppStatus ippiSub_32f_C1R(Ipp32f* pSrc1, int src1Step, Ipp32f* pSrc2,
                              int src2Step, Ipp32f* pDst, int dstStep, IppiSize roiSize)

    IppStatus ippiAdd_8u_C1RSfs(Ipp8u* pSrc1, int src1Step, Ipp8u* pSrc2,
                                int src2Step, Ipp8u* pDst, int dstStep, IppiSize roiSize,
                                int scaleFactor)
    IppStatus ippiAdd_8u_C1IRSfs(Ipp8u* pSrc, int srcStep, Ipp8u* pSrcDst,
                                 int srcDstStep, IppiSize roiSize, int scaleFactor)
    IppStatus ippiAdd_32f_C1IR(Ipp32f* pSrc, int srcStep, Ipp32f* pSrcDst,
                               int srcDstStep, IppiSize roiSize)
    IppStatus ippiSet_8u_C1R( Ipp8u value, Ipp8u* pDst, int dstStep,
                              IppiSize roiSize )
    IppStatus ippiSet_8u_C1MR( Ipp8u value, Ipp8u* pDst, int dstStep,
                               IppiSize roiSize,
                               Ipp8u* pMask, int maskStep )
    IppStatus ippiSet_32f_C1R( Ipp32f value, Ipp32f* pDst, int dstStep,
                              IppiSize roiSize )
    IppStatus ippiConvert_8u32f_C1R(Ipp8u* pSrc, int srcStep, Ipp32f* pDst, int dstStep,
                                    IppiSize roiSize )
    IppStatus ippiConvert_32f8u_C1R(Ipp32f* pSrc, int srcStep, Ipp8u* pDst, int dstStep,
                                     IppiSize roiSize, IppRoundMode roundMode )
    IppStatus ippiThreshold_LT_8u_C1IR(Ipp8u* pSrcDst, int srcDstStep,
                                       IppiSize roiSize, Ipp8u threshold)
    IppStatus ippiThreshold_LT_32f_C1IR(Ipp32f* pSrcDst, int srcDstStep,
                                        IppiSize roiSize, Ipp32f threshold)
    IppStatus ippiThreshold_Val_8u_C1IR(Ipp8u* pSrcDst, int srcDstStep,
                                        IppiSize roiSize, Ipp8u threshold, Ipp8u value, IppCmpOp ippCmpOp)
    IppStatus ippiThreshold_Val_32f_C1IR(Ipp32f* pSrcDst, int srcDstStep,
                                         IppiSize roiSize, Ipp32f threshold, Ipp32f value, IppCmpOp ippCmpOp)
    IppStatus ippiMin_8u_C1R(Ipp8u* pSrc, int srcStep, IppiSize roiSize, Ipp8u* pMin)
    IppStatus ippiMin_32f_C1R(Ipp32f* pSrc, int srcStep, IppiSize roiSize, Ipp32f* pMin)
    IppStatus ippiMax_8u_C1R(Ipp8u* pSrc, int srcStep, IppiSize roiSize, Ipp8u* pMax)
    IppStatus ippiMax_32f_C1R(Ipp32f* pSrc, int srcStep, IppiSize roiSize, Ipp32f* pMax)
    IppStatus ippiCopy_8u_C1R(Ipp8u* pSrc, int srcStep,
                              Ipp8u* pDst, int dstStep, IppiSize roiSize )
    IppStatus ippiCopy_32f_C1R(Ipp32f* pSrc, int srcStep,
                               Ipp32f* pDst, int dstStep, IppiSize roiSize )
    IppStatus ippiMulC_32f_C1R(Ipp32f* pSrc, int srcStep, Ipp32f value, Ipp32f* pDst,
                               int dstStep, IppiSize roiSize)
    IppStatus ippiMulC_32f_C1IR(Ipp32f value, Ipp32f* pSrcDst, int srcDstStep,
                                IppiSize roiSize)
    IppStatus ippiCompareC_8u_C1R(Ipp8u* pSrc, int srcStep, Ipp8u value,
                                  Ipp8u* pDst, int dstStep,
                                  IppiSize roiSize,  IppCmpOp ippCmpOp)
    IppStatus ippiCompare_8u_C1R( Ipp8u* pSrc1, int src1Step,
                                  Ipp8u* pSrc2, int src2Step,
                                  Ipp8u* pDst,  int dstStep,
                                  IppiSize roiSize,   IppCmpOp ippCmpOp)
    IppStatus ippiCompare_32f_C1R(Ipp32f* pSrc1, int src1Step,
                                  Ipp32f* pSrc2, int src2Step,
                                  Ipp8u* pDst,  int dstStep,
                                  IppiSize roiSize,   IppCmpOp ippCmpOp)
    IppStatus ippiCompareEqualEps_32f_C1R( Ipp32f* pSrc1, int src1Step,
                                           Ipp32f* pSrc2, int src2Step,
                                           Ipp8u*  pDst,  int dstStep,
                                           IppiSize roiSize,    Ipp32f eps)
    IppStatus ippiDivC_8u_C1IRSfs(Ipp8u value, Ipp8u* pSrcDst,
                                  int srcDstStep, IppiSize roiSize, int scaleFactor)
    IppStatus ippiDivC_32f_C1R(Ipp32f* pSrc, int srcStep, Ipp32f value,
                               Ipp32f* pDst, int dstStep, IppiSize roiSize)
    IppStatus ippiMinIndx_8u_C1R(Ipp8u* pSrc, int srcStep, IppiSize roiSize, Ipp8u* pMin,
                                 int* pIndexX, int* pIndexY)
    IppStatus ippiMaxIndx_8u_C1R(Ipp8u* pSrc, int srcStep, IppiSize roiSize, Ipp8u* pMax,
                                 int* pIndexX, int* pIndexY)
    IppStatus ippiMaxIndx_32f_C1R(Ipp32f* pSrc, int srcStep, IppiSize roiSize,
                                  Ipp32f* pMax, int* pIndexX, int* pIndexY)
    IppStatus ippiSqr_32f_C1R(Ipp32f* pSrc, int srcStep,
                              Ipp32f* pDst, int dstStep, IppiSize roiSize)
    IppStatus ippiSqr_32f_C1IR(Ipp32f* pSrcDst, int srcDstStep,
                              IppiSize roiSize)
    IppStatus ippiSqr_8u_C1IRSfs(Ipp8u* pSrcDst, int srcDstStep,
                              IppiSize roiSize, int scaleFactor)
    IppStatus ippiSqrt_32f_C1IR(Ipp32f* pSrcDst, int srcDstStep,
                                IppiSize roiSize)
    IppStatus ippiMomentGetStateSize_64f(IppHintAlgorithm hint,int* stateSize)
    void* ippMalloc(int size)
    void ippFree(void* ptr)
    IppStatus ippiMomentInit_64f(IppiMomentState_64f* pState, IppHintAlgorithm hint)
    IppStatus ippiMoments64f_8u_C1R( Ipp8u*  pSrc, int srcStep, IppiSize roiSize, IppiMomentState_64f* pCtx)
    IppStatus ippiMoments64f_32f_C1R(Ipp32f* pSrc, int srcStep, IppiSize roiSize, IppiMomentState_64f* pCtx)
    IppStatus ippiGetSpatialMoment_64f(IppiMomentState_64f* pState,
                                       int mOrd, int nOrd, int nChannel,
                                       IppiPoint roiOffset, Ipp64f* pValue)
    IppStatus ippiGetCentralMoment_64f(IppiMomentState_64f* pState,
                                       int mOrd, int nOrd, int nChannel,
                                       Ipp64f* pValue)
    IppStatus ippiGetNormalizedSpatialMoment_64f(IppiMomentState_64f* pState,
                                                 int mOrd, int nOrd, int nChannel,
                                                 IppiPoint roiOffset, Ipp64f* pValue)
    IppStatus ippiGetNormalizedCentralMoment_64f(IppiMomentState_64f* pState,
                                                 int mOrd, int nOrd, int nChannel,
                                                 Ipp64f* pValue)
    IppStatus ippiGetHuMoments_64f(IppiMomentState_64f* pState,
                                   int nChannel, IppiHuMoment_64f pHm)

    IppStatus ippiHistogramEven_8u_C1R(Ipp8u* pSrc, int srcStep, IppiSize roiSize,
                                       Ipp32s* pHist, Ipp32s* pLevels,
                                       int nLevels, Ipp32s lowerLevel, Ipp32s upperLevel)

    IppStatus ippiMean_8u_C1R(Ipp8u* pSrc, int srcStep,
                              IppiSize roiSize, Ipp64f* pMean)
    IppStatus ippiDotProd_8u64f_C1R(Ipp8u* pSrc1, int src1Step,
                              Ipp8u* pSrc2, int src2Step,
                              IppiSize roiSize, Ipp64f *pDp)
    IppStatus ippiDotProd_32f64f_C1R(Ipp32f* pSrc1, int src1Step,
                                    Ipp32f* pSrc2, int src2Step,
                                    IppiSize roiSize, Ipp64f* result,
                                    IppHintAlgorithm hint)
    IppStatus ippiFilterSobelHorizBorderGetBufferSize(IppiSize dstRoiSize,
                                                      IppiMaskSize mask,
                                                      IppDataType srcDataType,
                                                      IppDataType dstDataType,
                                                      int numChannels,
                                                      int* pBufferSize)
    IppStatus ippiFilterSobelHorizBorder_32f_C1R(Ipp32f* pSrc, int srcStep,
                                      Ipp32f* pDst, int dstStep,
                                      IppiSize dstRoiSize, IppiMaskSize mask,
                                      IppiBorderType borderType,
                                      Ipp32f borderValue,
                                      Ipp8u* pBuffer)
    IppStatus ippiFilterSobelVertBorderGetBufferSize(IppiSize dstRoiSize,
                                                     IppiMaskSize mask,
                                                     IppDataType srcDataType,
                                                     IppDataType dstDataType,
                                                     int numChannels,
                                                     int* pBufferSize)
    IppStatus ippiFilterSobelVertBorder_32f_C1R(Ipp32f* pSrc, int srcStep,
                                      Ipp32f* pDst, int dstStep,
                                      IppiSize dstRoiSize, IppiMaskSize mask,
                                      IppiBorderType borderType,
                                      Ipp32f borderValue,
                                      Ipp8u* pBuffer)

#cdef extern from "ippcv.h":
    IppStatus ippiAdd_8u32f_C1IR(Ipp8u*  pSrc, int srcStep,
                                 Ipp32f* pSrcDst, int srcDstStep,
                                 IppiSize roiSize )
    IppStatus ippiAddSquare_8u32f_C1IR(Ipp8u*  pSrc, int srcStep,
                                       Ipp32f* pSrcDst, int srcDstStep,
                                       IppiSize roiSize)
    IppStatus ippiAddWeighted_8u32f_C1IR( Ipp8u*  pSrc, int srcStep,
                                          Ipp32f* pSrcDst, int srcDstStep,
                                          IppiSize roiSize, Ipp32f alpha )
    IppStatus ippiAddWeighted_32f_C1IR(Ipp32f* pSrc, int srcStep,
                                       Ipp32f* pSrcDst, int srcDstStep,
                                       IppiSize roiSize, Ipp32f alpha )
    IppStatus ippiMean_StdDev_8u_C1R(Ipp8u* pSrc, int srcStep,
                                     IppiSize roiSize,
                                     Ipp64f* mean, Ipp64f* stddev )
    IppStatus ippiMinMaxIndx_8u_C1R( Ipp8u* pSrc, int srcStep, IppiSize roiSize,
                                     Ipp32f* minVal, Ipp32f* maxVal,
                                     IppiPoint* minIdx, IppiPoint* maxIdx )
    IppStatus ippiAbsDiff_8u_C1R( Ipp8u* pSrc1, int srcStep,
                                  Ipp8u* pSrc2, int src2Step,
                                  Ipp8u* pDst, int dstStep, IppiSize roiSize )
    IppStatus ippiAbsDiff_32f_C1R(Ipp32f* pSrc1, int srcStep,
                                  Ipp32f* pSrc2, int src2Step,
                                  Ipp32f* pDst, int dstStep, IppiSize roiSize )
    IppStatus ippiAbs_32f_C1R(Ipp32f* pSrc, int srcStep,
                              Ipp32f* pDst, int dstStep,
                              IppiSize roiSize)
    IppStatus ippiAbs_32f_C1IR(Ipp32f* pSrcDst, int srcDstStep,
                               IppiSize roiSize)
    IppStatus ippiFilterLowpass_8u_C1R(Ipp8u* pSrc, int srcStep,Ipp8u* pDst, int dstStep,IppiSize roiSize,IppiMaskSize maskSize)

    IppStatus ippiCFAToRGB_8u_C1C3R(Ipp8u *pSrc, IppiRect srcRoi, IppiSize srcSize, int srcStep, Ipp8u *pDst, int dstStep, IppiBayerGrid bayerGrid, int interpolation)
    IppStatus ippiColorToGray_8u_C3C1R(Ipp8u *pSrc, int srcStep, Ipp8u *pDst, int dstStep, IppiSize roiSize, Ipp32f coeffs[3])
    IppStatus ippiRGBToGray_8u_C3C1R(Ipp8u *pSrc, int srcStep, Ipp8u *pDst, int dstStep, IppiSize roiSize)
    IppStatus ippiRGBToHSV_8u_C3R(Ipp8u *pSrc, int srcStep, Ipp8u *pDst, int dstStep, IppiSize roiSize)
    IppStatus ippiMul_8u_C1IRSfs(Ipp8u *pSrc, int srcStep, Ipp8u *pSrcDst, int srcDstStep, IppiSize roiSize, int scaleFactor)
    IppStatus ippiErode3x3_8u_C1IR( Ipp8u* pSrcDst, int srcDstStep, IppiSize roiSize)

#cdef extern from "ipps.h":
    Ipp8u* ippsMalloc_8u(int len)
    void ippsFree(void* ptr)
    IppStatus ippSetFlushToZero( int value, unsigned int* pUMask )
    IppStatus ippSetDenormAreZeros( int value )
