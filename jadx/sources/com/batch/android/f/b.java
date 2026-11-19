package com.batch.android.f;

import defpackage.a61;

/* JADX INFO: loaded from: classes2.dex */
public enum b {
    WEB,
    METRIC;

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23271a;

        static {
            int[] iArr = new int[b.values().length];
            f23271a = iArr;
            try {
                iArr[b.WEB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23271a[b.METRIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public String a(String str) {
        String str2;
        int i2 = a.f23271a[ordinal()];
        if (i2 == 1) {
            str2 = "ws.%s";
        } else {
            if (i2 != 2) {
                a61.q(this, "Unexpected value: ");
                return null;
            }
            str2 = "wsmetrics.%s/api-sdk";
        }
        return "https://".concat(String.format(str2, str));
    }
}
