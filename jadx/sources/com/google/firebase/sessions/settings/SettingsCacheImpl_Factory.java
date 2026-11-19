package com.google.firebase.sessions.settings;

import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.TimeProvider;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes2.dex */
public final class SettingsCacheImpl_Factory implements Factory<SettingsCacheImpl> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f35611a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f35612b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Provider f35613c;

    public SettingsCacheImpl_Factory(Provider provider, Provider provider2, Provider provider3) {
        this.f35611a = provider;
        this.f35612b = provider2;
        this.f35613c = provider3;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SettingsCacheImpl((CoroutineContext) this.f35611a.get(), (TimeProvider) this.f35612b.get(), (DataStore) this.f35613c.get());
    }
}
