package com.bumptech.glide.load.engine;

import android.os.SystemClock;
import android.util.Log;
import androidx.core.util.Pools$Pool;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskCacheAdapter;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.pool.FactoryPools;
import defpackage.md;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class Engine implements EngineJobListener, MemoryCache.ResourceRemovedListener, EngineResource.ResourceListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean f24480h = Log.isLoggable("Engine", 2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Jobs f24481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EngineKeyFactory f24482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MemoryCache f24483c;
    public final EngineJobFactory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ResourceRecycler f24484e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DecodeJobFactory f24485f;
    public final ActiveResources g;

    public static class DecodeJobFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LazyDiskCacheProvider f24486a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Pools$Pool f24487b = FactoryPools.a(150, new FactoryPools.Factory<DecodeJob<?>>() { // from class: com.bumptech.glide.load.engine.Engine.DecodeJobFactory.1
            @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
            public final Object create() {
                DecodeJobFactory decodeJobFactory = DecodeJobFactory.this;
                return new DecodeJob(decodeJobFactory.f24486a, decodeJobFactory.f24487b);
            }
        });

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f24488c;

        public DecodeJobFactory(LazyDiskCacheProvider lazyDiskCacheProvider) {
            this.f24486a = lazyDiskCacheProvider;
        }
    }

    public static class EngineJobFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final GlideExecutor f24490a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final GlideExecutor f24491b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final GlideExecutor f24492c;
        public final GlideExecutor d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Engine f24493e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Engine f24494f;
        public final Pools$Pool g = FactoryPools.a(150, new FactoryPools.Factory<EngineJob<?>>() { // from class: com.bumptech.glide.load.engine.Engine.EngineJobFactory.1
            @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
            public final Object create() {
                EngineJobFactory engineJobFactory = EngineJobFactory.this;
                return new EngineJob(engineJobFactory.f24490a, engineJobFactory.f24491b, engineJobFactory.f24492c, engineJobFactory.d, engineJobFactory.f24493e, engineJobFactory.f24494f, engineJobFactory.g);
            }
        });

        public EngineJobFactory(GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, Engine engine, Engine engine2) {
            this.f24490a = glideExecutor;
            this.f24491b = glideExecutor2;
            this.f24492c = glideExecutor3;
            this.d = glideExecutor4;
            this.f24493e = engine;
            this.f24494f = engine2;
        }
    }

    public static class LazyDiskCacheProvider implements DecodeJob.DiskCacheProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DiskCache.Factory f24496a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public volatile DiskCache f24497b;

        public LazyDiskCacheProvider(DiskCache.Factory factory) {
            this.f24496a = factory;
        }

        @Override // com.bumptech.glide.load.engine.DecodeJob.DiskCacheProvider
        public final DiskCache a() {
            if (this.f24497b == null) {
                synchronized (this) {
                    try {
                        if (this.f24497b == null) {
                            this.f24497b = this.f24496a.build();
                        }
                        if (this.f24497b == null) {
                            this.f24497b = new DiskCacheAdapter();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return this.f24497b;
        }
    }

    public class LoadStatus {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final EngineJob f24498a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SingleRequest f24499b;

        public LoadStatus(SingleRequest singleRequest, EngineJob engineJob) {
            this.f24499b = singleRequest;
            this.f24498a = engineJob;
        }

        public final void a() {
            synchronized (Engine.this) {
                this.f24498a.i(this.f24499b);
            }
        }
    }

    public Engine(MemoryCache memoryCache, DiskCache.Factory factory, GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, boolean z) throws Throwable {
        this.f24483c = memoryCache;
        LazyDiskCacheProvider lazyDiskCacheProvider = new LazyDiskCacheProvider(factory);
        ActiveResources activeResources = new ActiveResources(z);
        this.g = activeResources;
        synchronized (this) {
            try {
                synchronized (activeResources) {
                    try {
                        try {
                            activeResources.f24437e = this;
                        } catch (Throwable th) {
                            th = th;
                            while (true) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                    }
                }
                this.f24482b = new EngineKeyFactory();
                this.f24481a = new Jobs();
                this.d = new EngineJobFactory(glideExecutor, glideExecutor2, glideExecutor3, glideExecutor4, this, this);
                this.f24485f = new DecodeJobFactory(lazyDiskCacheProvider);
                this.f24484e = new ResourceRecycler();
                memoryCache.e(this);
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    public static void g(Resource resource) {
        if (resource instanceof EngineResource) {
            ((EngineResource) resource).d();
        } else {
            md.n("Cannot release anything but an EngineResource");
        }
    }

    @Override // com.bumptech.glide.load.engine.EngineJobListener
    public final synchronized void a(EngineJob engineJob, Key key, EngineResource engineResource) {
        if (engineResource != null) {
            try {
                if (engineResource.f24519b) {
                    this.g.a(key, engineResource);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Jobs jobs = this.f24481a;
        jobs.getClass();
        HashMap map = jobs.f24530a;
        if (engineJob.equals(map.get(key))) {
            map.remove(key);
        }
    }

    @Override // com.bumptech.glide.load.engine.EngineJobListener
    public final synchronized void b(EngineJob engineJob, Key key) {
        Jobs jobs = this.f24481a;
        jobs.getClass();
        engineJob.getClass();
        HashMap map = jobs.f24530a;
        if (engineJob.equals(map.get(key))) {
            map.remove(key);
        }
    }

    @Override // com.bumptech.glide.load.engine.EngineResource.ResourceListener
    public final void c(Key key, EngineResource engineResource) {
        ActiveResources activeResources = this.g;
        synchronized (activeResources) {
            ActiveResources.ResourceWeakReference resourceWeakReference = (ActiveResources.ResourceWeakReference) activeResources.f24436c.remove(key);
            if (resourceWeakReference != null) {
                resourceWeakReference.f24440c = null;
                resourceWeakReference.clear();
            }
        }
        if (engineResource.f24519b) {
            this.f24483c.c(key, engineResource);
        } else {
            this.f24484e.a(engineResource, false);
        }
    }

    public final LoadStatus d(GlideContext glideContext, Object obj, Key key, int i2, int i3, Class cls, Class cls2, Priority priority, DiskCacheStrategy diskCacheStrategy, CachedHashCodeArrayMap cachedHashCodeArrayMap, boolean z, boolean z2, Options options, boolean z3, boolean z4, SingleRequest singleRequest, Executor executor) {
        long jElapsedRealtimeNanos;
        if (f24480h) {
            int i4 = LogTime.f24987a;
            jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        } else {
            jElapsedRealtimeNanos = 0;
        }
        this.f24482b.getClass();
        EngineKey engineKey = new EngineKey(obj, key, i2, i3, cachedHashCodeArrayMap, cls, cls2, options);
        synchronized (this) {
            try {
                EngineResource engineResourceE = e(engineKey, z3, jElapsedRealtimeNanos);
                if (engineResourceE == null) {
                    return h(glideContext, obj, key, i2, i3, cls, cls2, priority, diskCacheStrategy, cachedHashCodeArrayMap, z, z2, options, z3, z4, singleRequest, executor, engineKey, jElapsedRealtimeNanos);
                }
                singleRequest.c(engineResourceE, DataSource.MEMORY_CACHE, false);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final EngineResource e(EngineKey engineKey, boolean z, long j2) {
        EngineResource<?> engineResource;
        Engine engine;
        EngineKey engineKey2;
        EngineResource engineResource2;
        if (z) {
            ActiveResources activeResources = this.g;
            synchronized (activeResources) {
                ActiveResources.ResourceWeakReference resourceWeakReference = (ActiveResources.ResourceWeakReference) activeResources.f24436c.get(engineKey);
                if (resourceWeakReference == null) {
                    engineResource = null;
                } else {
                    engineResource = resourceWeakReference.get();
                    if (engineResource == null) {
                        activeResources.b(resourceWeakReference);
                    }
                }
            }
            if (engineResource != null) {
                engineResource.c();
            }
            if (engineResource != null) {
                if (f24480h) {
                    int i2 = LogTime.f24987a;
                    SystemClock.elapsedRealtimeNanos();
                    Objects.toString(engineKey);
                }
                return engineResource;
            }
            Resource resourceD = this.f24483c.d(engineKey);
            if (resourceD == null) {
                engine = this;
                engineKey2 = engineKey;
                engineResource2 = null;
            } else if (resourceD instanceof EngineResource) {
                engineResource2 = (EngineResource) resourceD;
                engine = this;
                engineKey2 = engineKey;
            } else {
                engine = this;
                engineKey2 = engineKey;
                engineResource2 = new EngineResource(resourceD, true, true, engineKey2, engine);
            }
            if (engineResource2 != null) {
                engineResource2.c();
                engine.g.a(engineKey2, engineResource2);
            }
            if (engineResource2 != null) {
                if (f24480h) {
                    int i3 = LogTime.f24987a;
                    SystemClock.elapsedRealtimeNanos();
                    Objects.toString(engineKey2);
                }
                return engineResource2;
            }
        }
        return null;
    }

    public final void f(Resource resource) {
        this.f24484e.a(resource, true);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00c0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.bumptech.glide.load.engine.Engine.LoadStatus h(com.bumptech.glide.GlideContext r22, java.lang.Object r23, com.bumptech.glide.load.Key r24, int r25, int r26, java.lang.Class r27, java.lang.Class r28, com.bumptech.glide.Priority r29, com.bumptech.glide.load.engine.DiskCacheStrategy r30, java.util.Map r31, boolean r32, boolean r33, com.bumptech.glide.load.Options r34, boolean r35, boolean r36, com.bumptech.glide.request.SingleRequest r37, java.util.concurrent.Executor r38, com.bumptech.glide.load.engine.EngineKey r39, long r40) throws java.lang.Throwable {
        /*
            r21 = this;
            r0 = r21
            r1 = r37
            r2 = r38
            r6 = r39
            com.bumptech.glide.load.engine.Jobs r3 = r0.f24481a
            java.util.HashMap r3 = r3.f24530a
            java.lang.Object r3 = r3.get(r6)
            com.bumptech.glide.load.engine.EngineJob r3 = (com.bumptech.glide.load.engine.EngineJob) r3
            if (r3 == 0) goto L29
            r3.a(r1, r2)
            boolean r2 = com.bumptech.glide.load.engine.Engine.f24480h
            if (r2 == 0) goto L23
            int r2 = com.bumptech.glide.util.LogTime.f24987a
            android.os.SystemClock.elapsedRealtimeNanos()
            java.util.Objects.toString(r6)
        L23:
            com.bumptech.glide.load.engine.Engine$LoadStatus r2 = new com.bumptech.glide.load.engine.Engine$LoadStatus
            r2.<init>(r1, r3)
            return r2
        L29:
            com.bumptech.glide.load.engine.Engine$EngineJobFactory r3 = r0.d
            androidx.core.util.Pools$Pool r3 = r3.g
            java.lang.Object r3 = r3.acquire()
            com.bumptech.glide.load.engine.EngineJob r3 = (com.bumptech.glide.load.engine.EngineJob) r3
            java.lang.String r4 = "Argument must not be null"
            com.bumptech.glide.util.Preconditions.c(r3, r4)
            monitor-enter(r3)
            r3.l = r6     // Catch: java.lang.Throwable -> Lbc
            r4 = r35
            r3.m = r4     // Catch: java.lang.Throwable -> Lbc
            r4 = r36
            r3.n = r4     // Catch: java.lang.Throwable -> Lbc
            monitor-exit(r3)
            com.bumptech.glide.load.engine.Engine$DecodeJobFactory r4 = r0.f24485f
            androidx.core.util.Pools$Pool r5 = r4.f24487b
            java.lang.Object r5 = r5.acquire()
            com.bumptech.glide.load.engine.DecodeJob r5 = (com.bumptech.glide.load.engine.DecodeJob) r5
            java.lang.String r7 = "Argument must not be null"
            com.bumptech.glide.util.Preconditions.c(r5, r7)
            int r7 = r4.f24488c
            int r8 = r7 + 1
            r4.f24488c = r8
            r17 = 0
            r4 = r22
            r8 = r25
            r9 = r26
            r10 = r27
            r11 = r28
            r12 = r29
            r13 = r30
            r14 = r31
            r15 = r32
            r16 = r33
            r18 = r34
            r19 = r3
            r3 = r5
            r20 = r7
            r5 = r23
            r7 = r24
            com.bumptech.glide.load.engine.DecodeJob r3 = r3.init(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20)
            r4 = r19
            com.bumptech.glide.load.engine.Jobs r5 = r0.f24481a
            r5.getClass()
            java.util.HashMap r5 = r5.f24530a
            r5.put(r6, r4)
            r4.a(r1, r2)
            monitor-enter(r4)
            r4.u = r3     // Catch: java.lang.Throwable -> L99
            boolean r2 = r3.willDecodeFromCache()     // Catch: java.lang.Throwable -> L99
            if (r2 == 0) goto L9b
            com.bumptech.glide.load.engine.executor.GlideExecutor r2 = r4.f24505h     // Catch: java.lang.Throwable -> L99
            goto La4
        L99:
            r0 = move-exception
            goto Lba
        L9b:
            boolean r2 = r4.n     // Catch: java.lang.Throwable -> L99
            if (r2 == 0) goto La2
            com.bumptech.glide.load.engine.executor.GlideExecutor r2 = r4.f24507j     // Catch: java.lang.Throwable -> L99
            goto La4
        La2:
            com.bumptech.glide.load.engine.executor.GlideExecutor r2 = r4.f24506i     // Catch: java.lang.Throwable -> L99
        La4:
            r2.execute(r3)     // Catch: java.lang.Throwable -> L99
            monitor-exit(r4)
            boolean r2 = com.bumptech.glide.load.engine.Engine.f24480h
            if (r2 == 0) goto Lb4
            int r2 = com.bumptech.glide.util.LogTime.f24987a
            android.os.SystemClock.elapsedRealtimeNanos()
            java.util.Objects.toString(r6)
        Lb4:
            com.bumptech.glide.load.engine.Engine$LoadStatus r2 = new com.bumptech.glide.load.engine.Engine$LoadStatus
            r2.<init>(r1, r4)
            return r2
        Lba:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L99
            throw r0
        Lbc:
            r0 = move-exception
            r4 = r3
        Lbe:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> Lc0
            throw r0
        Lc0:
            r0 = move-exception
            goto Lbe
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.Engine.h(com.bumptech.glide.GlideContext, java.lang.Object, com.bumptech.glide.load.Key, int, int, java.lang.Class, java.lang.Class, com.bumptech.glide.Priority, com.bumptech.glide.load.engine.DiskCacheStrategy, java.util.Map, boolean, boolean, com.bumptech.glide.load.Options, boolean, boolean, com.bumptech.glide.request.SingleRequest, java.util.concurrent.Executor, com.bumptech.glide.load.engine.EngineKey, long):com.bumptech.glide.load.engine.Engine$LoadStatus");
    }
}
