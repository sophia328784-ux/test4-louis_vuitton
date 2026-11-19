package dagger.internal;

import dagger.Lazy;

/* JADX INFO: loaded from: classes3.dex */
public final class DoubleCheck<T> implements Provider<T>, Lazy<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f68525c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Provider f68526a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Object f68527b = f68525c;

    public DoubleCheck(Provider provider) {
        this.f68526a = provider;
    }

    public static Lazy a(Provider provider) {
        if (provider instanceof Lazy) {
            return (Lazy) provider;
        }
        provider.getClass();
        return new DoubleCheck(provider);
    }

    public static Provider b(Provider provider) {
        provider.getClass();
        return provider instanceof DoubleCheck ? provider : new DoubleCheck(provider);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        Object obj;
        Object obj2 = this.f68527b;
        Object obj3 = f68525c;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            obj = this.f68527b;
            if (obj == obj3) {
                obj = this.f68526a.get();
                Object obj4 = this.f68527b;
                if (obj4 != obj3 && obj4 != obj) {
                    throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + obj + ". This is likely due to a circular dependency.");
                }
                this.f68527b = obj;
                this.f68526a = null;
            }
        }
        return obj;
    }
}
