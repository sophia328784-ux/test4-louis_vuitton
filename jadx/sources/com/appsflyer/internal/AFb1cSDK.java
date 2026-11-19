package com.appsflyer.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class AFb1cSDK implements AFb1bSDK {
    private AFb1gSDK AFKeystoreWrapper;
    private final ScheduledExecutorService AFLogger;
    private final AFa1qSDK registerClient;

    public AFb1cSDK(ScheduledExecutorService scheduledExecutorService, AFa1qSDK aFa1qSDK) {
        scheduledExecutorService.getClass();
        aFa1qSDK.getClass();
        this.AFLogger = scheduledExecutorService;
        this.registerClient = aFa1qSDK;
    }

    @Override // com.appsflyer.internal.AFb1bSDK
    public final void AFKeystoreWrapper() {
        AFb1bSDK.AFa1zSDK aFa1zSDK;
        AFb1gSDK aFb1gSDK = this.AFKeystoreWrapper;
        if (aFb1gSDK == null || (aFa1zSDK = aFb1gSDK.AFLogger) == null) {
            return;
        }
        aFa1zSDK.registerClient();
    }

    @Override // com.appsflyer.internal.AFb1bSDK
    public final void unregisterClient(Context context, AFb1bSDK.AFa1zSDK aFa1zSDK) {
        context.getClass();
        aFa1zSDK.getClass();
        context.getClass();
        if (this.AFKeystoreWrapper != null) {
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            ((Application) applicationContext).unregisterActivityLifecycleCallbacks(this.AFKeystoreWrapper);
        }
        this.AFKeystoreWrapper = null;
        AFb1gSDK aFb1gSDK = new AFb1gSDK(this.AFLogger, aFa1zSDK, this.registerClient);
        this.AFKeystoreWrapper = aFb1gSDK;
        if (context instanceof Activity) {
            aFb1gSDK.onActivityResumed((Activity) context);
        }
        Application applicationX_ = AFj1qSDK.X_(context);
        if (applicationX_ != null) {
            applicationX_.registerActivityLifecycleCallbacks(this.AFKeystoreWrapper);
        }
    }
}
