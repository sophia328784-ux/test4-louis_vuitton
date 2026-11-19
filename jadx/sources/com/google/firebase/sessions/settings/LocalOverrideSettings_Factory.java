package com.google.firebase.sessions.settings;

import android.content.Context;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.InstanceFactory;

/* JADX INFO: loaded from: classes2.dex */
public final class LocalOverrideSettings_Factory implements Factory<LocalOverrideSettings> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InstanceFactory f35561a;

    public LocalOverrideSettings_Factory(InstanceFactory instanceFactory) {
        this.f35561a = instanceFactory;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new LocalOverrideSettings((Context) this.f35561a.f35559a);
    }
}
