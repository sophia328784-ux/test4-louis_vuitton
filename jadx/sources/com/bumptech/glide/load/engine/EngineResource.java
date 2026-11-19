package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
class EngineResource<Z> implements Resource<Z> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f24519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f24520c;
    public final Resource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ResourceListener f24521e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Key f24522f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f24523h;

    public interface ResourceListener {
        void c(Key key, EngineResource engineResource);
    }

    public EngineResource(Resource resource, boolean z, boolean z2, Key key, ResourceListener resourceListener) {
        Preconditions.c(resource, "Argument must not be null");
        this.d = resource;
        this.f24519b = z;
        this.f24520c = z2;
        this.f24522f = key;
        Preconditions.c(resourceListener, "Argument must not be null");
        this.f24521e = resourceListener;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final synchronized void a() {
        if (this.g > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f24523h) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f24523h = true;
        if (this.f24520c) {
            this.d.a();
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class b() {
        return this.d.b();
    }

    public final synchronized void c() {
        if (this.f24523h) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.g++;
    }

    public final void d() {
        boolean z;
        synchronized (this) {
            int i2 = this.g;
            if (i2 <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z = true;
            int i3 = i2 - 1;
            this.g = i3;
            if (i3 != 0) {
                z = false;
            }
        }
        if (z) {
            this.f24521e.c(this.f24522f, this);
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Object get() {
        return this.d.get();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        return this.d.getSize();
    }

    public final synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f24519b + ", listener=" + this.f24521e + ", key=" + this.f24522f + ", acquired=" + this.g + ", isRecycled=" + this.f24523h + ", resource=" + this.d + '}';
    }
}
