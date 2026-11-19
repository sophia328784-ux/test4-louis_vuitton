package io.reactivex.rxjava3.exceptions;

import defpackage.md;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class CompositeException extends RuntimeException {
    private static final long serialVersionUID = 3026362227162912146L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f70030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f70031c;
    public Throwable d;

    public static final class ExceptionOverview extends RuntimeException {
        private static final long serialVersionUID = 3875212506787802066L;

        @Override // java.lang.Throwable
        public final synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    public static abstract class PrintStreamOrWriter {
        public abstract PrintStreamOrWriter a(Serializable serializable);
    }

    public static final class WrappedPrintStream extends PrintStreamOrWriter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PrintStream f70032a;

        public WrappedPrintStream(PrintStream printStream) {
            this.f70032a = printStream;
        }

        @Override // io.reactivex.rxjava3.exceptions.CompositeException.PrintStreamOrWriter
        public final PrintStreamOrWriter a(Serializable serializable) {
            this.f70032a.print(serializable);
            return this;
        }
    }

    public static final class WrappedPrintWriter extends PrintStreamOrWriter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PrintWriter f70033a;

        public WrappedPrintWriter(PrintWriter printWriter) {
            this.f70033a = printWriter;
        }

        @Override // io.reactivex.rxjava3.exceptions.CompositeException.PrintStreamOrWriter
        public final PrintStreamOrWriter a(Serializable serializable) {
            this.f70033a.print(serializable);
            return this;
        }
    }

    public CompositeException(Iterable<? extends Throwable> iterable) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (iterable != null) {
            for (Throwable th : iterable) {
                if (th instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th).f70030b);
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (linkedHashSet.isEmpty()) {
            md.n("errors is empty");
            throw null;
        }
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(linkedHashSet));
        this.f70030b = listUnmodifiableList;
        this.f70031c = listUnmodifiableList.size() + " exceptions occurred. ";
    }

    public static void a(PrintStreamOrWriter printStreamOrWriter, Throwable th, String str) {
        printStreamOrWriter.a(str).a(th).a('\n');
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            printStreamOrWriter.a("\t\tat ").a(stackTraceElement).a('\n');
        }
        if (th.getCause() != null) {
            printStreamOrWriter.a("\tCaused by: ");
            a(printStreamOrWriter, th.getCause(), "");
        }
    }

    public final void b(PrintStreamOrWriter printStreamOrWriter) {
        printStreamOrWriter.a(this).a("\n");
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            printStreamOrWriter.a("\tat ").a(stackTraceElement).a("\n");
        }
        int i2 = 1;
        for (Throwable th : this.f70030b) {
            printStreamOrWriter.a("  ComposedException ").a(Integer.valueOf(i2)).a(" :\n");
            a(printStreamOrWriter, th, "\t");
            i2++;
        }
        printStreamOrWriter.a("\n");
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        int i2;
        try {
            if (this.d == null) {
                String property = System.getProperty("line.separator");
                if (this.f70030b.size() > 1) {
                    IdentityHashMap identityHashMap = new IdentityHashMap();
                    StringBuilder sb = new StringBuilder();
                    sb.append("Multiple exceptions (");
                    sb.append(this.f70030b.size());
                    sb.append(")");
                    sb.append(property);
                    for (Throwable cause : this.f70030b) {
                        int i3 = 0;
                        while (cause != null) {
                            for (int i4 = 0; i4 < i3; i4++) {
                                sb.append("  ");
                            }
                            sb.append("|-- ");
                            sb.append(cause.getClass().getCanonicalName());
                            sb.append(": ");
                            String message = cause.getMessage();
                            if (message == null || !message.contains(property)) {
                                sb.append(message);
                                sb.append(property);
                            } else {
                                sb.append(property);
                                for (String str : message.split(property)) {
                                    for (int i5 = 0; i5 < i3 + 2; i5++) {
                                        sb.append("  ");
                                    }
                                    sb.append(str);
                                    sb.append(property);
                                }
                            }
                            int i6 = 0;
                            while (true) {
                                i2 = i3 + 2;
                                if (i6 >= i2) {
                                    break;
                                }
                                sb.append("  ");
                                i6++;
                            }
                            StackTraceElement[] stackTrace = cause.getStackTrace();
                            if (stackTrace.length > 0) {
                                sb.append("at ");
                                sb.append(stackTrace[0]);
                                sb.append(property);
                            }
                            if (identityHashMap.containsKey(cause)) {
                                Throwable cause2 = cause.getCause();
                                if (cause2 == null) {
                                    break;
                                }
                                for (int i7 = 0; i7 < i2; i7++) {
                                    sb.append("  ");
                                }
                                sb.append("|-- ");
                                sb.append("(cause not expanded again) ");
                                sb.append(cause2.getClass().getCanonicalName());
                                sb.append(": ");
                                sb.append(cause2.getMessage());
                                sb.append(property);
                                break;
                            }
                            identityHashMap.put(cause, Boolean.TRUE);
                            cause = cause.getCause();
                            i3++;
                        }
                    }
                    this.d = new ExceptionOverview(sb.toString().trim());
                } else {
                    this.d = (Throwable) this.f70030b.get(0);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.d;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f70031c;
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        b(new WrappedPrintStream(printStream));
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        b(new WrappedPrintWriter(printWriter));
    }

    public CompositeException(Throwable... thArr) {
        this(thArr == null ? Collections.singletonList(new NullPointerException("exceptions was null")) : Arrays.asList(thArr));
    }
}
