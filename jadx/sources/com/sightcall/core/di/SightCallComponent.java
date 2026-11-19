package com.sightcall.core.di;

import android.app.Application;
import android.content.Context;
import com.sightcall.core.util.SightcallActivityLifecycleCallbacks;
import dagger.BindsInstance;
import dagger.Component;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@AppScope
@Component
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001:\u0001\u0006J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007À\u0006\u0003"}, d2 = {"Lcom/sightcall/core/di/SightCallComponent;", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "sightcallActivityLifecycleCallbacks", "Lcom/sightcall/core/util/SightcallActivityLifecycleCallbacks;", "Factory", "core_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SightCallComponent {

    @Component.Factory
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/sightcall/core/di/SightCallComponent$Factory;", "", "create", "Lcom/sightcall/core/di/SightCallComponent;", "application", "Landroid/app/Application;", "core_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Factory {
        SightCallComponent create(@BindsInstance Application application);
    }

    Context context();

    SightcallActivityLifecycleCallbacks sightcallActivityLifecycleCallbacks();
}
