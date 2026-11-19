.class public Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/perfectcorp/common/a;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native CUIMakeupLive_AnalyzeFrameYUV420Biplanar(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[BIIIZ)Z
.end method

.method public static final native CUIMakeupLive_AsyncDecodeApng(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ILjava/lang/String;ZLjava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_EnableCheckForMakeup(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Z)Z
.end method

.method public static final native CUIMakeupLive_EnableTrafficLightForEstimatingPD(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Z)Z
.end method

.method public static final native CUIMakeupLive_Get3DEyebrowModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_Get3DFaceartModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_GetBackgroundMetadata(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_GetBackgroundModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_GetEstimatedPupilDistance(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ILjava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_GetEyeContactModelParameters(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_GetFace3DPoseModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_GetFaceData(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_GetFaceDistortionIntermediateSize(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_GetFaceRectangle(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;[Z)Z
.end method

.method public static final native CUIMakeupLive_GetHairColorModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_GetInternalModelVersion(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_GetInternalModelVersionLV(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_GetMakeupCheckResult(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_GetMakeupMetadata(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Z[Z)Z
.end method

.method public static final native CUIMakeupLive_GetMaxDetectedFaceCount()I
.end method

.method public static final native CUIMakeupLive_GetNextApngImage(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ILjava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_GetTrafficLightCheckResult(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_InitFaceDistortionModelCommonInfo(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;II)Z
.end method

.method public static final native CUIMakeupLive_InitialEyeContactModelCommonInfo(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;II)Z
.end method

.method public static final native CUIMakeupLive_InitialEyeModelCommonInfo(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;II)V
.end method

.method public static final native CUIMakeupLive_InitializeBlushTexture(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;II[B[B[B)Z
.end method

.method public static final native CUIMakeupLive_InitializeEyebrowTexture(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_InitializeFaceArtTexture(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_InitializeFaceContour(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIII)Z
.end method

.method public static final native CUIMakeupLive_IsModelLoaded(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;)Z
.end method

.method public static final native CUIMakeupLive_LoadEarringModel(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[F)Z
.end method

.method public static final native CUIMakeupLive_LoadObject3DHDR(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_LoadObject3DModel(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_PreprocessEyeContactModel(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[I[B[Ljava/lang/Object;[IIIIIII)Z
.end method

.method public static final native CUIMakeupLive_PreprocessEyelashModel(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[B[Ljava/lang/Object;IIII)Z
.end method

.method public static final native CUIMakeupLive_PreprocessEyelinerModel(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[I[Ljava/lang/Object;[I[IIII[I[B[B[I[I[I[B)Z
.end method

.method public static final native CUIMakeupLive_PreprocessEyeshadowModel(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[I[Ljava/lang/Object;[I[IIIIII[II[B[B[I[B)Z
.end method

.method public static final native CUIMakeupLive_PreprocessLipShapeForOmbre(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[B[BIIIIZFF)Z
.end method

.method public static final native CUIMakeupLive_ResetApngDecoder(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;I)Z
.end method

.method public static final native CUIMakeupLive_RestartEstimatingPupilDistance(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;I)Z
.end method

.method public static final native CUIMakeupLive_Set3DEyebrowModelPath(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;)Z
.end method

.method public static final native CUIMakeupLive_Set3DFaceartModelPath(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;)Z
.end method

.method public static final native CUIMakeupLive_SetBackgroundModelPath(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;)Z
.end method

.method public static final native CUIMakeupLive_SetClassicLipstick(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;II[Ljava/lang/Object;ZIIJLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;IIIII)Z
.end method

.method public static final native CUIMakeupLive_SetEnableEyebrowGoldenRatio(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Z)Z
.end method

.method public static final native CUIMakeupLive_SetEventInfo(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;II)Z
.end method

.method public static final native CUIMakeupLive_SetEyebrowMatchOriginalThickness(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Z)Z
.end method

.method public static final native CUIMakeupLive_SetFace3DPoseModelPath(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;)Z
.end method

.method public static final native CUIMakeupLive_SetFaceDistortionModel(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;[BI)Z
.end method

.method public static final native CUIMakeupLive_SetFaceRegionOccludeLV(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Z)Z
.end method

.method public static final native CUIMakeupLive_SetHairColorModelPath(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;)Z
.end method

.method public static final native CUIMakeupLive_SetHairDyeParameter(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[I[I[I[I[IIIFF)Z
.end method

.method public static final native CUIMakeupLive_SetInternalModelPaths(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native CUIMakeupLive_SetInternalModelPathsLV(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native CUIMakeupLive_SetLipliner(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;IIIIIIIII)Z
.end method

.method public static final native CUIMakeupLive_SetLipstickProfileV2(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;I[Ljava/lang/Object;ZIII)Z
.end method

.method public static final native CUIMakeupLive_SetMakeupParameters(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ZIIIIIIIIIIZIZ[ZIIIILjava/lang/Object;[Z[II[Z[Ljava/lang/Object;ZZZZZZZZZZ[Ljava/lang/Object;[Ljava/lang/Object;[I[I[I[F[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[F[F[Ljava/lang/Object;[FIZIFZZZIFZIFZIFZZ[Ljava/lang/Object;)Z
.end method

.method public static final native CUIMakeupLive_SetMaxDetectedFaceNumber(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;I)Z
.end method

.method public static final native CUIMakeupLive_SetSkinSmoothFilterStatus(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ZFF)Z
.end method

.method public static final native CUIMakeupLive_SetSkinSmoothV2FilterStatus(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ZFFI)Z
.end method

.method public static final native CUIMakeupLive_SetStickerInfo(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[I[I[I[I[I[I[II)Z
.end method

.method public static final native CUIMakeupLive_SetStricknessForMakeupCheckResult(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;I)Z
.end method

.method public static final native CUIMakeupLive_SetTrackingMode(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Z)Z
.end method

.method public static final native CUIMakeupLive_StopDecodeApng(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;I)Z
.end method

.method public static final native CUIMakeupLive_TrackYUV420Biplanar(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[BIIIZZZZ)Z
.end method

.method public static final native UIShimmer_getColor(JLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)I
.end method

.method public static final native UIShimmer_getDensity(JLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)I
.end method

.method public static final native UIShimmer_getGranularity(JLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)I
.end method

.method public static final native UIShimmer_getIntensity(JLcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)I
.end method

.method public static final native delete_CUIMakeupLive(J)V
.end method

.method public static final native delete_UIShimmer(J)V
.end method

.method public static final native new_CUIMakeupLive(Ljava/lang/String;)J
.end method

.method public static final native new_UIShimmer(IIII)J
.end method
