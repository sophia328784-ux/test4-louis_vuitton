package com.sightcall.gpslocation;

import com.sightcall.gpslocation.datasource.GpsDatasource;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class GpsRepositoryImpl_Factory implements Factory<GpsRepositoryImpl> {
    private final Provider<GpsDatasource> gpsDataSourceProvider;

    private GpsRepositoryImpl_Factory(Provider<GpsDatasource> provider) {
        this.gpsDataSourceProvider = provider;
    }

    public static GpsRepositoryImpl_Factory create(Provider<GpsDatasource> provider) {
        return new GpsRepositoryImpl_Factory(provider);
    }

    public static GpsRepositoryImpl newInstance(GpsDatasource gpsDatasource) {
        return new GpsRepositoryImpl(gpsDatasource);
    }

    @Override // javax.inject.Provider
    public GpsRepositoryImpl get() {
        return newInstance((GpsDatasource) this.gpsDataSourceProvider.get());
    }
}
