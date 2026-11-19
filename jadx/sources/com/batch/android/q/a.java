package com.batch.android.q;

import com.appsflyer.sdk_base.referrer.Payload;

/* JADX INFO: loaded from: classes2.dex */
public enum a {
    INSTALLATION(0),
    USER_IDENTIFIER(1);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f23908b;

    /* JADX INFO: renamed from: com.batch.android.q.a$a, reason: collision with other inner class name */
    public static /* synthetic */ class C0069a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23909a;

        static {
            int[] iArr = new int[a.values().length];
            f23909a = iArr;
            try {
                iArr[a.INSTALLATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23909a[a.USER_IDENTIFIER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    a(int i2) {
        this.f23908b = i2;
    }

    public int b() {
        return this.f23908b;
    }

    public String c() {
        return C0069a.f23909a[ordinal()] != 2 ? "install" : Payload.CUSTOM;
    }
}
