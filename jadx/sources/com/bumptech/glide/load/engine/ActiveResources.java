package com.bumptech.glide.load.engine;

import android.os.Process;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes2.dex */
final class ActiveResources {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f24434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExecutorService f24435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f24436c;
    public final ReferenceQueue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Engine f24437e;

    /* JADX INFO: renamed from: com.bumptech.glide.load.engine.ActiveResources$1, reason: invalid class name */
    class AnonymousClass1 implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(final Runnable runnable) {
            return new Thread(new Runnable() { // from class: com.bumptech.glide.load.engine.ActiveResources.1.1
                @Override // java.lang.Runnable
                public void run() {
                    Process.setThreadPriority(10);
                    runnable.run();
                }
            }, "glide-active-resources");
        }
    }

    public interface DequeuedResourceCallback {
    }

    public static final class ResourceWeakReference extends WeakReference<EngineResource<?>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Key f24438a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f24439b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Resource f24440c;

        public ResourceWeakReference(Key key, EngineResource engineResource, ReferenceQueue referenceQueue, boolean z) {
            Resource resource;
            super(engineResource, referenceQueue);
            Preconditions.c(key, "Argument must not be null");
            this.f24438a = key;
            if (engineResource.f24519b && z) {
                resource = engineResource.d;
                Preconditions.c(resource, "Argument must not be null");
            } else {
                resource = null;
            }
            this.f24440c = resource;
            this.f24439b = engineResource.f24519b;
        }
    }

    public ActiveResources(boolean z) {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new AnonymousClass1());
        this.f24436c = new HashMap();
        this.d = new ReferenceQueue();
        this.f24434a = z;
        this.f24435b = executorServiceNewSingleThreadExecutor;
        executorServiceNewSingleThreadExecutor.execute(new Runnable() { // from class: com.bumptech.glide.load.engine.ActiveResources.2
            @Override // java.lang.Runnable
            public void run() {
                ActiveResources activeResources = ActiveResources.this;
                activeResources.getClass();
                while (true) {
                    try {
                        activeResources.b((ResourceWeakReference) activeResources.d.remove());
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        });
    }

    public final synchronized void a(Key key, EngineResource engineResource) {
        ResourceWeakReference resourceWeakReference = (ResourceWeakReference) this.f24436c.put(key, new ResourceWeakReference(key, engineResource, this.d, this.f24434a));
        if (resourceWeakReference != null) {
            resourceWeakReference.f24440c = null;
            resourceWeakReference.clear();
        }
    }

    public final void b(ResourceWeakReference resourceWeakReference) {
        Resource resource;
        synchronized (this) {
            this.f24436c.remove(resourceWeakReference.f24438a);
            if (resourceWeakReference.f24439b && (resource = resourceWeakReference.f24440c) != null) {
                this.f24437e.c(resourceWeakReference.f24438a, new EngineResource(resource, true, false, resourceWeakReference.f24438a, this.f24437e));
            }
        }
    }
}
