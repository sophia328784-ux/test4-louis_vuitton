package org.aspectj.lang;

/* JADX INFO: loaded from: classes2.dex */
public class NoAspectBoundException extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f77553b;

    public NoAspectBoundException(String str, Throwable th) {
        if (th != null) {
            StringBuffer stringBuffer = new StringBuffer("Exception while initializing ");
            stringBuffer.append(str);
            stringBuffer.append(": ");
            stringBuffer.append(th);
            str = stringBuffer.toString();
        }
        super(str);
        this.f77553b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f77553b;
    }

    public NoAspectBoundException() {
    }
}
