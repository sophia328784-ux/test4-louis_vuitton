package com.sightcall.core.di;

import android.app.Application;
import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class CoreModule_ProvideContextFactory implements Factory<Context> {
    private final Provider<Application> applicationProvider;
    private final CoreModule module;

    private CoreModule_ProvideContextFactory(CoreModule coreModule, Provider<Application> provider) {
        this.module = coreModule;
        this.applicationProvider = provider;
    }

    public static CoreModule_ProvideContextFactory create(CoreModule coreModule, Provider<Application> provider) {
        return new CoreModule_ProvideContextFactory(coreModule, provider);
    }

    public static Context provideContext(CoreModule coreModule, Application application) {
        Context contextProvideContext = coreModule.provideContext(application);
        Preconditions.c(contextProvideContext);
        return contextProvideContext;
    }

    @Override // javax.inject.Provider
    public Context get() {
        return provideContext(this.module, (Application) this.applicationProvider.get());
    }
}
