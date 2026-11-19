package com.sightcall.universal.di;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SdkModule_ProvideSDKInjector$sdk_installedReleaseFactory implements Factory<SDKInjectorI> {
    private final SdkModule module;
    private final Provider<SdkComponent> sdkComponentProvider;

    private SdkModule_ProvideSDKInjector$sdk_installedReleaseFactory(SdkModule sdkModule, Provider<SdkComponent> provider) {
        this.module = sdkModule;
        this.sdkComponentProvider = provider;
    }

    public static SdkModule_ProvideSDKInjector$sdk_installedReleaseFactory create(SdkModule sdkModule, Provider<SdkComponent> provider) {
        return new SdkModule_ProvideSDKInjector$sdk_installedReleaseFactory(sdkModule, provider);
    }

    public static SDKInjectorI provideSDKInjector$sdk_installedRelease(SdkModule sdkModule, SdkComponent sdkComponent) {
        SDKInjectorI sDKInjectorIProvideSDKInjector$sdk_installedRelease = sdkModule.provideSDKInjector$sdk_installedRelease(sdkComponent);
        Preconditions.c(sDKInjectorIProvideSDKInjector$sdk_installedRelease);
        return sDKInjectorIProvideSDKInjector$sdk_installedRelease;
    }

    @Override // javax.inject.Provider
    public SDKInjectorI get() {
        return provideSDKInjector$sdk_installedRelease(this.module, (SdkComponent) this.sdkComponentProvider.get());
    }
}
