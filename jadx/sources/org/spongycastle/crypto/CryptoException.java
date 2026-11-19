package org.spongycastle.crypto;

/* JADX INFO: loaded from: classes5.dex */
public class CryptoException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f77843b;

    public CryptoException(String str, Throwable th) {
        super(str);
        this.f77843b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f77843b;
    }

    public CryptoException(String str) {
        super(str);
    }

    public CryptoException() {
    }
}
