package com.batch.android;

/* JADX INFO: loaded from: classes.dex */
class j extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RuntimeException f23491b;

    public j(RuntimeException runtimeException) {
        super(runtimeException);
        this.f23491b = runtimeException;
    }

    public RuntimeException a() {
        return this.f23491b;
    }
}
