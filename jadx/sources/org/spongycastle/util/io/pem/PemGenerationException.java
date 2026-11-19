package org.spongycastle.util.io.pem;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class PemGenerationException extends IOException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f78274b;

    public PemGenerationException(String str, Throwable th) {
        super(str);
        this.f78274b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f78274b;
    }

    public PemGenerationException(String str) {
        super(str);
    }
}
