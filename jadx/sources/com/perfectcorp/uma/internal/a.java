package com.perfectcorp.uma.internal;

import java.io.PrintStream;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f43269b;

    public a(Throwable th) {
        this.f43269b = th;
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        return null;
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        return this.f43269b.getLocalizedMessage();
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f43269b.getMessage();
    }

    @Override // java.lang.Throwable
    public final StackTraceElement[] getStackTrace() {
        return this.f43269b.getStackTrace();
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        this.f43269b.printStackTrace();
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return this.f43269b.toString();
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        this.f43269b.printStackTrace(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        this.f43269b.printStackTrace(printWriter);
    }
}
