package com.google.android.gms.internal.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public final class zzql extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile zzqk f30835a;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        zzoo zzooVar;
        String stringExtra = intent.getStringExtra("com.google.android.gms.phenotype.PACKAGE_NAME");
        if (stringExtra == null) {
            return;
        }
        if (stringExtra.contains("../") || stringExtra.contains("/..")) {
            new StringBuilder(stringExtra.length() + 68);
            return;
        }
        zzqk zzqkVar = f30835a;
        if (zzqkVar == null || (zzooVar = (zzoo) ((zzoz) zzqkVar).f30791a.f30796a.get(stringExtra)) == null) {
            return;
        }
        zzooVar.f30786a.b();
    }
}
