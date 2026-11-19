package com.sightcall.mediacapture.repo.di;

import android.content.ContentResolver;
import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class RepositoryModule_GetContentResolverFactory implements Factory<ContentResolver> {
    private final Provider<Context> contextProvider;
    private final RepositoryModule module;

    private RepositoryModule_GetContentResolverFactory(RepositoryModule repositoryModule, Provider<Context> provider) {
        this.module = repositoryModule;
        this.contextProvider = provider;
    }

    public static RepositoryModule_GetContentResolverFactory create(RepositoryModule repositoryModule, Provider<Context> provider) {
        return new RepositoryModule_GetContentResolverFactory(repositoryModule, provider);
    }

    public static ContentResolver getContentResolver(RepositoryModule repositoryModule, Context context) {
        ContentResolver contentResolver = repositoryModule.getContentResolver(context);
        Preconditions.c(contentResolver);
        return contentResolver;
    }

    @Override // javax.inject.Provider
    public ContentResolver get() {
        return getContentResolver(this.module, (Context) this.contextProvider.get());
    }
}
