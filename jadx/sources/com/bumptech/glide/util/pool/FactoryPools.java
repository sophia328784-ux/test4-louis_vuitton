package com.bumptech.glide.util.pool;

import android.util.Log;
import androidx.core.util.Pools$Pool;
import androidx.core.util.Pools$SynchronizedPool;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FactoryPools {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Resetter f25001a = new AnonymousClass1();

    /* JADX INFO: renamed from: com.bumptech.glide.util.pool.FactoryPools$1, reason: invalid class name */
    public class AnonymousClass1 implements Resetter<Object> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Resetter
        public final void a(Object obj) {
        }
    }

    /* JADX INFO: renamed from: com.bumptech.glide.util.pool.FactoryPools$2, reason: invalid class name */
    class AnonymousClass2 implements Factory<List<Object>> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        public final Object create() {
            return new ArrayList();
        }
    }

    /* JADX INFO: renamed from: com.bumptech.glide.util.pool.FactoryPools$3, reason: invalid class name */
    class AnonymousClass3 implements Resetter<List<Object>> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Resetter
        public final void a(Object obj) {
            ((List) obj).clear();
        }
    }

    public interface Factory<T> {
        Object create();
    }

    public static final class FactoryPool<T> implements Pools$Pool<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Factory f25002a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Resetter f25003b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Pools$SynchronizedPool f25004c;

        public FactoryPool(Pools$SynchronizedPool pools$SynchronizedPool, Factory factory, Resetter resetter) {
            this.f25004c = pools$SynchronizedPool;
            this.f25002a = factory;
            this.f25003b = resetter;
        }

        @Override // androidx.core.util.Pools$Pool
        public final Object acquire() {
            Object objAcquire = this.f25004c.acquire();
            if (objAcquire == null) {
                objAcquire = this.f25002a.create();
                if (Log.isLoggable("FactoryPools", 2)) {
                    objAcquire.getClass().toString();
                }
            }
            if (objAcquire instanceof Poolable) {
                ((StateVerifier.DefaultStateVerifier) ((Poolable) objAcquire).getVerifier()).f25005a = false;
            }
            return objAcquire;
        }

        @Override // androidx.core.util.Pools$Pool
        public final boolean release(Object obj) {
            if (obj instanceof Poolable) {
                ((StateVerifier.DefaultStateVerifier) ((Poolable) obj).getVerifier()).f25005a = true;
            }
            this.f25003b.a(obj);
            return this.f25004c.release(obj);
        }
    }

    public interface Poolable {
        StateVerifier getVerifier();
    }

    public interface Resetter<T> {
        void a(Object obj);
    }

    public static Pools$Pool a(int i2, Factory factory) {
        return new FactoryPool(new Pools$SynchronizedPool(i2), factory, f25001a);
    }

    public static Pools$Pool b() {
        return new FactoryPool(new Pools$SynchronizedPool(20), new AnonymousClass2(), new AnonymousClass3());
    }
}
