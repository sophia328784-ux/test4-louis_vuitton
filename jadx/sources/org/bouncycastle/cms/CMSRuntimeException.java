package org.bouncycastle.cms;

/* JADX INFO: loaded from: classes3.dex */
public class CMSRuntimeException extends RuntimeException {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Exception f77600e;

    public CMSRuntimeException(String str, Exception exc) {
        super(str);
        this.f77600e = exc;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f77600e;
    }

    public Exception getUnderlyingException() {
        return this.f77600e;
    }

    public CMSRuntimeException(String str) {
        super(str);
    }
}
