package com.google.firebase.sessions.dagger.internal;

import com.google.firebase.sessions.dagger.Lazy;

/* JADX INFO: loaded from: classes2.dex */
public final class DoubleCheck<T> implements Provider<T>, Lazy<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f35556c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Provider f35557a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Object f35558b;

    public static Provider a(Provider provider) {
        provider.getClass();
        if (provider instanceof DoubleCheck) {
            return provider;
        }
        DoubleCheck doubleCheck = new DoubleCheck();
        doubleCheck.f35558b = f35556c;
        doubleCheck.f35557a = provider;
        return doubleCheck;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        Object obj;
        Object obj2 = this.f35558b;
        Object obj3 = f35556c;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            obj = this.f35558b;
            if (obj == obj3) {
                obj = this.f35557a.get();
                Object obj4 = this.f35558b;
                if (obj4 != obj3 && obj4 != obj) {
                    throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + obj + ". This is likely due to a circular dependency.");
                }
                this.f35558b = obj;
                this.f35557a = null;
            }
        }
        return obj;
    }
}
