package com.sightcall.mediacapture.repo.converter;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class VideoConverterImpl_Factory implements Factory<VideoConverterImpl> {
    private final Provider<Context> contextProvider;

    private VideoConverterImpl_Factory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public static VideoConverterImpl_Factory create(Provider<Context> provider) {
        return new VideoConverterImpl_Factory(provider);
    }

    public static VideoConverterImpl newInstance(Context context) {
        return new VideoConverterImpl(context);
    }

    @Override // javax.inject.Provider
    public VideoConverterImpl get() {
        return newInstance((Context) this.contextProvider.get());
    }
}
