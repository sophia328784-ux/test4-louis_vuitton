package com.sightcall.mediacapture.repo.di;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class RepositoryModule_ProvidesExecutorFactory implements Factory<Executor> {
    private final Provider<Context> contextProvider;
    private final RepositoryModule module;

    private RepositoryModule_ProvidesExecutorFactory(RepositoryModule repositoryModule, Provider<Context> provider) {
        this.module = repositoryModule;
        this.contextProvider = provider;
    }

    public static RepositoryModule_ProvidesExecutorFactory create(RepositoryModule repositoryModule, Provider<Context> provider) {
        return new RepositoryModule_ProvidesExecutorFactory(repositoryModule, provider);
    }

    public static Executor providesExecutor(RepositoryModule repositoryModule, Context context) {
        Executor executorProvidesExecutor = repositoryModule.providesExecutor(context);
        Preconditions.c(executorProvidesExecutor);
        return executorProvidesExecutor;
    }

    @Override // javax.inject.Provider
    public Executor get() {
        return providesExecutor(this.module, (Context) this.contextProvider.get());
    }
}
