package dagger.internal;

/* JADX INFO: loaded from: classes3.dex */
public final class SingleCheck<T> implements Provider<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f68530c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Provider f68531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Object f68532b;

    public static Provider a(Provider provider) {
        if ((provider instanceof SingleCheck) || (provider instanceof DoubleCheck)) {
            return provider;
        }
        SingleCheck singleCheck = new SingleCheck();
        singleCheck.f68532b = f68530c;
        singleCheck.f68531a = provider;
        return singleCheck;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        Object obj = this.f68532b;
        if (obj != f68530c) {
            return obj;
        }
        Provider provider = this.f68531a;
        if (provider == null) {
            return this.f68532b;
        }
        Object obj2 = provider.get();
        this.f68532b = obj2;
        this.f68531a = null;
        return obj2;
    }
}
