package com.cyberlink.clgpuimage.util;

import com.cyberlink.clgpuimage.Rotation;

/* JADX INFO: loaded from: classes2.dex */
abstract /* synthetic */ class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f25842a;

    static {
        int[] iArr = new int[Rotation.values().length];
        f25842a = iArr;
        try {
            iArr[Rotation.ROTATION_90.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f25842a[Rotation.ROTATION_180.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f25842a[Rotation.ROTATION_270.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f25842a[Rotation.NORMAL.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
