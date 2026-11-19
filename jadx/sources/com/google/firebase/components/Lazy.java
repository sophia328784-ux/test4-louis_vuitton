package com.google.firebase.components;

import com.google.firebase.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public class Lazy<T> implements Provider<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f34410c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Object f34411a = f34410c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Provider f34412b;

    public Lazy(Provider<T> provider) {
        this.f34412b = provider;
    }

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        Object obj;
        Object obj2 = this.f34411a;
        Object obj3 = f34410c;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.f34411a;
                if (obj == obj3) {
                    obj = this.f34412b.get();
                    this.f34411a = obj;
                    this.f34412b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
