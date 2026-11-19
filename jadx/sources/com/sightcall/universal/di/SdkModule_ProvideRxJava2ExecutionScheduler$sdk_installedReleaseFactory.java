package com.sightcall.universal.di;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.rxjava3.core.Scheduler;

/* JADX INFO: loaded from: classes3.dex */
public final class SdkModule_ProvideRxJava2ExecutionScheduler$sdk_installedReleaseFactory implements Factory<Scheduler> {
    private final SdkModule module;

    private SdkModule_ProvideRxJava2ExecutionScheduler$sdk_installedReleaseFactory(SdkModule sdkModule) {
        this.module = sdkModule;
    }

    public static SdkModule_ProvideRxJava2ExecutionScheduler$sdk_installedReleaseFactory create(SdkModule sdkModule) {
        return new SdkModule_ProvideRxJava2ExecutionScheduler$sdk_installedReleaseFactory(sdkModule);
    }

    public static Scheduler provideRxJava2ExecutionScheduler$sdk_installedRelease(SdkModule sdkModule) {
        Scheduler schedulerProvideRxJava2ExecutionScheduler$sdk_installedRelease = sdkModule.provideRxJava2ExecutionScheduler$sdk_installedRelease();
        Preconditions.c(schedulerProvideRxJava2ExecutionScheduler$sdk_installedRelease);
        return schedulerProvideRxJava2ExecutionScheduler$sdk_installedRelease;
    }

    @Override // javax.inject.Provider
    public Scheduler get() {
        return provideRxJava2ExecutionScheduler$sdk_installedRelease(this.module);
    }
}
