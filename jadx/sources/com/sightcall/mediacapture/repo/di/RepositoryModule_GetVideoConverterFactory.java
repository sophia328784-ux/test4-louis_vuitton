package com.sightcall.mediacapture.repo.di;

import android.content.Context;
import com.sightcall.mediacapture.repo.converter.VideoConverter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class RepositoryModule_GetVideoConverterFactory implements Factory<VideoConverter> {
    private final Provider<Context> contextProvider;
    private final RepositoryModule module;

    private RepositoryModule_GetVideoConverterFactory(RepositoryModule repositoryModule, Provider<Context> provider) {
        this.module = repositoryModule;
        this.contextProvider = provider;
    }

    public static RepositoryModule_GetVideoConverterFactory create(RepositoryModule repositoryModule, Provider<Context> provider) {
        return new RepositoryModule_GetVideoConverterFactory(repositoryModule, provider);
    }

    public static VideoConverter getVideoConverter(RepositoryModule repositoryModule, Context context) {
        VideoConverter videoConverter = repositoryModule.getVideoConverter(context);
        Preconditions.c(videoConverter);
        return videoConverter;
    }

    @Override // javax.inject.Provider
    public VideoConverter get() {
        return getVideoConverter(this.module, (Context) this.contextProvider.get());
    }
}
