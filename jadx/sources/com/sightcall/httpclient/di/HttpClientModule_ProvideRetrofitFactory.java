package com.sightcall.httpclient.di;

import android.content.Context;
import android.content.pm.PackageManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes3.dex */
public final class HttpClientModule_ProvideRetrofitFactory implements Factory<Retrofit> {
    private final Provider<Context> contextProvider;
    private final HttpClientModule module;

    private HttpClientModule_ProvideRetrofitFactory(HttpClientModule httpClientModule, Provider<Context> provider) {
        this.module = httpClientModule;
        this.contextProvider = provider;
    }

    public static HttpClientModule_ProvideRetrofitFactory create(HttpClientModule httpClientModule, Provider<Context> provider) {
        return new HttpClientModule_ProvideRetrofitFactory(httpClientModule, provider);
    }

    public static Retrofit provideRetrofit(HttpClientModule httpClientModule, Context context) throws PackageManager.NameNotFoundException {
        Retrofit retrofitProvideRetrofit = httpClientModule.provideRetrofit(context);
        Preconditions.c(retrofitProvideRetrofit);
        return retrofitProvideRetrofit;
    }

    @Override // javax.inject.Provider
    public Retrofit get() {
        return provideRetrofit(this.module, (Context) this.contextProvider.get());
    }
}
