package com.sightcall.gpslocation.di;

import android.content.Context;
import android.location.LocationManager;
import com.sightcall.gpslocation.datasource.GpsDatasource;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory implements Factory<GpsDatasource> {
    private final Provider<Context> contextProvider;
    private final Provider<Holder> holderProvider;
    private final Provider<LocationManager> locationManagerProvider;

    private GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory(Provider<Context> provider, Provider<LocationManager> provider2, Provider<Holder> provider3) {
        this.contextProvider = provider;
        this.locationManagerProvider = provider2;
        this.holderProvider = provider3;
    }

    public static GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory create(Provider<Context> provider, Provider<LocationManager> provider2, Provider<Holder> provider3) {
        return new GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory(provider, provider2, provider3);
    }

    public static GpsDatasource provideGpsLocationDataSource$GpsLocation_release(Context context, LocationManager locationManager, Holder holder) {
        GpsDatasource gpsDatasourceProvideGpsLocationDataSource$GpsLocation_release = GpsLocationModule.INSTANCE.provideGpsLocationDataSource$GpsLocation_release(context, locationManager, holder);
        Preconditions.c(gpsDatasourceProvideGpsLocationDataSource$GpsLocation_release);
        return gpsDatasourceProvideGpsLocationDataSource$GpsLocation_release;
    }

    @Override // javax.inject.Provider
    public GpsDatasource get() {
        return provideGpsLocationDataSource$GpsLocation_release((Context) this.contextProvider.get(), (LocationManager) this.locationManagerProvider.get(), (Holder) this.holderProvider.get());
    }
}
