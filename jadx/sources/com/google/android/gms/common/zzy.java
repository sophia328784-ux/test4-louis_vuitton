package com.google.android.gms.common;

/* JADX INFO: loaded from: classes2.dex */
public class zzy {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzy f29383c = new zzy(true, null, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f29384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f29385b;

    public zzy(boolean z, String str, Exception exc) {
        this.f29384a = z;
        this.f29385b = exc;
    }

    public static zzy b(String str) {
        return new zzy(false, str, null);
    }

    public static zzy c(String str, Exception exc) {
        return new zzy(false, str, exc);
    }

    public void a() {
    }
}
