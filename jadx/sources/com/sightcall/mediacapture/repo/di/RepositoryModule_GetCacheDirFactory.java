package com.sightcall.mediacapture.repo.di;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public final class RepositoryModule_GetCacheDirFactory implements Factory<File> {
    private final Provider<Context> contextProvider;
    private final RepositoryModule module;

    private RepositoryModule_GetCacheDirFactory(RepositoryModule repositoryModule, Provider<Context> provider) {
        this.module = repositoryModule;
        this.contextProvider = provider;
    }

    public static RepositoryModule_GetCacheDirFactory create(RepositoryModule repositoryModule, Provider<Context> provider) {
        return new RepositoryModule_GetCacheDirFactory(repositoryModule, provider);
    }

    public static File getCacheDir(RepositoryModule repositoryModule, Context context) {
        File cacheDir = repositoryModule.getCacheDir(context);
        Preconditions.c(cacheDir);
        return cacheDir;
    }

    @Override // javax.inject.Provider
    public File get() {
        return getCacheDir(this.module, (Context) this.contextProvider.get());
    }
}
