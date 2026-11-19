package com.perfectcorp.thirdparty.com.google.common.io;

import defpackage.md;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes3.dex */
public final class d implements Closeable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f42374e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f42375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayDeque f42376c = new ArrayDeque(4);
    public Throwable d;

    public static final class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f42377a = new a();

        @Override // com.perfectcorp.thirdparty.com.google.common.io.d.c
        public final void a(Closeable closeable, Throwable th, Throwable th2) {
            Closeables.f42370a.log(Level.WARNING, "Suppressing exception thrown when closing " + closeable, th2);
        }
    }

    public static final class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f42378a = new b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Method f42379b;

        static {
            Method method;
            try {
                method = Throwable.class.getMethod("addSuppressed", Throwable.class);
            } catch (Throwable unused) {
                method = null;
            }
            f42379b = method;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.io.d.c
        public final void a(Closeable closeable, Throwable th, Throwable th2) {
            if (th == th2) {
                return;
            }
            try {
                f42379b.invoke(th, th2);
            } catch (Throwable unused) {
                a.f42377a.a(closeable, th, th2);
            }
        }
    }

    public interface c {
        void a(Closeable closeable, Throwable th, Throwable th2);
    }

    static {
        f42374e = b.f42379b != null ? b.f42378a : a.f42377a;
    }

    public d(c cVar) {
        cVar.getClass();
        this.f42375b = cVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Throwable th = this.d;
        while (true) {
            ArrayDeque arrayDeque = this.f42376c;
            if (arrayDeque.isEmpty()) {
                break;
            }
            Closeable closeable = (Closeable) arrayDeque.removeFirst();
            try {
                closeable.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                } else {
                    this.f42375b.a(closeable, th, th2);
                }
            }
        }
        if (this.d != null || th == null) {
            return;
        }
        if (IOException.class.isInstance(th)) {
            throw ((Throwable) IOException.class.cast(th));
        }
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (th instanceof Error) {
            throw ((Error) th);
        }
        md.h(th);
    }
}
