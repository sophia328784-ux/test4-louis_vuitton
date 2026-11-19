package org.apache.commons.lang3.exception;

/* JADX INFO: loaded from: classes3.dex */
public class ContextedRuntimeException extends RuntimeException implements ExceptionContext {
    private static final long serialVersionUID = 20110706;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExceptionContext f77546b;

    public ContextedRuntimeException(String str, Throwable th, ExceptionContext exceptionContext) {
        super(str, th);
        this.f77546b = exceptionContext == null ? new DefaultExceptionContext() : exceptionContext;
    }

    @Override // org.apache.commons.lang3.exception.ExceptionContext
    public final String a(String str) {
        return this.f77546b.a(str);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f77546b.a(super.getMessage());
    }

    public ContextedRuntimeException(String str) {
        super(str);
        this.f77546b = new DefaultExceptionContext();
    }

    public ContextedRuntimeException(String str, Throwable th) {
        super(str, th);
        this.f77546b = new DefaultExceptionContext();
    }

    public ContextedRuntimeException() {
        this.f77546b = new DefaultExceptionContext();
    }

    public ContextedRuntimeException(Throwable th) {
        super(th);
        this.f77546b = new DefaultExceptionContext();
    }
}
