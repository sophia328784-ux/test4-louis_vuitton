package com.perfectcorp.thirdparty.com.google.common.base;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class e<T> {

    public static final class a extends e<Object> implements Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f42095b = new a();

        @Override // com.perfectcorp.thirdparty.com.google.common.base.e
        public final int c(Object obj) {
            return obj.hashCode();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.base.e
        public final boolean e(Object obj, Object obj2) {
            return obj.equals(obj2);
        }
    }

    public static final class b extends e<Object> implements Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f42096b = new b();

        @Override // com.perfectcorp.thirdparty.com.google.common.base.e
        public final int c(Object obj) {
            return System.identityHashCode(obj);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.base.e
        public final boolean e(Object obj, Object obj2) {
            return false;
        }
    }

    public static e a() {
        return a.f42095b;
    }

    public static e d() {
        return b.f42096b;
    }

    public final boolean b(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return e(obj, obj2);
    }

    public abstract int c(Object obj);

    public abstract boolean e(Object obj, Object obj2);
}
