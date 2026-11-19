package com.sightcall.mediacapture.domain;

import com.sightcall.mediacapture.repo.MediaCaptureRepository;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class MediaCaptureUseCase_Factory implements Factory<MediaCaptureUseCase> {
    private final Provider<MediaCaptureRepository> mediaCaptureRepositoryProvider;

    private MediaCaptureUseCase_Factory(Provider<MediaCaptureRepository> provider) {
        this.mediaCaptureRepositoryProvider = provider;
    }

    public static MediaCaptureUseCase_Factory create(Provider<MediaCaptureRepository> provider) {
        return new MediaCaptureUseCase_Factory(provider);
    }

    public static MediaCaptureUseCase newInstance(MediaCaptureRepository mediaCaptureRepository) {
        return new MediaCaptureUseCase(mediaCaptureRepository);
    }

    @Override // javax.inject.Provider
    public MediaCaptureUseCase get() {
        return newInstance((MediaCaptureRepository) this.mediaCaptureRepositoryProvider.get());
    }
}
