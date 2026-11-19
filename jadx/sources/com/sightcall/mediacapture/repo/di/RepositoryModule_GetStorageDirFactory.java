package com.sightcall.mediacapture.repo.di;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public final class RepositoryModule_GetStorageDirFactory implements Factory<File> {
    private final Provider<Context> contextProvider;
    private final RepositoryModule module;

    private RepositoryModule_GetStorageDirFactory(RepositoryModule repositoryModule, Provider<Context> provider) {
        this.module = repositoryModule;
        this.contextProvider = provider;
    }

    public static RepositoryModule_GetStorageDirFactory create(RepositoryModule repositoryModule, Provider<Context> provider) {
        return new RepositoryModule_GetStorageDirFactory(repositoryModule, provider);
    }

    public static File getStorageDir(RepositoryModule repositoryModule, Context context) {
        File storageDir = repositoryModule.getStorageDir(context);
        Preconditions.c(storageDir);
        return storageDir;
    }

    @Override // javax.inject.Provider
    public File get() {
        return getStorageDir(this.module, (Context) this.contextProvider.get());
    }
}
