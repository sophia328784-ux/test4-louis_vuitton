package org.spongycastle.crypto.tls;

/* JADX INFO: loaded from: classes5.dex */
public class TlsFatalAlertReceived extends TlsException {
    public TlsFatalAlertReceived(short s) {
        super(AlertDescription.a(s), null);
    }
}
