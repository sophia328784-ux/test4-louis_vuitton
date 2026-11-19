package org.spongycastle.jce.exception;

import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;

/* JADX INFO: loaded from: classes5.dex */
public class ExtCertPathValidatorException extends CertPathValidatorException implements ExtException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f77901b;

    public ExtCertPathValidatorException(String str, Throwable th) {
        super(str);
        this.f77901b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f77901b;
    }

    public ExtCertPathValidatorException(String str, Throwable th, CertPath certPath, int i2) {
        super(str, th, certPath, i2);
        this.f77901b = th;
    }
}
