package com.perfectcorp.common.downloader;

import android.os.Process;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import java.io.File;
import java.net.URI;
import java.util.Objects;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes3.dex */
abstract class p extends com.perfectcorp.thirdparty.com.google.common.util.concurrent.p<File> implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final long f39239a = System.nanoTime();
    private final Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final URI f39242e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final File f39243f;
    private final o g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f39244h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile double f39245i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile boolean f39246j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile boolean f39247k;
    private volatile boolean l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f39240b = System.nanoTime();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SettableFuture<File> f39241c = new SettableFuture<>();
    private final Object m = new Object();

    public static final class a extends e {
    }

    public static final class b extends e {
    }

    public static final class c extends e {
    }

    public static final class d extends e {
    }

    public static class e extends RuntimeException {
    }

    public static class f {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Object f39248f = new Object();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final URI f39249a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final File f39250b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f39251c = f39248f;
        public o d = o.f39236a;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f39252e = 0;

        public f(URI uri, File file) {
            Objects.requireNonNull(uri, "downloadUri == null");
            this.f39249a = uri;
            Objects.requireNonNull(file, "downloadTarget == null");
            this.f39250b = file;
        }
    }

    public p(f fVar) {
        this.d = fVar.f39251c;
        this.f39242e = fVar.f39249a;
        this.f39243f = fVar.f39250b;
        this.g = fVar.d;
        this.f39244h = fVar.f39252e;
    }

    public abstract int a();

    public final void a(double d2) {
        this.f39245i = d2;
    }

    public abstract void a(URI uri, File file) throws Exception;

    public void c() throws Exception {
    }

    public final void d() {
        if (this.f39246j) {
            throw new c();
        }
        if (this.l) {
            throw new d();
        }
        if (isDone()) {
            throw new a();
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.af
    public /* bridge */ /* synthetic */ Object delegate() {
        return this.f39241c;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.p
    public final ListenableFuture<File> e() {
        return this.f39241c;
    }

    public final double f() {
        return this.f39245i;
    }

    public final long g() {
        return (this.f39240b - f39239a) + this.g.f39238c;
    }

    public final void h() {
        this.f39246j = true;
    }

    public final boolean i() {
        return this.f39247k;
    }

    public final Object j() {
        return this.d;
    }

    public final void k() {
        this.l = true;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.o
    public final /* bridge */ /* synthetic */ Future l() {
        return this.f39241c;
    }

    @Override // java.lang.Runnable
    public final synchronized void run() {
        String str;
        String str2;
        synchronized (this.m) {
            try {
                if (!isDone()) {
                    int threadPriority = Process.getThreadPriority(Process.myTid());
                    if (threadPriority != this.f39244h) {
                        Log.g(3, "Task", "Change thread priority to " + this.f39244h);
                        Process.setThreadPriority(this.f39244h);
                    }
                    try {
                        System.nanoTime();
                        this.f39246j = false;
                        this.f39247k = false;
                        this.l = false;
                        try {
                            try {
                                try {
                                    try {
                                        try {
                                            c();
                                            a(this.f39242e, this.f39243f);
                                            this.f39241c.set(this.f39243f);
                                            if (threadPriority != this.f39244h) {
                                                str = "Task";
                                                str2 = "Revert thread priority to " + threadPriority;
                                                Log.g(3, str, str2);
                                                Process.setThreadPriority(threadPriority);
                                            }
                                        } catch (b unused) {
                                            Log.g(3, "Task", "Task finished. key=" + this.d);
                                            this.f39241c.set(this.f39243f);
                                            if (threadPriority != this.f39244h) {
                                                str = "Task";
                                                str2 = "Revert thread priority to " + threadPriority;
                                            }
                                        }
                                    } catch (Throwable th) {
                                        Log.c("Task", "Task failed. key=" + this.d + ", downloadUri=" + this.f39242e, th);
                                        this.f39241c.setException(th);
                                        if (threadPriority != this.f39244h) {
                                            str = "Task";
                                            str2 = "Revert thread priority to " + threadPriority;
                                        }
                                    }
                                } catch (d unused2) {
                                    Log.g(3, "Task", "Task stopped. key=" + this.d);
                                    if (threadPriority != this.f39244h) {
                                        str = "Task";
                                        str2 = "Revert thread priority to " + threadPriority;
                                    }
                                }
                            } catch (a unused3) {
                                Log.g(3, "Task", "Task already done. key=" + this.d);
                                if (threadPriority != this.f39244h) {
                                    str = "Task";
                                    str2 = "Revert thread priority to " + threadPriority;
                                }
                            }
                        } catch (c unused4) {
                            Log.g(3, "Task", "Task paused. key=" + this.d);
                            this.f39247k = true;
                            if (threadPriority != this.f39244h) {
                                str = "Task";
                                str2 = "Revert thread priority to " + threadPriority;
                            }
                        }
                    } catch (Throwable th2) {
                        if (threadPriority != this.f39244h) {
                            Log.g(3, "Task", "Revert thread priority to " + threadPriority);
                            Process.setThreadPriority(threadPriority);
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
