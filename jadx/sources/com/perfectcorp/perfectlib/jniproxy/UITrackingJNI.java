package com.perfectcorp.perfectlib.jniproxy;

import com.perfectcorp.common.a;

/* JADX INFO: loaded from: classes3.dex */
public class UITrackingJNI {
    static {
        a.a();
    }

    public static final native boolean CUITracking_AnalyzeFrameYUV420Biplanar(long j2, CUITracking cUITracking, byte[] bArr, int i2, int i3, int i4, boolean z);

    public static final native boolean CUITracking_GetFaceRectangle(long j2, CUITracking cUITracking, Object[] objArr, boolean[] zArr);

    public static final native boolean CUITracking_GetInternalModelVersion(long j2, CUITracking cUITracking, Object[] objArr);

    public static final native boolean CUITracking_GetInternalModelVersionLV(long j2, CUITracking cUITracking, Object[] objArr);

    public static final native boolean CUITracking_GetMakeupMetadata(long j2, CUITracking cUITracking, long[] jArr, boolean[] zArr);

    public static final native int CUITracking_GetMaxDetectedFaceCount();

    public static final native long CUITracking_GetVenusTrackingLive(long j2, CUITracking cUITracking);

    public static final native boolean CUITracking_IsModelLoaded(long j2, CUITracking cUITracking);

    public static final native boolean CUITracking_SetInternalModelPaths(long j2, CUITracking cUITracking, String str, String str2);

    public static final native boolean CUITracking_SetInternalModelPathsLV(long j2, CUITracking cUITracking, String str, String str2, String str3, String str4);

    public static final native boolean CUITracking_SetMaxDetectedFaceNumber(long j2, CUITracking cUITracking, int i2);

    public static final native boolean UIMakeupLiveFaceAlignData_isFaceRectOutOfBoundary(long j2, UIMakeupLiveFaceAlignData uIMakeupLiveFaceAlignData);

    public static final native void delete_CUITracking(long j2);

    public static final native void delete_UIMakeupLiveFaceAlignData(long j2);

    public static final native long new_CUITracking(String str);

    public static final native long new_UIMakeupLiveFaceAlignData(int i2, int i3);
}
