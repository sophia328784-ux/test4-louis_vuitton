package org.aspectj.lang;

import java.io.PrintStream;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
public class SoftException extends RuntimeException {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f77554c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f77555b;

    static {
        boolean z;
        try {
            Class.forName("java.nio.Buffer");
            z = true;
        } catch (Throwable unused) {
            z = false;
        }
        f77554c = z;
    }

    public SoftException(Throwable th) {
        this.f77555b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f77555b;
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        Throwable th;
        super.printStackTrace(printStream);
        if (f77554c || (th = this.f77555b) == null) {
            return;
        }
        printStream.print("Caused by: ");
        th.printStackTrace(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        Throwable th;
        super.printStackTrace(printWriter);
        if (f77554c || (th = this.f77555b) == null) {
            return;
        }
        printWriter.print("Caused by: ");
        th.printStackTrace(printWriter);
    }
}
