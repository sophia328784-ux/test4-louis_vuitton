package org.spongycastle.util;

/* JADX INFO: loaded from: classes5.dex */
public class StreamParsingException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f78267b;

    public StreamParsingException(String str, Throwable th) {
        super(str);
        this.f78267b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f78267b;
    }
}
