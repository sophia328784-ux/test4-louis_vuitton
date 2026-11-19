package com.sightcall.core.di;

import android.app.Application;
import android.content.Context;
import com.sightcall.core.util.SightcallActivityLifecycleCallbacks;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\b\u0010\b\u001a\u00020\tH\u0007¨\u0006\n"}, d2 = {"Lcom/sightcall/core/di/CoreModule;", "", "<init>", "()V", "provideContext", "Landroid/content/Context;", "application", "Landroid/app/Application;", "provideSightcallActivityLifecycleCallbacks", "Lcom/sightcall/core/util/SightcallActivityLifecycleCallbacks;", "core_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Module
public final class CoreModule {
    public static final int $stable = 0;

    @Provides
    public final Context provideContext(Application application) {
        application.getClass();
        return application;
    }

    @AppScope
    @Provides
    public final SightcallActivityLifecycleCallbacks provideSightcallActivityLifecycleCallbacks() {
        return new SightcallActivityLifecycleCallbacks();
    }
}
