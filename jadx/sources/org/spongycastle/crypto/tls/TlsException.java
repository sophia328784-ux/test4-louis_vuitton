package org.spongycastle.crypto.tls;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class TlsException extends IOException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f77884b;

    public TlsException(String str, Throwable th) {
        super(str);
        this.f77884b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f77884b;
    }
}
