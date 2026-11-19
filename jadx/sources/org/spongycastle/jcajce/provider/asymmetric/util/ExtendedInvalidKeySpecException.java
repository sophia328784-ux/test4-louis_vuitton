package org.spongycastle.jcajce.provider.asymmetric.util;

import java.security.spec.InvalidKeySpecException;

/* JADX INFO: loaded from: classes5.dex */
public class ExtendedInvalidKeySpecException extends InvalidKeySpecException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f77895b;

    public ExtendedInvalidKeySpecException(String str, Throwable th) {
        super(str);
        this.f77895b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f77895b;
    }
}
