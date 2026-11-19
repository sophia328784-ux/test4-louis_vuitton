package org.spongycastle.util.encoders;

/* JADX INFO: loaded from: classes5.dex */
public class EncoderException extends IllegalStateException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Exception f78270b;

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f78270b;
    }
}
