package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
final class zzhb extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzpg f31787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f31788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f31789c;

    public zzhb(zzpg zzpgVar) {
        Preconditions.h(zzpgVar);
        this.f31787a = zzpgVar;
    }

    public final void a() {
        zzpg zzpgVar = this.f31787a;
        zzpgVar.m0();
        zzpgVar.c().g();
        zzpgVar.c().g();
        if (this.f31788b) {
            zzpgVar.b().n.a("Unregistering connectivity change receiver");
            this.f31788b = false;
            this.f31789c = false;
            try {
                zzpgVar.l.f31838a.unregisterReceiver(this);
            } catch (IllegalArgumentException e2) {
                zzpgVar.b().f31769f.b(e2, "Failed to unregister the network broadcast receiver");
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        zzpg zzpgVar = this.f31787a;
        zzpgVar.m0();
        String action = intent.getAction();
        zzpgVar.b().n.b(action, "NetworkBroadcastReceiver received action");
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            zzpgVar.b().f31771i.b(action, "NetworkBroadcastReceiver received unknown action");
            return;
        }
        zzgz zzgzVar = zzpgVar.f31981b;
        zzpg.U(zzgzVar);
        boolean zK = zzgzVar.k();
        if (this.f31789c != zK) {
            this.f31789c = zK;
            zzpgVar.c().p(new zzha(this, zK));
        }
    }
}
