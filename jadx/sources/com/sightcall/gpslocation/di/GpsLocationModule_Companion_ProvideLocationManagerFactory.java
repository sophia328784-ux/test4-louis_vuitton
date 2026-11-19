package com.sightcall.gpslocation.di;

import android.content.Context;
import android.location.LocationManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class GpsLocationModule_Companion_ProvideLocationManagerFactory implements Factory<LocationManager> {
    private final Provider<Context> contextProvider;

    private GpsLocationModule_Companion_ProvideLocationManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public static GpsLocationModule_Companion_ProvideLocationManagerFactory create(Provider<Context> provider) {
        return new GpsLocationModule_Companion_ProvideLocationManagerFactory(provider);
    }

    public static LocationManager provideLocationManager(Context context) {
        LocationManager locationManagerProvideLocationManager = GpsLocationModule.INSTANCE.provideLocationManager(context);
        Preconditions.c(locationManagerProvideLocationManager);
        return locationManagerProvideLocationManager;
    }

    @Override // javax.inject.Provider
    public LocationManager get() {
        return provideLocationManager((Context) this.contextProvider.get());
    }
}
