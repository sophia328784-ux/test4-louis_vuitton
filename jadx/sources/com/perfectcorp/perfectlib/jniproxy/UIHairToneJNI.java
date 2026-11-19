package com.perfectcorp.perfectlib.jniproxy;

/* JADX INFO: loaded from: classes3.dex */
public class UIHairToneJNI {
    public static final native boolean CUIHairTone_GetHairTone(long j2, CUIHairTone cUIHairTone, long j3, CImageBuffer cImageBuffer, long j4, UIMakeupLiveFaceAlignData uIMakeupLiveFaceAlignData, int[] iArr, Object[] objArr, boolean z);

    public static final native boolean CUIHairTone_GetInternalModelVersion(long j2, CUIHairTone cUIHairTone, Object[] objArr);

    public static final native boolean CUIHairTone_SetInternalModelPaths(long j2, CUIHairTone cUIHairTone, String str, String str2);

    public static final native boolean CUIHairTone_SetTrackingEngine(long j2, CUIHairTone cUIHairTone, long j3);

    public static final native void delete_CUIHairTone(long j2);

    public static final native long new_CUIHairTone(String str);
}
