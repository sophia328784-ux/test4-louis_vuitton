package com.perfectcorp.common.network;

import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.downloader.o;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes3.dex */
public final class DownloadTask extends j<File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f39311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Key f39312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.perfectcorp.common.downloader.f f39313c;
    private final DownloadStateMonitor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile ListenableFuture<?> f39314e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile double f39315f;
    private volatile Collection<Runnable> g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List<ProgressCallback> f39316h;

    /* JADX INFO: renamed from: com.perfectcorp.common.network.DownloadTask$1, reason: invalid class name */
    class AnonymousClass1 implements FutureCallback<Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public /* synthetic */ DownloadTask f39317a;

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
        public final void onFailure(Throwable th) {
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
        public final void onSuccess(Object obj) {
            DownloadStateMonitor downloadStateMonitor;
            DownloadTask downloadTask = this.f39317a;
            try {
                try {
                    try {
                        downloadTask.c();
                        downloadTask.d.a();
                    } catch (j.b unused) {
                        downloadStateMonitor = downloadTask.d;
                        downloadStateMonitor.c();
                        downloadTask.d.a();
                    }
                } catch (j.a unused2) {
                    downloadStateMonitor = downloadTask.d;
                    downloadStateMonitor.c();
                    downloadTask.d.a();
                }
            }
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final URI f39318a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final File f39319b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f39320c = Integer.MAX_VALUE;
        public NetworkTaskManager.TaskPriority d = NetworkTaskManager.TaskPriority.NORMAL;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Key f39321e = DownloadKey.f39305a;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public DownloadStateMonitor f39322f = DownloadStateMonitor.f39310a;

        public Builder(URI uri, File file) {
            Objects.requireNonNull(uri, "uri can't be null");
            this.f39318a = uri;
            Objects.requireNonNull(file, "file can't be null");
            this.f39319b = file;
        }
    }

    public static abstract class Key {
    }

    private DownloadTask(Builder builder) {
        super(builder.d);
        this.f39316h = new ArrayList();
        File file = builder.f39319b;
        this.f39311a = file;
        this.f39312b = builder.f39321e;
        com.perfectcorp.common.downloader.e eVar = new com.perfectcorp.common.downloader.e(i.a.f39371a.f39189a);
        eVar.d = super.getFuture();
        o oVar = o.f39237b;
        Objects.requireNonNull(oVar, "priority == null");
        eVar.f39214e = oVar;
        eVar.f39212b = builder.f39318a;
        eVar.f39213c = file;
        int i2 = builder.f39320c;
        if (i2 != Integer.MAX_VALUE) {
            eVar.g = i2;
        }
        SettableFuture settableFuture = new SettableFuture();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        anonymousClass1.f39317a = this;
        MoreFutures.a(settableFuture, anonymousClass1, CallingThread.MAIN);
        eVar.f39215f = settableFuture;
        this.f39313c = new com.perfectcorp.common.downloader.f(eVar);
        DownloadStateMonitor downloadStateMonitor = builder.f39322f;
        this.d = downloadStateMonitor;
        downloadStateMonitor.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.perfectcorp.common.network.j
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public File a() throws Throwable {
        try {
            c();
            if (this.f39314e == null) {
                this.f39314e = this.f39313c.a();
            } else {
                i.a.f39371a.b(this.g);
            }
            this.f39315f = this.f39313c.c();
            while (this.f39315f != 1.0d) {
                this.f39315f = i();
                double d = this.f39315f;
                if (!super.getFuture().isCancelled() && !super.getFuture().isDone()) {
                    Iterator<ProgressCallback> it = j().iterator();
                    while (it.hasNext()) {
                        it.next().a(d);
                    }
                }
                c();
            }
            this.f39314e.get();
            this.d.d();
            return this.f39311a;
        } catch (j.a e2) {
            this.d.c();
            if (this.f39314e != null) {
                this.f39314e.cancel(true);
            }
            throw e2;
        } catch (j.b e3) {
            this.d.c();
            this.g = i.a.f39371a.a(super.getFuture());
            throw e3;
        } catch (ExecutionException e4) {
            Throwable cause = e4.getCause();
            if (cause != null) {
                throw cause;
            }
            throw e4;
        } catch (Throwable th) {
            this.d.e();
            throw th;
        }
    }

    private double i() throws Throwable {
        try {
            this.f39314e.get(100L, TimeUnit.MILLISECONDS);
            return 1.0d;
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause != null) {
                throw cause;
            }
            throw e2;
        } catch (TimeoutException unused) {
            return this.f39313c.c();
        }
    }

    private List<ProgressCallback> j() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.f39316h);
        }
        return arrayList;
    }

    public final void addProgressCallback(ProgressCallback progressCallback) {
        synchronized (this) {
            this.f39316h.add(progressCallback);
        }
    }

    public final File getFile() {
        return this.f39311a;
    }

    public final Key getKey() {
        return this.f39312b;
    }

    public final double getProgress() {
        return this.f39315f;
    }

    public /* synthetic */ DownloadTask(Builder builder, byte b2) {
        this(builder);
    }
}
