package com.sightcall.session.datasource.reference.v3;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ReferenceDataSourceV3Impl_Factory implements Factory<ReferenceDataSourceV3Impl> {
    private final Provider<Context> contextProvider;
    private final Provider<ReferenceApiV3> referenceApiProvider;

    private ReferenceDataSourceV3Impl_Factory(Provider<ReferenceApiV3> provider, Provider<Context> provider2) {
        this.referenceApiProvider = provider;
        this.contextProvider = provider2;
    }

    public static ReferenceDataSourceV3Impl_Factory create(Provider<ReferenceApiV3> provider, Provider<Context> provider2) {
        return new ReferenceDataSourceV3Impl_Factory(provider, provider2);
    }

    public static ReferenceDataSourceV3Impl newInstance(ReferenceApiV3 referenceApiV3, Context context) {
        return new ReferenceDataSourceV3Impl(referenceApiV3, context);
    }

    @Override // javax.inject.Provider
    public ReferenceDataSourceV3Impl get() {
        return newInstance((ReferenceApiV3) this.referenceApiProvider.get(), (Context) this.contextProvider.get());
    }
}
