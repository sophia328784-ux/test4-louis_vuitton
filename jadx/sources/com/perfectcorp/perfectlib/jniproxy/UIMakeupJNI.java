package com.perfectcorp.perfectlib.jniproxy;

import com.perfectcorp.common.a;

/* JADX INFO: loaded from: classes3.dex */
public class UIMakeupJNI {
    static {
        a.a();
    }

    public static final native boolean CUIMakeupLive_AnalyzeFrameYUV420Biplanar(long j2, CUIMakeupLive cUIMakeupLive, byte[] bArr, int i2, int i3, int i4, boolean z);

    public static final native boolean CUIMakeupLive_AsyncDecodeApng(long j2, CUIMakeupLive cUIMakeupLive, int i2, String str, boolean z, Object obj, Object obj2);

    public static final native boolean CUIMakeupLive_EnableCheckForMakeup(long j2, CUIMakeupLive cUIMakeupLive, boolean z);

    public static final native boolean CUIMakeupLive_EnableTrafficLightForEstimatingPD(long j2, CUIMakeupLive cUIMakeupLive, boolean z);

    public static final native boolean CUIMakeupLive_Get3DEyebrowModelVersion(long j2, CUIMakeupLive cUIMakeupLive, Object[] objArr);

    public static final native boolean CUIMakeupLive_Get3DFaceartModelVersion(long j2, CUIMakeupLive cUIMakeupLive, Object[] objArr);

    public static final native boolean CUIMakeupLive_GetBackgroundMetadata(long j2, CUIMakeupLive cUIMakeupLive, Object obj);

    public static final native boolean CUIMakeupLive_GetBackgroundModelVersion(long j2, CUIMakeupLive cUIMakeupLive, Object[] objArr);

    public static final native boolean CUIMakeupLive_GetEstimatedPupilDistance(long j2, CUIMakeupLive cUIMakeupLive, int i2, Object obj);

    public static final native boolean CUIMakeupLive_GetEyeContactModelParameters(long j2, CUIMakeupLive cUIMakeupLive, int i2, int i3, Object obj, Object obj2, Object obj3);

    public static final native boolean CUIMakeupLive_GetFace3DPoseModelVersion(long j2, CUIMakeupLive cUIMakeupLive, Object[] objArr);

    public static final native boolean CUIMakeupLive_GetFaceData(long j2, CUIMakeupLive cUIMakeupLive, Object[] objArr);

    public static final native boolean CUIMakeupLive_GetFaceDistortionIntermediateSize(long j2, CUIMakeupLive cUIMakeupLive, Object obj);

    public static final native boolean CUIMakeupLive_GetFaceRectangle(long j2, CUIMakeupLive cUIMakeupLive, Object[] objArr, boolean[] zArr);

    public static final native boolean CUIMakeupLive_GetHairColorModelVersion(long j2, CUIMakeupLive cUIMakeupLive, Object[] objArr);

    public static final native boolean CUIMakeupLive_GetInternalModelVersion(long j2, CUIMakeupLive cUIMakeupLive, Object[] objArr);

    public static final native boolean CUIMakeupLive_GetInternalModelVersionLV(long j2, CUIMakeupLive cUIMakeupLive, Object[] objArr);

    public static final native boolean CUIMakeupLive_GetMakeupCheckResult(long j2, CUIMakeupLive cUIMakeupLive, Object obj);

    public static final native boolean CUIMakeupLive_GetMakeupMetadata(long j2, CUIMakeupLive cUIMakeupLive, Object[] objArr, Object[] objArr2, Object[] objArr3, Object[] objArr4, Object[] objArr5, Object[] objArr6, Object[] objArr7, Object[] objArr8, Object[] objArr9, Object[] objArr10, Object[] objArr11, Object[] objArr12, Object[] objArr13, Object[] objArr14, Object[] objArr15, Object[] objArr16, Object[] objArr17, Object[] objArr18, Object[] objArr19, Object[] objArr20, Object[] objArr21, Object[] objArr22, Object[] objArr23, Object[] objArr24, Object[] objArr25, Object[] objArr26, Object[] objArr27, boolean[] zArr, boolean[] zArr2);

    public static final native int CUIMakeupLive_GetMaxDetectedFaceCount();

    public static final native boolean CUIMakeupLive_GetNextApngImage(long j2, CUIMakeupLive cUIMakeupLive, int i2, Object obj, int i3, int i4, Object obj2, Object obj3, Object obj4);

    public static final native boolean CUIMakeupLive_GetTrafficLightCheckResult(long j2, CUIMakeupLive cUIMakeupLive, Object obj);

    public static final native boolean CUIMakeupLive_InitFaceDistortionModelCommonInfo(long j2, CUIMakeupLive cUIMakeupLive, int i2, int i3);

    public static final native boolean CUIMakeupLive_InitialEyeContactModelCommonInfo(long j2, CUIMakeupLive cUIMakeupLive, int i2, int i3);

    public static final native void CUIMakeupLive_InitialEyeModelCommonInfo(long j2, CUIMakeupLive cUIMakeupLive, Object[] objArr, int i2, int i3);

    public static final native boolean CUIMakeupLive_InitializeBlushTexture(long j2, CUIMakeupLive cUIMakeupLive, int i2, int i3, byte[] bArr, byte[] bArr2, byte[] bArr3);

    public static final native boolean CUIMakeupLive_InitializeEyebrowTexture(long j2, CUIMakeupLive cUIMakeupLive, Object obj, Object obj2, int i2, int i3, Object obj3);

    public static final native boolean CUIMakeupLive_InitializeFaceArtTexture(long j2, CUIMakeupLive cUIMakeupLive, Object[] objArr, Object obj);

    public static final native boolean CUIMakeupLive_InitializeFaceContour(long j2, CUIMakeupLive cUIMakeupLive, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i2, int i3, int i4, int i5);

    public static final native boolean CUIMakeupLive_IsModelLoaded(long j2, CUIMakeupLive cUIMakeupLive);

    public static final native boolean CUIMakeupLive_LoadEarringModel(long j2, CUIMakeupLive cUIMakeupLive, String str, String str2, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object obj13, float[] fArr);

    public static final native boolean CUIMakeupLive_LoadObject3DHDR(long j2, CUIMakeupLive cUIMakeupLive, String str, Object obj);

    public static final native boolean CUIMakeupLive_LoadObject3DModel(long j2, CUIMakeupLive cUIMakeupLive, String str, Object obj, boolean z, Object obj2);

    public static final native boolean CUIMakeupLive_PreprocessEyeContactModel(long j2, CUIMakeupLive cUIMakeupLive, int[] iArr, byte[] bArr, Object[] objArr, int[] iArr2, int i2, int i3, int i4, int i5, int i6, int i7);

    public static final native boolean CUIMakeupLive_PreprocessEyelashModel(long j2, CUIMakeupLive cUIMakeupLive, byte[] bArr, Object[] objArr, int i2, int i3, int i4, int i5);

    public static final native boolean CUIMakeupLive_PreprocessEyelinerModel(long j2, CUIMakeupLive cUIMakeupLive, int[] iArr, Object[] objArr, int[] iArr2, int[] iArr3, int i2, int i3, int i4, int[] iArr4, byte[] bArr, byte[] bArr2, int[] iArr5, int[] iArr6, int[] iArr7, byte[] bArr3);

    public static final native boolean CUIMakeupLive_PreprocessEyeshadowModel(long j2, CUIMakeupLive cUIMakeupLive, int[] iArr, Object[] objArr, int[] iArr2, int[] iArr3, int i2, int i3, int i4, int i5, int i6, int[] iArr4, int i7, byte[] bArr, byte[] bArr2, int[] iArr5, byte[] bArr3);

    public static final native boolean CUIMakeupLive_PreprocessLipShapeForOmbre(long j2, CUIMakeupLive cUIMakeupLive, byte[] bArr, byte[] bArr2, int i2, int i3, int i4, int i5, boolean z, float f2, float f3);

    public static final native boolean CUIMakeupLive_ResetApngDecoder(long j2, CUIMakeupLive cUIMakeupLive, int i2);

    public static final native boolean CUIMakeupLive_RestartEstimatingPupilDistance(long j2, CUIMakeupLive cUIMakeupLive, int i2);

    public static final native boolean CUIMakeupLive_Set3DEyebrowModelPath(long j2, CUIMakeupLive cUIMakeupLive, String str);

    public static final native boolean CUIMakeupLive_Set3DFaceartModelPath(long j2, CUIMakeupLive cUIMakeupLive, String str);

    public static final native boolean CUIMakeupLive_SetBackgroundModelPath(long j2, CUIMakeupLive cUIMakeupLive, String str);

    public static final native boolean CUIMakeupLive_SetClassicLipstick(long j2, CUIMakeupLive cUIMakeupLive, Object obj, int i2, int i3, Object[] objArr, boolean z, int i4, int i5, long j3, UIShimmer uIShimmer, int i6, int i7, int i8, int i9, int i10);

    public static final native boolean CUIMakeupLive_SetEnableEyebrowGoldenRatio(long j2, CUIMakeupLive cUIMakeupLive, boolean z);

    public static final native boolean CUIMakeupLive_SetEventInfo(long j2, CUIMakeupLive cUIMakeupLive, int i2, int i3);

    public static final native boolean CUIMakeupLive_SetEyebrowMatchOriginalThickness(long j2, CUIMakeupLive cUIMakeupLive, boolean z);

    public static final native boolean CUIMakeupLive_SetFace3DPoseModelPath(long j2, CUIMakeupLive cUIMakeupLive, String str);

    public static final native boolean CUIMakeupLive_SetFaceDistortionModel(long j2, CUIMakeupLive cUIMakeupLive, Object obj, byte[] bArr, int i2);

    public static final native boolean CUIMakeupLive_SetFaceRegionOccludeLV(long j2, CUIMakeupLive cUIMakeupLive, boolean z);

    public static final native boolean CUIMakeupLive_SetHairColorModelPath(long j2, CUIMakeupLive cUIMakeupLive, String str);

    public static final native boolean CUIMakeupLive_SetHairDyeParameter(long j2, CUIMakeupLive cUIMakeupLive, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int i2, int i3, float f2, float f3);

    public static final native boolean CUIMakeupLive_SetInternalModelPaths(long j2, CUIMakeupLive cUIMakeupLive, String str, String str2, String str3, String str4);

    public static final native boolean CUIMakeupLive_SetInternalModelPathsLV(long j2, CUIMakeupLive cUIMakeupLive, String str, String str2, String str3, String str4);

    public static final native boolean CUIMakeupLive_SetLipliner(long j2, CUIMakeupLive cUIMakeupLive, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10);

    public static final native boolean CUIMakeupLive_SetLipstickProfileV2(long j2, CUIMakeupLive cUIMakeupLive, int i2, Object[] objArr, boolean z, int i3, int i4, int i5);

    public static final native boolean CUIMakeupLive_SetMakeupParameters(long j2, CUIMakeupLive cUIMakeupLive, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, boolean z2, int i12, boolean z3, boolean[] zArr, int i13, int i14, int i15, int i16, Object obj, boolean[] zArr2, int[] iArr, int i17, boolean[] zArr3, Object[] objArr, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, Object[] objArr2, Object[] objArr3, int[] iArr2, int[] iArr3, int[] iArr4, float[] fArr, Object[] objArr4, Object[] objArr5, Object[] objArr6, float[] fArr2, float[] fArr3, Object[] objArr7, float[] fArr4, int i18, boolean z14, int i19, float f2, boolean z15, boolean z16, boolean z17, int i20, float f3, boolean z18, int i21, float f4, boolean z19, int i22, float f5, boolean z20, boolean z21, Object[] objArr8);

    public static final native boolean CUIMakeupLive_SetMaxDetectedFaceNumber(long j2, CUIMakeupLive cUIMakeupLive, int i2);

    public static final native boolean CUIMakeupLive_SetSkinSmoothFilterStatus(long j2, CUIMakeupLive cUIMakeupLive, boolean z, float f2, float f3);

    public static final native boolean CUIMakeupLive_SetSkinSmoothV2FilterStatus(long j2, CUIMakeupLive cUIMakeupLive, boolean z, float f2, float f3, int i2);

    public static final native boolean CUIMakeupLive_SetStickerInfo(long j2, CUIMakeupLive cUIMakeupLive, Object[] objArr, Object[] objArr2, Object[] objArr3, Object[] objArr4, Object[] objArr5, Object[] objArr6, Object[] objArr7, Object[] objArr8, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7, int i2);

    public static final native boolean CUIMakeupLive_SetStricknessForMakeupCheckResult(long j2, CUIMakeupLive cUIMakeupLive, int i2);

    public static final native boolean CUIMakeupLive_SetTrackingMode(long j2, CUIMakeupLive cUIMakeupLive, boolean z);

    public static final native boolean CUIMakeupLive_StopDecodeApng(long j2, CUIMakeupLive cUIMakeupLive, int i2);

    public static final native boolean CUIMakeupLive_TrackYUV420Biplanar(long j2, CUIMakeupLive cUIMakeupLive, byte[] bArr, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4);

    public static final native int UIShimmer_getColor(long j2, UIShimmer uIShimmer);

    public static final native int UIShimmer_getDensity(long j2, UIShimmer uIShimmer);

    public static final native int UIShimmer_getGranularity(long j2, UIShimmer uIShimmer);

    public static final native int UIShimmer_getIntensity(long j2, UIShimmer uIShimmer);

    public static final native void delete_CUIMakeupLive(long j2);

    public static final native void delete_UIShimmer(long j2);

    public static final native long new_CUIMakeupLive(String str);

    public static final native long new_UIShimmer(int i2, int i3, int i4, int i5);
}
