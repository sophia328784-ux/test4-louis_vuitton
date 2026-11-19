package com.google.firebase.components;

import com.google.firebase.inject.Provider;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
class LazySet<T> implements Provider<Set<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Set f34413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Set f34414b;

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        if (this.f34414b == null) {
            synchronized (this) {
                try {
                    if (this.f34414b == null) {
                        this.f34414b = Collections.newSetFromMap(new ConcurrentHashMap());
                        synchronized (this) {
                            try {
                                Iterator it = this.f34413a.iterator();
                                while (it.hasNext()) {
                                    this.f34414b.add(((Provider) it.next()).get());
                                }
                                this.f34413a = null;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Collections.unmodifiableSet(this.f34414b);
    }
}
