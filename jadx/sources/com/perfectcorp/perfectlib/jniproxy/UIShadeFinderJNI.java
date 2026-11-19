package com.perfectcorp.perfectlib.jniproxy;

import com.perfectcorp.common.a;

/* JADX INFO: loaded from: classes3.dex */
public class UIShadeFinderJNI {
    static {
        a.a();
    }

    public static final native boolean CUIShadeFinder_GetInternalModelVersion(long j2, CUIShadeFinder cUIShadeFinder, Object[] objArr);

    public static final native boolean CUIShadeFinder_GetInternalModelVersionLV(long j2, CUIShadeFinder cUIShadeFinder, Object[] objArr);

    public static final native boolean CUIShadeFinder_GetShadeFinderCheckResult(long j2, CUIShadeFinder cUIShadeFinder, Object obj);

    public static final native boolean CUIShadeFinder_GetShadeFinderData__SWIG_0(long j2, CUIShadeFinder cUIShadeFinder, Object obj, boolean z);

    public static final native boolean CUIShadeFinder_GetShadeFinderData__SWIG_1(long j2, CUIShadeFinder cUIShadeFinder, String str, Object obj);

    public static final native boolean CUIShadeFinder_GetShadeFinderModelVersion(long j2, CUIShadeFinder cUIShadeFinder, Object[] objArr, int i2);

    public static final native boolean CUIShadeFinder_GetShadeFinderNeighborShade(long j2, CUIShadeFinder cUIShadeFinder, Object[] objArr, int i2, Object obj);

    public static final native boolean CUIShadeFinder_GetShadeFinderShadeMatching(long j2, CUIShadeFinder cUIShadeFinder, Object obj, Object[] objArr, Object[] objArr2);

    public static final native boolean CUIShadeFinder_IsModelLoaded(long j2, CUIShadeFinder cUIShadeFinder);

    public static final native boolean CUIShadeFinder_ResetShadeFinder(long j2, CUIShadeFinder cUIShadeFinder);

    public static final native boolean CUIShadeFinder_SetInternalModelPaths(long j2, CUIShadeFinder cUIShadeFinder, String str, String str2);

    public static final native boolean CUIShadeFinder_SetInternalModelPathsLV(long j2, CUIShadeFinder cUIShadeFinder, String str, String str2, String str3);

    public static final native boolean CUIShadeFinder_SetMaxDetectedFaceNumber(long j2, CUIShadeFinder cUIShadeFinder, int i2);

    public static final native boolean CUIShadeFinder_SetShadeFinderMode(long j2, CUIShadeFinder cUIShadeFinder, int i2);

    public static final native boolean CUIShadeFinder_SetShadeFinderModelPath(long j2, CUIShadeFinder cUIShadeFinder, String str, String str2, int i2);

    public static final native boolean CUIShadeFinder_TrackYUV420Biplanar(long j2, CUIShadeFinder cUIShadeFinder, byte[] bArr, int i2, int i3, int i4, boolean z, boolean z2);

    public static final native void delete_CUIShadeFinder(long j2);

    public static final native long new_CUIShadeFinder(String str);
}
