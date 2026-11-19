package org.spongycastle.jce.exception;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class ExtIOException extends IOException implements ExtException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f77903b;

    public ExtIOException(String str, Throwable th) {
        super(str);
        this.f77903b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f77903b;
    }
}
