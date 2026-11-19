package com.sightcall.getmedia.di;

import android.content.ContentResolver;
import com.sightcall.getmedia.MediaRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class MediaModule_ProvideMediaRepositoryFactory implements Factory<MediaRepository> {
    private final Provider<ContentResolver> contentResolverProvider;
    private final MediaModule module;

    private MediaModule_ProvideMediaRepositoryFactory(MediaModule mediaModule, Provider<ContentResolver> provider) {
        this.module = mediaModule;
        this.contentResolverProvider = provider;
    }

    public static MediaModule_ProvideMediaRepositoryFactory create(MediaModule mediaModule, Provider<ContentResolver> provider) {
        return new MediaModule_ProvideMediaRepositoryFactory(mediaModule, provider);
    }

    public static MediaRepository provideMediaRepository(MediaModule mediaModule, ContentResolver contentResolver) {
        MediaRepository mediaRepositoryProvideMediaRepository = mediaModule.provideMediaRepository(contentResolver);
        Preconditions.c(mediaRepositoryProvideMediaRepository);
        return mediaRepositoryProvideMediaRepository;
    }

    @Override // javax.inject.Provider
    public MediaRepository get() {
        return provideMediaRepository(this.module, (ContentResolver) this.contentResolverProvider.get());
    }
}
