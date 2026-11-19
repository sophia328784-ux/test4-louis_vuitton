package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
abstract /* synthetic */ class zzcc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f29671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f29672b;

    static {
        int[] iArr = new int[zzcq.values().length];
        f29672b = iArr;
        try {
            iArr[zzcq.zzle.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f29672b[zzcq.zzlg.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f29672b[zzcq.zzld.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        int[] iArr2 = new int[zzcd.values().length];
        f29671a = iArr2;
        try {
            iArr2[zzcd.MAP.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f29671a[zzcd.VECTOR.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f29671a[zzcd.SCALAR.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
