package org.spongycastle.jce.exception;

import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;

/* JADX INFO: loaded from: classes5.dex */
public class ExtCertPathBuilderException extends CertPathBuilderException implements ExtException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f77900b;

    public ExtCertPathBuilderException(String str, Throwable th) {
        super(str);
        this.f77900b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f77900b;
    }

    public ExtCertPathBuilderException(String str, Throwable th, CertPath certPath, int i2) {
        super(str, th);
        this.f77900b = th;
    }
}
