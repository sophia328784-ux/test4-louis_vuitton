package com.sightcall.gpslocation.di;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class GpsLocationModule_Companion_ProvideGmsLocationManagerFactory implements Factory<Holder> {
    private final Provider<Context> contextProvider;

    private GpsLocationModule_Companion_ProvideGmsLocationManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public static GpsLocationModule_Companion_ProvideGmsLocationManagerFactory create(Provider<Context> provider) {
        return new GpsLocationModule_Companion_ProvideGmsLocationManagerFactory(provider);
    }

    public static Holder provideGmsLocationManager(Context context) {
        Holder holderProvideGmsLocationManager = GpsLocationModule.INSTANCE.provideGmsLocationManager(context);
        Preconditions.c(holderProvideGmsLocationManager);
        return holderProvideGmsLocationManager;
    }

    @Override // javax.inject.Provider
    public Holder get() {
        return provideGmsLocationManager((Context) this.contextProvider.get());
    }
}
