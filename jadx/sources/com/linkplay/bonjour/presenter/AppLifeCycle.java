package com.linkplay.bonjour.presenter;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.linkplay.bonjour.utils.BonjourLog;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class AppLifeCycle {
    private static final String TAG = "LPServiceManager";

    public interface AppLifeCycleCallback {
        void runningBackGround();

        void runningForeGround();
    }

    public static void monitorLifeCycle(Context context, final AppLifeCycleCallback appLifeCycleCallback) {
        if (context == null || !(context instanceof Application)) {
            md.n("Context must be your ApplicationContext");
        } else {
            ((Application) context).registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.linkplay.bonjour.presenter.AppLifeCycle.1
                int count = 0;

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                    if (this.count == 0) {
                        BonjourLog.i(AppLifeCycle.TAG, ">>>>>>>>>>>>>>>>>>>切到前台");
                        AppLifeCycleCallback appLifeCycleCallback2 = appLifeCycleCallback;
                        if (appLifeCycleCallback2 != null) {
                            appLifeCycleCallback2.runningForeGround();
                        }
                    }
                    this.count++;
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                    int i2 = this.count - 1;
                    this.count = i2;
                    if (i2 == 0) {
                        BonjourLog.i(AppLifeCycle.TAG, ">>>>>>>>>>>>>>>>>>>切到后台");
                        AppLifeCycleCallback appLifeCycleCallback2 = appLifeCycleCallback;
                        if (appLifeCycleCallback2 != null) {
                            appLifeCycleCallback2.runningBackGround();
                        }
                    }
                }
            });
        }
    }
}
