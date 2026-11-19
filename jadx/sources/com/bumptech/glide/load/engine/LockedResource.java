package com.bumptech.glide.load.engine;

import androidx.core.util.Pools$Pool;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier;

/* JADX INFO: loaded from: classes2.dex */
final class LockedResource<Z> implements Resource<Z>, FactoryPools.Poolable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Pools$Pool f24534f = FactoryPools.a(20, new AnonymousClass1());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StateVerifier f24535b = StateVerifier.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Resource f24536c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f24537e;

    /* JADX INFO: renamed from: com.bumptech.glide.load.engine.LockedResource$1, reason: invalid class name */
    public class AnonymousClass1 implements FactoryPools.Factory<LockedResource<?>> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        public final Object create() {
            return new LockedResource();
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final synchronized void a() {
        this.f24535b.b();
        this.f24537e = true;
        if (!this.d) {
            this.f24536c.a();
            this.f24536c = null;
            f24534f.release(this);
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class b() {
        return this.f24536c.b();
    }

    public final synchronized void c() {
        this.f24535b.b();
        if (!this.d) {
            throw new IllegalStateException("Already unlocked");
        }
        this.d = false;
        if (this.f24537e) {
            a();
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Object get() {
        return this.f24536c.get();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        return this.f24536c.getSize();
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    public final StateVerifier getVerifier() {
        return this.f24535b;
    }
}
