package com.batch.android.x0;

/* JADX INFO: loaded from: classes2.dex */
public class i extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final IllegalStateException f24190b = new IllegalStateException("Cannot reach here");

    public i() {
    }

    public static UnsupportedOperationException a(String str) {
        return new UnsupportedOperationException(str);
    }

    public i(String str) {
        super(str);
    }

    public i(String str, Throwable th) {
        super(str, th);
    }

    public i(Throwable th) {
        super(th);
    }
}
