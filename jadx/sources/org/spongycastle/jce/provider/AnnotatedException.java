package org.spongycastle.jce.provider;

import org.spongycastle.jce.exception.ExtException;

/* JADX INFO: loaded from: classes5.dex */
public class AnnotatedException extends Exception implements ExtException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f77904b;

    public AnnotatedException(String str, Throwable th) {
        super(str);
        this.f77904b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f77904b;
    }

    public AnnotatedException(String str) {
        this(str, null);
    }
}
