package com.batch.android.a;

/* JADX INFO: loaded from: classes.dex */
public class f extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RuntimeException f22869b;

    public f(RuntimeException runtimeException) {
        super(runtimeException);
        this.f22869b = runtimeException;
    }

    public RuntimeException a() {
        return this.f22869b;
    }
}
