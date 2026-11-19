package org.spongycastle.jcajce.provider.util;

import javax.crypto.BadPaddingException;

/* JADX INFO: loaded from: classes5.dex */
public class BadBlockException extends BadPaddingException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f77899b;

    public BadBlockException(String str, Throwable th) {
        super(str);
        this.f77899b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f77899b;
    }
}
