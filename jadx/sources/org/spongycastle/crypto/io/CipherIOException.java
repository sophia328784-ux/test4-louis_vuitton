package org.spongycastle.crypto.io;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class CipherIOException extends IOException {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f77883b;

    public CipherIOException(String str, Throwable th) {
        super(str);
        this.f77883b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f77883b;
    }
}
