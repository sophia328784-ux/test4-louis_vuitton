package org.spongycastle.util.encoders;

/* JADX INFO: loaded from: classes5.dex */
public class DecoderException extends IllegalStateException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Exception f78269b;

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f78269b;
    }
}
