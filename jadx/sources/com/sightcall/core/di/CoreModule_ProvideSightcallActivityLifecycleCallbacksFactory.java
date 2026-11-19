package com.sightcall.core.di;

import com.sightcall.core.util.SightcallActivityLifecycleCallbacks;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class CoreModule_ProvideSightcallActivityLifecycleCallbacksFactory implements Factory<SightcallActivityLifecycleCallbacks> {
    private final CoreModule module;

    private CoreModule_ProvideSightcallActivityLifecycleCallbacksFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static CoreModule_ProvideSightcallActivityLifecycleCallbacksFactory create(CoreModule coreModule) {
        return new CoreModule_ProvideSightcallActivityLifecycleCallbacksFactory(coreModule);
    }

    public static SightcallActivityLifecycleCallbacks provideSightcallActivityLifecycleCallbacks(CoreModule coreModule) {
        SightcallActivityLifecycleCallbacks sightcallActivityLifecycleCallbacksProvideSightcallActivityLifecycleCallbacks = coreModule.provideSightcallActivityLifecycleCallbacks();
        Preconditions.c(sightcallActivityLifecycleCallbacksProvideSightcallActivityLifecycleCallbacks);
        return sightcallActivityLifecycleCallbacksProvideSightcallActivityLifecycleCallbacks;
    }

    @Override // javax.inject.Provider
    public SightcallActivityLifecycleCallbacks get() {
        return provideSightcallActivityLifecycleCallbacks(this.module);
    }
}
