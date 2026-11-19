package com.sightcall.mediacapture.repo;

import android.content.ContentResolver;
import android.content.Context;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.Preview;
import androidx.camera.lifecycle.ProcessCameraProvider;
import com.google.common.util.concurrent.ListenableFuture;
import com.sightcall.getmedia.MediaRepository;
import com.sightcall.mediacapture.repo.converter.VideoConverter;
import dagger.internal.Factory;
import dagger.internal.Provider;
import java.io.File;
import java.util.concurrent.Executor;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class MediaCaptureRepositoryImpl_Factory implements Factory<MediaCaptureRepositoryImpl> {
    private final Provider<File> cacheDirProvider;
    private final Provider<CameraSelector> cameraSelectorProvider;
    private final Provider<ContentResolver> contentResolverProvider;
    private final Provider<Context> contextProvider;
    private final Provider<CoroutineDispatcher> dispatcherProvider;
    private final Provider<Executor> executorProvider;
    private final Provider<ListenableFuture<ProcessCameraProvider>> listenableFutureProcessCameraProvider;
    private final Provider<MediaRepository> mediaRepositoryProvider;
    private final Provider<Preview> previewProvider;
    private final Provider<File> storageDirProvider;
    private final Provider<VideoConverter> videoConverterProvider;

    private MediaCaptureRepositoryImpl_Factory(Provider<Context> provider, Provider<MediaRepository> provider2, Provider<CoroutineDispatcher> provider3, Provider<ListenableFuture<ProcessCameraProvider>> provider4, Provider<CameraSelector> provider5, Provider<Preview> provider6, Provider<ContentResolver> provider7, Provider<Executor> provider8, Provider<File> provider9, Provider<File> provider10, Provider<VideoConverter> provider11) {
        this.contextProvider = provider;
        this.mediaRepositoryProvider = provider2;
        this.dispatcherProvider = provider3;
        this.listenableFutureProcessCameraProvider = provider4;
        this.cameraSelectorProvider = provider5;
        this.previewProvider = provider6;
        this.contentResolverProvider = provider7;
        this.executorProvider = provider8;
        this.cacheDirProvider = provider9;
        this.storageDirProvider = provider10;
        this.videoConverterProvider = provider11;
    }

    public static MediaCaptureRepositoryImpl_Factory create(Provider<Context> provider, Provider<MediaRepository> provider2, Provider<CoroutineDispatcher> provider3, Provider<ListenableFuture<ProcessCameraProvider>> provider4, Provider<CameraSelector> provider5, Provider<Preview> provider6, Provider<ContentResolver> provider7, Provider<Executor> provider8, Provider<File> provider9, Provider<File> provider10, Provider<VideoConverter> provider11) {
        return new MediaCaptureRepositoryImpl_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11);
    }

    public static MediaCaptureRepositoryImpl newInstance(Context context, MediaRepository mediaRepository, CoroutineDispatcher coroutineDispatcher, ListenableFuture<ProcessCameraProvider> listenableFuture, CameraSelector cameraSelector, Preview preview, ContentResolver contentResolver, Executor executor, File file, File file2, VideoConverter videoConverter) {
        return new MediaCaptureRepositoryImpl(context, mediaRepository, coroutineDispatcher, listenableFuture, cameraSelector, preview, contentResolver, executor, file, file2, videoConverter);
    }

    @Override // javax.inject.Provider
    public MediaCaptureRepositoryImpl get() {
        return newInstance((Context) this.contextProvider.get(), (MediaRepository) this.mediaRepositoryProvider.get(), (CoroutineDispatcher) this.dispatcherProvider.get(), (ListenableFuture) this.listenableFutureProcessCameraProvider.get(), (CameraSelector) this.cameraSelectorProvider.get(), (Preview) this.previewProvider.get(), (ContentResolver) this.contentResolverProvider.get(), (Executor) this.executorProvider.get(), (File) this.cacheDirProvider.get(), (File) this.storageDirProvider.get(), (VideoConverter) this.videoConverterProvider.get());
    }
}
