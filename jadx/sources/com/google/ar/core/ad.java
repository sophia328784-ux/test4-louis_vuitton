package com.google.ar.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;

/* JADX INFO: loaded from: classes2.dex */
final class ad extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w f33366a;

    public ad(y yVar, w wVar) {
        this.f33366a = wVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        boolean zEquals = "com.google.android.play.core.install.ACTION_INSTALL_STATUS".equals(intent.getAction());
        Bundle extras = intent.getExtras();
        if (zEquals && extras != null && extras.containsKey("install.status")) {
            int i2 = extras.getInt("install.status");
            w wVar = this.f33366a;
            if (i2 == 1 || i2 == 2 || i2 == 3) {
                wVar.a(x.f33446a);
            } else if (i2 == 4) {
                wVar.a(x.f33448c);
            } else {
                if (i2 != 6) {
                    return;
                }
                wVar.a(x.f33447b);
            }
        }
    }
}
