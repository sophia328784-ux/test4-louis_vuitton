package com.google.android.datatransport.runtime.dagger.internal;

import com.google.android.datatransport.runtime.dagger.Lazy;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class DoubleCheck<T> implements Provider<T>, Lazy<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f28012c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Provider f28013a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Object f28014b;

    public static Provider a(Provider provider) {
        provider.getClass();
        if (provider instanceof DoubleCheck) {
            return provider;
        }
        DoubleCheck doubleCheck = new DoubleCheck();
        doubleCheck.f28014b = f28012c;
        doubleCheck.f28013a = provider;
        return doubleCheck;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        Object obj;
        Object obj2 = this.f28014b;
        Object obj3 = f28012c;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.f28014b;
                if (obj == obj3) {
                    obj = this.f28013a.get();
                    Object obj4 = this.f28014b;
                    if (obj4 != obj3 && obj4 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + obj + ". This is likely due to a circular dependency.");
                    }
                    this.f28014b = obj;
                    this.f28013a = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
