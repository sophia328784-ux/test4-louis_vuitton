package org.spongycastle.crypto.tls;

/* JADX INFO: loaded from: classes5.dex */
public class TlsFatalAlert extends TlsException {
    public TlsFatalAlert(short s, Throwable th) {
        super(AlertDescription.a(s), th);
    }

    public TlsFatalAlert(short s) {
        this(s, null);
    }
}
