package org.bouncycastle.cms;

/* JADX INFO: loaded from: classes3.dex */
public class CMSException extends Exception {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Exception f77599e;

    public CMSException(String str, Exception exc) {
        super(str);
        this.f77599e = exc;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f77599e;
    }

    public Exception getUnderlyingException() {
        return this.f77599e;
    }

    public CMSException(String str) {
        super(str);
    }
}
