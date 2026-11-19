package com.google.android.gms.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.SparseArray;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzhl;
import com.google.android.gms.measurement.internal.zzic;

/* JADX INFO: loaded from: classes2.dex */
public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements zzhl.zza {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public zzhl f31526c;

    @Override // com.google.android.gms.measurement.internal.zzhl.zza
    public final void a(Context context, Intent intent) {
        SparseArray sparseArray = WakefulBroadcastReceiver.f13403a;
        synchronized (sparseArray) {
            try {
                int i2 = WakefulBroadcastReceiver.f13404b;
                int i3 = i2 + 1;
                WakefulBroadcastReceiver.f13404b = i3;
                if (i3 <= 0) {
                    WakefulBroadcastReceiver.f13404b = 1;
                }
                intent.putExtra("androidx.contentpager.content.wakelockid", i2);
                ComponentName componentNameStartService = context.startService(intent);
                if (componentNameStartService == null) {
                    return;
                }
                PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "androidx.core:wake:" + componentNameStartService.flattenToShortString());
                wakeLockNewWakeLock.setReferenceCounted(false);
                wakeLockNewWakeLock.acquire(60000L);
                sparseArray.put(i2, wakeLockNewWakeLock);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f31526c == null) {
            this.f31526c = new zzhl(this);
        }
        zzhl zzhlVar = this.f31526c;
        zzhlVar.getClass();
        zzgu zzguVar = zzic.s(context, null, null, null).f31842f;
        zzic.m(zzguVar);
        zzgs zzgsVar = zzguVar.n;
        zzgs zzgsVar2 = zzguVar.f31771i;
        if (intent == null) {
            zzgsVar2.a("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        zzgsVar.b(action, "Local receiver got");
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
                zzgsVar2.a("Install Referrer Broadcasts are deprecated");
            }
        } else {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            zzgsVar.a("Starting wakeful intent.");
            zzhlVar.f31818a.a(context, className);
        }
    }
}
