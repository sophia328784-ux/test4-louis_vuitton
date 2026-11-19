package com.sightcall.session.di;

import com.sightcall.session.datasource.reference.v3.ReferenceApiV3;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes3.dex */
public final class SessionModule_Companion_ProvideReferenceApiV3$session_releaseFactory implements Factory<ReferenceApiV3> {
    private final Provider<Retrofit> retrofitProvider;

    private SessionModule_Companion_ProvideReferenceApiV3$session_releaseFactory(Provider<Retrofit> provider) {
        this.retrofitProvider = provider;
    }

    public static SessionModule_Companion_ProvideReferenceApiV3$session_releaseFactory create(Provider<Retrofit> provider) {
        return new SessionModule_Companion_ProvideReferenceApiV3$session_releaseFactory(provider);
    }

    public static ReferenceApiV3 provideReferenceApiV3$session_release(Retrofit retrofit) {
        ReferenceApiV3 referenceApiV3ProvideReferenceApiV3$session_release = SessionModule.INSTANCE.provideReferenceApiV3$session_release(retrofit);
        Preconditions.c(referenceApiV3ProvideReferenceApiV3$session_release);
        return referenceApiV3ProvideReferenceApiV3$session_release;
    }

    @Override // javax.inject.Provider
    public ReferenceApiV3 get() {
        return provideReferenceApiV3$session_release((Retrofit) this.retrofitProvider.get());
    }
}
