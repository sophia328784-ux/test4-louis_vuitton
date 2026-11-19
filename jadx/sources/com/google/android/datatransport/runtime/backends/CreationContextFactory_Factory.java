package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.time.Clock;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CreationContextFactory_Factory implements Factory<CreationContextFactory> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f28002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f28003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Provider f28004c;

    public CreationContextFactory_Factory(Provider<Context> provider, Provider<Clock> provider2, Provider<Clock> provider3) {
        this.f28002a = provider;
        this.f28003b = provider2;
        this.f28004c = provider3;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new CreationContextFactory((Context) this.f28002a.get(), (Clock) this.f28003b.get(), (Clock) this.f28004c.get());
    }
}
