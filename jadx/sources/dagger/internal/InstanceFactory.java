package dagger.internal;

import dagger.Lazy;
import defpackage.r81;

/* JADX INFO: loaded from: classes3.dex */
public final class InstanceFactory<T> implements Factory<T>, Lazy<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f68528a;

    public InstanceFactory(Object obj) {
        this.f68528a = obj;
    }

    public static InstanceFactory a(Object obj) {
        if (obj != null) {
            return new InstanceFactory(obj);
        }
        r81.d("instance cannot be null");
        return null;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return this.f68528a;
    }
}
