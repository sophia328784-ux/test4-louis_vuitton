package com.perfectcorp.thirdparty.io.reactivex.exceptions;

import defpackage.md;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class CompositeException extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f42596b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f42597c;
    public Throwable d;

    public static final class a extends RuntimeException {
        @Override // java.lang.Throwable
        public final String getMessage() {
            return "Chain of Causes for CompositeException In Order Received =>";
        }
    }

    public static abstract class b {
        public abstract void a(String str);
    }

    public static final class c extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PrintStream f42598a;

        public c(PrintStream printStream) {
            this.f42598a = printStream;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException.b
        public final void a(String str) {
            this.f42598a.println((Object) str);
        }
    }

    public static final class d extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PrintWriter f42599a;

        public d(PrintWriter printWriter) {
            this.f42599a = printWriter;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException.b
        public final void a(String str) {
            this.f42599a.println((Object) str);
        }
    }

    public CompositeException(Iterable<? extends Throwable> iterable) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (iterable != null) {
            for (Object obj : iterable) {
                if (obj instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) obj).f42596b);
                } else {
                    linkedHashSet.add(obj == null ? new NullPointerException("Throwable was null!") : obj);
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (linkedHashSet.isEmpty()) {
            md.n("errors is empty");
            throw null;
        }
        arrayList.addAll(linkedHashSet);
        List listUnmodifiableList = Collections.unmodifiableList(arrayList);
        this.f42596b = listUnmodifiableList;
        this.f42597c = listUnmodifiableList.size() + " exceptions occurred. ";
    }

    public final void a(b bVar) {
        StringBuilder sb = new StringBuilder(128);
        sb.append(this);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            sb.append("\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        int i2 = 1;
        for (Throwable cause : this.f42596b) {
            sb.append("  ComposedException ");
            sb.append(i2);
            sb.append(" :\n");
            String str = "\t";
            while (true) {
                sb.append(str);
                sb.append(cause);
                sb.append('\n');
                for (StackTraceElement stackTraceElement2 : cause.getStackTrace()) {
                    sb.append("\t\tat ");
                    sb.append(stackTraceElement2);
                    sb.append('\n');
                }
                if (cause.getCause() != null) {
                    sb.append("\tCaused by: ");
                    cause = cause.getCause();
                    str = "";
                }
            }
            i2++;
        }
        bVar.a(sb.toString());
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        try {
            if (this.d == null) {
                a aVar = new a();
                HashSet hashSet = new HashSet();
                a aVar2 = aVar;
                for (Throwable runtimeException : this.f42596b) {
                    if (!hashSet.contains(runtimeException)) {
                        hashSet.add(runtimeException);
                        ArrayList<Throwable> arrayList = new ArrayList();
                        Throwable cause = runtimeException.getCause();
                        if (cause != null && cause != runtimeException) {
                            while (true) {
                                arrayList.add(cause);
                                Throwable cause2 = cause.getCause();
                                if (cause2 == null || cause2 == cause) {
                                    break;
                                    break;
                                }
                                cause = cause2;
                            }
                        }
                        for (Throwable th : arrayList) {
                            if (hashSet.contains(th)) {
                                runtimeException = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                            } else {
                                hashSet.add(th);
                            }
                        }
                        try {
                            aVar2.initCause(runtimeException);
                        } catch (Throwable unused) {
                        }
                        Throwable cause3 = aVar2.getCause();
                        if (cause3 != null && aVar2 != cause3) {
                            while (true) {
                                Throwable cause4 = cause3.getCause();
                                if (cause4 == null || cause4 == cause3) {
                                    break;
                                    break;
                                }
                                cause3 = cause4;
                            }
                            aVar2 = cause3;
                        }
                    }
                }
                this.d = aVar;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.d;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f42597c;
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        a(new c(printStream));
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        a(new d(printWriter));
    }

    public CompositeException(Throwable... thArr) {
        this(thArr == null ? Collections.singletonList(new NullPointerException("exceptions was null")) : Arrays.asList(thArr));
    }
}
