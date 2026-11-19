package com.google.firebase.sessions;

import com.google.firebase.inject.Provider;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.InstanceFactory;

/* JADX INFO: loaded from: classes2.dex */
public final class EventGDTLogger_Factory implements Factory<EventGDTLogger> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InstanceFactory f35425a;

    public EventGDTLogger_Factory(InstanceFactory instanceFactory) {
        this.f35425a = instanceFactory;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new EventGDTLogger((Provider) this.f35425a.f35559a);
    }
}
