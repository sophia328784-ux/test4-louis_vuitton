package org.spongycastle.util;

/* JADX INFO: loaded from: classes5.dex */
public class StoreException extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f78266b;

    public StoreException(String str, Throwable th) {
        super(str);
        this.f78266b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f78266b;
    }
}
