package com.bumptech.glide.load.model;

import com.bumptech.glide.util.LruCache;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes2.dex */
public class ModelCache<A, B> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LruCache f24671a;

    /* JADX INFO: renamed from: com.bumptech.glide.load.model.ModelCache$1, reason: invalid class name */
    public class AnonymousClass1 extends LruCache<ModelKey<A>, B> {
        @Override // com.bumptech.glide.util.LruCache
        public final void h(Object obj, Object obj2) {
            ModelKey modelKey = (ModelKey) obj;
            modelKey.getClass();
            ArrayDeque arrayDeque = ModelKey.f24672b;
            synchronized (arrayDeque) {
                arrayDeque.offer(modelKey);
            }
        }
    }

    public static final class ModelKey<A> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final ArrayDeque f24672b = new ArrayDeque(0);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f24673a;

        public static ModelKey a(Object obj) {
            ModelKey modelKey;
            ArrayDeque arrayDeque = f24672b;
            synchronized (arrayDeque) {
                modelKey = (ModelKey) arrayDeque.poll();
            }
            if (modelKey == null) {
                modelKey = new ModelKey();
            }
            modelKey.f24673a = obj;
            return modelKey;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ModelKey) && this.f24673a.equals(((ModelKey) obj).f24673a);
        }

        public final int hashCode() {
            return this.f24673a.hashCode();
        }
    }

    public ModelCache(long j2) {
        this.f24671a = new AnonymousClass1(j2);
    }

    public final Object a(Object obj) {
        ModelKey modelKeyA = ModelKey.a(obj);
        Object objF = this.f24671a.f(modelKeyA);
        ArrayDeque arrayDeque = ModelKey.f24672b;
        synchronized (arrayDeque) {
            arrayDeque.offer(modelKeyA);
        }
        return objF;
    }

    public final void b(Object obj, Object obj2) {
        this.f24671a.i(ModelKey.a(obj), obj2);
    }

    public ModelCache() {
        this(250L);
    }
}
