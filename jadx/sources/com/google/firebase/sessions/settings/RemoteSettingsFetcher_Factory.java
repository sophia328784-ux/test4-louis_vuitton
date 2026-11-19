package com.google.firebase.sessions.settings;

import com.google.firebase.sessions.ApplicationInfo;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.InstanceFactory;
import com.google.firebase.sessions.dagger.internal.Provider;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes2.dex */
public final class RemoteSettingsFetcher_Factory implements Factory<RemoteSettingsFetcher> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f35581a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InstanceFactory f35582b;

    public RemoteSettingsFetcher_Factory(Provider provider, InstanceFactory instanceFactory) {
        this.f35581a = provider;
        this.f35582b = instanceFactory;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new RemoteSettingsFetcher((ApplicationInfo) this.f35581a.get(), (CoroutineContext) this.f35582b.f35559a);
    }
}
