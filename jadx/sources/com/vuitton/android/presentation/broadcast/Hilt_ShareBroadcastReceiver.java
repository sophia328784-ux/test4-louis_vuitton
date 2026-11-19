package com.vuitton.android.presentation.broadcast;

import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import dagger.hilt.android.internal.Contexts;
import dagger.hilt.internal.GeneratedComponentManager;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Hilt_ShareBroadcastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile boolean f50665a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f50666b = new Object();

    public void a(Context context) {
        if (this.f50665a) {
            return;
        }
        synchronized (this.f50666b) {
            try {
                if (!this.f50665a) {
                    ComponentCallbacks2 componentCallbacks2A = Contexts.a(context.getApplicationContext());
                    boolean z = componentCallbacks2A instanceof GeneratedComponentManager;
                    Class<?> cls = componentCallbacks2A.getClass();
                    if (!z) {
                        throw new IllegalArgumentException("Hilt BroadcastReceiver must be attached to an @HiltAndroidApp Application. Found: " + cls);
                    }
                    ((ShareBroadcastReceiver_GeneratedInjector) ((GeneratedComponentManager) componentCallbacks2A).C()).i((ShareBroadcastReceiver) this);
                    this.f50665a = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        a(context);
    }
}
