package com.bumptech.glide.load.engine;

import androidx.core.util.Pools$Pool;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.request.ResourceCallback;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.util.Executors;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
class EngineJob<R> implements DecodeJob.Callback<R>, FactoryPools.Poolable {
    public static final EngineResourceFactory x = new EngineResourceFactory();
    public final EngineResource.ResourceListener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Pools$Pool f24503e;
    public final EngineJobListener g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GlideExecutor f24505h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GlideExecutor f24506i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GlideExecutor f24507j;
    public Key l;
    public boolean m;
    public boolean n;
    public Resource o;
    public DataSource p;
    public boolean q;
    public GlideException r;
    public boolean s;
    public EngineResource t;
    public DecodeJob u;
    public volatile boolean v;
    public boolean w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ResourceCallbacksAndExecutors f24501b = new ResourceCallbacksAndExecutors(new ArrayList(2));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateVerifier f24502c = StateVerifier.a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AtomicInteger f24508k = new AtomicInteger();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final EngineResourceFactory f24504f = x;

    public class CallLoadFailed implements Runnable {
        private final ResourceCallback cb;

        public CallLoadFailed(ResourceCallback resourceCallback) {
            this.cb = resourceCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.cb.g()) {
                synchronized (EngineJob.this) {
                    try {
                        if (EngineJob.this.f24501b.f24511b.contains(new ResourceCallbackAndExecutor(this.cb, Executors.f24984b))) {
                            EngineJob engineJob = EngineJob.this;
                            ResourceCallback resourceCallback = this.cb;
                            engineJob.getClass();
                            try {
                                resourceCallback.d(engineJob.r);
                            } catch (Throwable th) {
                                throw new CallbackException(th);
                            }
                        }
                        EngineJob.this.b();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public class CallResourceReady implements Runnable {
        private final ResourceCallback cb;

        public CallResourceReady(ResourceCallback resourceCallback) {
            this.cb = resourceCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.cb.g()) {
                synchronized (EngineJob.this) {
                    try {
                        if (EngineJob.this.f24501b.f24511b.contains(new ResourceCallbackAndExecutor(this.cb, Executors.f24984b))) {
                            EngineJob.this.t.c();
                            EngineJob engineJob = EngineJob.this;
                            ResourceCallback resourceCallback = this.cb;
                            engineJob.getClass();
                            try {
                                resourceCallback.c(engineJob.t, engineJob.p, engineJob.w);
                                EngineJob.this.i(this.cb);
                            } catch (Throwable th) {
                                throw new CallbackException(th);
                            }
                        }
                        EngineJob.this.b();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public static class EngineResourceFactory {
    }

    public static final class ResourceCallbackAndExecutor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ResourceCallback f24509a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Executor f24510b;

        public ResourceCallbackAndExecutor(ResourceCallback resourceCallback, Executor executor) {
            this.f24509a = resourceCallback;
            this.f24510b = executor;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof ResourceCallbackAndExecutor) {
                return this.f24509a.equals(((ResourceCallbackAndExecutor) obj).f24509a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f24509a.hashCode();
        }
    }

    public static final class ResourceCallbacksAndExecutors implements Iterable<ResourceCallbackAndExecutor> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f24511b;

        public ResourceCallbacksAndExecutors(ArrayList arrayList) {
            this.f24511b = arrayList;
        }

        @Override // java.lang.Iterable
        public final Iterator<ResourceCallbackAndExecutor> iterator() {
            return this.f24511b.iterator();
        }
    }

    public EngineJob(GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, Engine engine, Engine engine2, Pools$Pool pools$Pool) {
        this.f24505h = glideExecutor;
        this.f24506i = glideExecutor2;
        this.f24507j = glideExecutor4;
        this.g = engine;
        this.d = engine2;
        this.f24503e = pools$Pool;
    }

    public final synchronized void a(SingleRequest singleRequest, Executor executor) {
        try {
            this.f24502c.b();
            this.f24501b.f24511b.add(new ResourceCallbackAndExecutor(singleRequest, executor));
            if (this.q) {
                f(1);
                executor.execute(new CallResourceReady(singleRequest));
            } else if (this.s) {
                f(1);
                executor.execute(new CallLoadFailed(singleRequest));
            } else {
                Preconditions.a(!this.v, "Cannot add callbacks to a cancelled EngineJob");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void b() {
        EngineResource engineResource;
        synchronized (this) {
            try {
                this.f24502c.b();
                Preconditions.a(g(), "Not yet complete!");
                int iDecrementAndGet = this.f24508k.decrementAndGet();
                Preconditions.a(iDecrementAndGet >= 0, "Can't decrement below 0");
                if (iDecrementAndGet == 0) {
                    engineResource = this.t;
                    h();
                } else {
                    engineResource = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (engineResource != null) {
            engineResource.d();
        }
    }

    @Override // com.bumptech.glide.load.engine.DecodeJob.Callback
    public final void c(Resource resource, DataSource dataSource, boolean z) {
        synchronized (this) {
            this.o = resource;
            this.p = dataSource;
            this.w = z;
        }
        synchronized (this) {
            try {
                this.f24502c.b();
                if (this.v) {
                    this.o.a();
                    h();
                    return;
                }
                if (this.f24501b.f24511b.isEmpty()) {
                    throw new IllegalStateException("Received a resource without any callbacks to notify");
                }
                if (this.q) {
                    throw new IllegalStateException("Already have resource");
                }
                EngineResourceFactory engineResourceFactory = this.f24504f;
                Resource resource2 = this.o;
                boolean z2 = this.m;
                Key key = this.l;
                EngineResource.ResourceListener resourceListener = this.d;
                engineResourceFactory.getClass();
                this.t = new EngineResource(resource2, z2, true, key, resourceListener);
                this.q = true;
                ResourceCallbacksAndExecutors resourceCallbacksAndExecutors = this.f24501b;
                resourceCallbacksAndExecutors.getClass();
                ArrayList<ResourceCallbackAndExecutor> arrayList = new ArrayList(resourceCallbacksAndExecutors.f24511b);
                f(arrayList.size() + 1);
                this.g.a(this, this.l, this.t);
                for (ResourceCallbackAndExecutor resourceCallbackAndExecutor : arrayList) {
                    resourceCallbackAndExecutor.f24510b.execute(new CallResourceReady(resourceCallbackAndExecutor.f24509a));
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.DecodeJob.Callback
    public final void d(GlideException glideException) {
        synchronized (this) {
            this.r = glideException;
        }
        synchronized (this) {
            try {
                this.f24502c.b();
                if (this.v) {
                    h();
                    return;
                }
                if (this.f24501b.f24511b.isEmpty()) {
                    throw new IllegalStateException("Received an exception without any callbacks to notify");
                }
                if (this.s) {
                    throw new IllegalStateException("Already failed once");
                }
                this.s = true;
                Key key = this.l;
                ResourceCallbacksAndExecutors resourceCallbacksAndExecutors = this.f24501b;
                resourceCallbacksAndExecutors.getClass();
                ArrayList<ResourceCallbackAndExecutor> arrayList = new ArrayList(resourceCallbacksAndExecutors.f24511b);
                f(arrayList.size() + 1);
                this.g.a(this, key, null);
                for (ResourceCallbackAndExecutor resourceCallbackAndExecutor : arrayList) {
                    resourceCallbackAndExecutor.f24510b.execute(new CallLoadFailed(resourceCallbackAndExecutor.f24509a));
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.DecodeJob.Callback
    public final void e(DecodeJob decodeJob) {
        (this.n ? this.f24507j : this.f24506i).execute(decodeJob);
    }

    public final synchronized void f(int i2) {
        EngineResource engineResource;
        Preconditions.a(g(), "Not yet complete!");
        if (this.f24508k.getAndAdd(i2) == 0 && (engineResource = this.t) != null) {
            engineResource.c();
        }
    }

    public final boolean g() {
        return this.s || this.q || this.v;
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    public final StateVerifier getVerifier() {
        return this.f24502c;
    }

    public final synchronized void h() {
        if (this.l == null) {
            throw new IllegalArgumentException();
        }
        this.f24501b.f24511b.clear();
        this.l = null;
        this.t = null;
        this.o = null;
        this.s = false;
        this.v = false;
        this.q = false;
        this.w = false;
        this.u.release(false);
        this.u = null;
        this.r = null;
        this.p = null;
        this.f24503e.release(this);
    }

    public final synchronized void i(ResourceCallback resourceCallback) {
        try {
            this.f24502c.b();
            this.f24501b.f24511b.remove(new ResourceCallbackAndExecutor(resourceCallback, Executors.f24984b));
            if (this.f24501b.f24511b.isEmpty()) {
                if (!g()) {
                    this.v = true;
                    this.u.cancel();
                    this.g.b(this, this.l);
                }
                if (this.q || this.s) {
                    if (this.f24508k.get() == 0) {
                        h();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
