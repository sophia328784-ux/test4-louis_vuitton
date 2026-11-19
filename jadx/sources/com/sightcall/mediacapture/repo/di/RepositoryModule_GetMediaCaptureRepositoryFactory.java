package com.sightcall.mediacapture.repo.di;

import android.content.ContentResolver;
import android.content.Context;
import com.sightcall.getmedia.MediaRepository;
import com.sightcall.mediacapture.repo.MediaCaptureRepository;
import com.sightcall.mediacapture.repo.converter.VideoConverter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import java.io.File;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class RepositoryModule_GetMediaCaptureRepositoryFactory implements Factory<MediaCaptureRepository> {
    private final Provider<File> cacheDirProvider;
    private final Provider<ContentResolver> contentResolverProvider;
    private final Provider<Context> contextProvider;
    private final Provider<Executor> executorProvider;
    private final Provider<MediaRepository> mediaRepositoryProvider;
    private final RepositoryModule module;
    private final Provider<File> storageDirProvider;
    private final Provider<VideoConverter> videoConverterProvider;

    private RepositoryModule_GetMediaCaptureRepositoryFactory(RepositoryModule repositoryModule, Provider<MediaRepository> provider, Provider<ContentResolver> provider2, Provider<Context> provider3, Provider<Executor> provider4, Provider<File> provider5, Provider<File> provider6, Provider<VideoConverter> provider7) {
        this.module = repositoryModule;
        this.mediaRepositoryProvider = provider;
        this.contentResolverProvider = provider2;
        this.contextProvider = provider3;
        this.executorProvider = provider4;
        this.cacheDirProvider = provider5;
        this.storageDirProvider = provider6;
        this.videoConverterProvider = provider7;
    }

    public static RepositoryModule_GetMediaCaptureRepositoryFactory create(RepositoryModule repositoryModule, Provider<MediaRepository> provider, Provider<ContentResolver> provider2, Provider<Context> provider3, Provider<Executor> provider4, Provider<File> provider5, Provider<File> provider6, Provider<VideoConverter> provider7) {
        return new RepositoryModule_GetMediaCaptureRepositoryFactory(repositoryModule, provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static MediaCaptureRepository getMediaCaptureRepository(RepositoryModule repositoryModule, MediaRepository mediaRepository, ContentResolver contentResolver, Context context, Executor executor, File file, File file2, VideoConverter videoConverter) {
        MediaCaptureRepository mediaCaptureRepository = repositoryModule.getMediaCaptureRepository(mediaRepository, contentResolver, context, executor, file, file2, videoConverter);
        Preconditions.c(mediaCaptureRepository);
        return mediaCaptureRepository;
    }

    @Override // javax.inject.Provider
    public MediaCaptureRepository get() {
        return getMediaCaptureRepository(this.module, (MediaRepository) this.mediaRepositoryProvider.get(), (ContentResolver) this.contentResolverProvider.get(), (Context) this.contextProvider.get(), (Executor) this.executorProvider.get(), (File) this.cacheDirProvider.get(), (File) this.storageDirProvider.get(), (VideoConverter) this.videoConverterProvider.get());
    }
}
