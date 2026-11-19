package com.sightcall.mediacapture.presenter;

import dagger.MembersInjector;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class MediaCaptureFragment_MembersInjector implements MembersInjector<MediaCaptureFragment> {
    private final Provider<MediaCaptureViewModel.Factory> viewModelFactoryProvider;

    private MediaCaptureFragment_MembersInjector(Provider<MediaCaptureViewModel.Factory> provider) {
        this.viewModelFactoryProvider = provider;
    }

    public static MembersInjector<MediaCaptureFragment> create(Provider<MediaCaptureViewModel.Factory> provider) {
        return new MediaCaptureFragment_MembersInjector(provider);
    }

    public static void injectViewModelFactory(MediaCaptureFragment mediaCaptureFragment, MediaCaptureViewModel.Factory factory) {
        mediaCaptureFragment.viewModelFactory = factory;
    }

    public void injectMembers(MediaCaptureFragment mediaCaptureFragment) {
        injectViewModelFactory(mediaCaptureFragment, (MediaCaptureViewModel.Factory) this.viewModelFactoryProvider.get());
    }
}
