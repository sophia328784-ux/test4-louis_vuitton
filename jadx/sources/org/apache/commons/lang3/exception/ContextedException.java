package org.apache.commons.lang3.exception;

/* JADX INFO: loaded from: classes3.dex */
public class ContextedException extends Exception implements ExceptionContext {
    private static final long serialVersionUID = 20110706;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExceptionContext f77545b;

    public ContextedException(String str, Throwable th, ExceptionContext exceptionContext) {
        super(str, th);
        this.f77545b = exceptionContext == null ? new DefaultExceptionContext() : exceptionContext;
    }

    @Override // org.apache.commons.lang3.exception.ExceptionContext
    public final String a(String str) {
        return this.f77545b.a(str);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f77545b.a(super.getMessage());
    }

    public ContextedException(String str) {
        super(str);
        this.f77545b = new DefaultExceptionContext();
    }

    public ContextedException(String str, Throwable th) {
        super(str, th);
        this.f77545b = new DefaultExceptionContext();
    }

    public ContextedException() {
        this.f77545b = new DefaultExceptionContext();
    }

    public ContextedException(Throwable th) {
        super(th);
        this.f77545b = new DefaultExceptionContext();
    }
}
