package com.dynatrace.android.agent;

import com.dynatrace.android.lifecycle.appstate.ApplicationStateListener;

/* JADX INFO: loaded from: classes2.dex */
public class AppFgBgStateListener implements ApplicationStateListener {
    @Override // com.dynatrace.android.lifecycle.appstate.ApplicationStateListener
    public final void onBackground() {
        Object obj = Dynatrace.f27305a;
        if (Global.f27308b.get()) {
            Core.d();
        }
    }

    @Override // com.dynatrace.android.lifecycle.appstate.ApplicationStateListener
    public final void onForeground() {
        Object obj = Dynatrace.f27305a;
        if (Global.f27308b.get()) {
            Core.f27288k.h(false);
        }
    }
}
