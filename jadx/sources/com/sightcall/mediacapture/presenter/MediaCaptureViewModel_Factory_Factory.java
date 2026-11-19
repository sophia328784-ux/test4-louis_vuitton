package com.sightcall.mediacapture.presenter;

import com.sightcall.mediacapture.domain.MediaCaptureUseCase;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class MediaCaptureViewModel_Factory_Factory implements Factory<MediaCaptureViewModel.Factory> {
    private final Provider<MediaCaptureUseCase> useCaseProvider;

    private MediaCaptureViewModel_Factory_Factory(Provider<MediaCaptureUseCase> provider) {
        this.useCaseProvider = provider;
    }

    public static MediaCaptureViewModel_Factory_Factory create(Provider<MediaCaptureUseCase> provider) {
        return new MediaCaptureViewModel_Factory_Factory(provider);
    }

    public static MediaCaptureViewModel.Factory newInstance(MediaCaptureUseCase mediaCaptureUseCase) {
        return new MediaCaptureViewModel.Factory(mediaCaptureUseCase);
    }

    @Override // javax.inject.Provider
    public MediaCaptureViewModel.Factory get() {
        return newInstance((MediaCaptureUseCase) this.useCaseProvider.get());
    }
}
