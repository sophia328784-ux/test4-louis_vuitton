package com.perfectcorp.thirdparty.io.reactivex.schedulers;

import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.n;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Schedulers {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Scheduler f43168a = com.perfectcorp.thirdparty.io.reactivex.plugins.a.b(new h());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Scheduler f43169b = com.perfectcorp.thirdparty.io.reactivex.plugins.a.b(new b());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Scheduler f43170c = com.perfectcorp.thirdparty.io.reactivex.plugins.a.b(new c());

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.b f43171a = new com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.b();
    }

    public static final class b implements Callable<Scheduler> {
        @Override // java.util.concurrent.Callable
        public final /* bridge */ /* synthetic */ Scheduler call() throws Exception {
            return a.f43171a;
        }
    }

    public static final class c implements Callable<Scheduler> {
        @Override // java.util.concurrent.Callable
        public final /* bridge */ /* synthetic */ Scheduler call() throws Exception {
            return d.f43172a;
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.e f43172a = new com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.e();
    }

    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.f f43173a = new com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.f();
    }

    public static final class f implements Callable<Scheduler> {
        @Override // java.util.concurrent.Callable
        public final /* bridge */ /* synthetic */ Scheduler call() throws Exception {
            return e.f43173a;
        }
    }

    public static final class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final m f43174a = new m();
    }

    public static final class h implements Callable<Scheduler> {
        @Override // java.util.concurrent.Callable
        public final /* bridge */ /* synthetic */ Scheduler call() throws Exception {
            return g.f43174a;
        }
    }

    static {
        int i2 = n.f43132a;
        com.perfectcorp.thirdparty.io.reactivex.plugins.a.b(new f());
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d a(ExecutorService executorService) {
        return new com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d(executorService, false);
    }

    public static Scheduler b() {
        return f43170c;
    }
}
