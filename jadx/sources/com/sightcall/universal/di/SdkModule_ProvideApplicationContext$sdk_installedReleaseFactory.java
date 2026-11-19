package com.sightcall.universal.di;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class SdkModule_ProvideApplicationContext$sdk_installedReleaseFactory implements Factory<Context> {
    private final SdkModule module;

    private SdkModule_ProvideApplicationContext$sdk_installedReleaseFactory(SdkModule sdkModule) {
        this.module = sdkModule;
    }

    public static SdkModule_ProvideApplicationContext$sdk_installedReleaseFactory create(SdkModule sdkModule) {
        return new SdkModule_ProvideApplicationContext$sdk_installedReleaseFactory(sdkModule);
    }

    public static Context provideApplicationContext$sdk_installedRelease(SdkModule sdkModule) {
        Context context = sdkModule.getContext();
        Preconditions.c(context);
        return context;
    }

    @Override // javax.inject.Provider
    public Context get() {
        return provideApplicationContext$sdk_installedRelease(this.module);
    }
}
