package com.google.firebase.sessions;

import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;
import com.google.firebase.sessions.settings.SessionsSettings;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes2.dex */
public final class SharedSessionRepositoryImpl_Factory implements Factory<SharedSessionRepositoryImpl> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f35532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f35533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Provider f35534c;
    public final Provider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Provider f35535e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Provider f35536f;
    public final Provider g;

    public SharedSessionRepositoryImpl_Factory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5, Provider provider6, Provider provider7) {
        this.f35532a = provider;
        this.f35533b = provider2;
        this.f35534c = provider3;
        this.d = provider4;
        this.f35535e = provider5;
        this.f35536f = provider6;
        this.g = provider7;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SharedSessionRepositoryImpl((SessionsSettings) this.f35532a.get(), (SessionGenerator) this.f35533b.get(), (SessionFirelogPublisher) this.f35534c.get(), (TimeProvider) this.d.get(), (DataStore) this.f35535e.get(), (ProcessDataManager) this.f35536f.get(), (CoroutineContext) this.g.get());
    }
}
