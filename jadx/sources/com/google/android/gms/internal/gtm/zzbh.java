package com.google.android.gms.internal.gtm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
final class zzbh extends BroadcastReceiver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f29973b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzbx f29974a;

    public zzbh(zzbx zzbxVar) {
        this.f29974a = zzbxVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        zzbx zzbxVar = this.f29974a;
        String action = intent.getAction();
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            Bundle extras = intent.getExtras();
            Boolean boolValueOf = Boolean.FALSE;
            if (extras != null) {
                boolValueOf = Boolean.valueOf(intent.getExtras().getBoolean("noConnectivity"));
            }
            boolean z = !boolValueOf.booleanValue();
            zzce zzceVar = (zzce) zzbxVar;
            synchronized (zzceVar) {
                zzceVar.b(zzceVar.f30024j, z);
            }
            return;
        }
        if (!"com.google.analytics.RADIO_POWERED".equals(action) || intent.hasExtra("com.google.android.gms.internal.gtm.zzbh")) {
            return;
        }
        zzce zzceVar2 = (zzce) zzbxVar;
        synchronized (zzceVar2) {
            if (zzceVar2.c()) {
                return;
            }
            zzcc zzccVar = (zzcc) zzceVar2.f30022h;
            zzw zzwVar = zzccVar.f30015a;
            Object obj = zzce.l;
            zzwVar.removeMessages(1, obj);
            zzwVar.sendMessage(zzccVar.f30015a.obtainMessage(1, obj));
        }
    }
}
