package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.measurement.zzaif;

/* JADX INFO: loaded from: classes2.dex */
public final class zzw extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzic f32024a;

    public zzw(zzic zzicVar) {
        this.f32024a = zzicVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        final zzic zzicVar = this.f32024a;
        if (intent == null) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.a("App receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        if (action == null) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31771i.a("App receiver called with null action");
            return;
        }
        int iHashCode = action.hashCode();
        if (iHashCode != -1928239649) {
            if (iHashCode == 1279883384 && action.equals("com.google.android.gms.measurement.BATCHES_AVAILABLE")) {
                zzgu zzguVar3 = zzicVar.f31842f;
                zzic.m(zzguVar3);
                zzguVar3.n.a("[sgtm] App Receiver notified batches are available");
                zzhz zzhzVar = zzicVar.g;
                zzic.m(zzhzVar);
                zzhzVar.p(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzt
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzic zzicVar2 = this.zza.f32024a;
                        zzic.j(zzicVar2.u);
                        zzicVar2.u.k(((Long) zzfy.D.a(null)).longValue());
                    }
                });
                return;
            }
        } else if (action.equals("com.google.android.gms.measurement.TRIGGERS_AVAILABLE")) {
            zzaif.a();
            if (zzicVar.d.r(null, zzfy.P0)) {
                zzgu zzguVar4 = zzicVar.f31842f;
                zzic.m(zzguVar4);
                zzguVar4.n.a("App receiver notified triggers are available");
                zzhz zzhzVar2 = zzicVar.g;
                zzic.m(zzhzVar2);
                zzhzVar2.p(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzu
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzic zzicVar2 = zzicVar;
                        zzpp zzppVar = zzicVar2.f31844i;
                        final zzlj zzljVar = zzicVar2.m;
                        zzic.k(zzppVar);
                        zzppVar.g();
                        if (zzppVar.D() != 1) {
                            zzgu zzguVar5 = zzicVar2.f31842f;
                            zzic.m(zzguVar5);
                            zzguVar5.f31771i.a("registerTrigger called but app not eligible");
                            return;
                        }
                        zzic.l(zzljVar);
                        zzljVar.g();
                        zzju zzjuVar = zzljVar.l;
                        if (zzjuVar != null) {
                            zzjuVar.c();
                        }
                        zzic.l(zzljVar);
                        new Thread(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzv
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzljVar.M();
                            }
                        }).start();
                    }
                });
                return;
            }
            return;
        }
        zzgu zzguVar5 = zzicVar.f31842f;
        zzic.m(zzguVar5);
        zzguVar5.f31771i.a("App receiver called with unknown action");
    }
}
