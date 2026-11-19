package com.sightcall.getmedia.di;

import android.content.ContentResolver;
import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class MediaModule_GetContentResolverFactory implements Factory<ContentResolver> {
    private final Provider<Context> contextProvider;
    private final MediaModule module;

    private MediaModule_GetContentResolverFactory(MediaModule mediaModule, Provider<Context> provider) {
        this.module = mediaModule;
        this.contextProvider = provider;
    }

    public static MediaModule_GetContentResolverFactory create(MediaModule mediaModule, Provider<Context> provider) {
        return new MediaModule_GetContentResolverFactory(mediaModule, provider);
    }

    public static ContentResolver getContentResolver(MediaModule mediaModule, Context context) {
        ContentResolver contentResolver = mediaModule.getContentResolver(context);
        Preconditions.c(contentResolver);
        return contentResolver;
    }

    @Override // javax.inject.Provider
    public ContentResolver get() {
        return getContentResolver(this.module, (Context) this.contextProvider.get());
    }
}
