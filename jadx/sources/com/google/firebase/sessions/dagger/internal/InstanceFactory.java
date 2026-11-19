package com.google.firebase.sessions.dagger.internal;

import com.google.firebase.sessions.dagger.Lazy;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
public final class InstanceFactory<T> implements Factory<T>, Lazy<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f35559a;

    public InstanceFactory(Object obj) {
        this.f35559a = obj;
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
        return this.f35559a;
    }
}
