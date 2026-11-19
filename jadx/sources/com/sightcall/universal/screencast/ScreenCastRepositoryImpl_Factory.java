package com.sightcall.universal.screencast;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ScreenCastRepositoryImpl_Factory implements Factory<ScreenCastRepositoryImpl> {
    private final Provider<Context> contextProvider;

    private ScreenCastRepositoryImpl_Factory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public static ScreenCastRepositoryImpl_Factory create(Provider<Context> provider) {
        return new ScreenCastRepositoryImpl_Factory(provider);
    }

    public static ScreenCastRepositoryImpl newInstance(Context context) {
        return new ScreenCastRepositoryImpl(context);
    }

    @Override // javax.inject.Provider
    public ScreenCastRepositoryImpl get() {
        return newInstance((Context) this.contextProvider.get());
    }
}
