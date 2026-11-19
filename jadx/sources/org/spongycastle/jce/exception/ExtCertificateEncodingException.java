package org.spongycastle.jce.exception;

import java.security.cert.CertificateEncodingException;

/* JADX INFO: loaded from: classes5.dex */
public class ExtCertificateEncodingException extends CertificateEncodingException implements ExtException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f77902b;

    public ExtCertificateEncodingException(String str, Throwable th) {
        super(str);
        this.f77902b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f77902b;
    }
}
