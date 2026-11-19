package com.google.android.gms.common.api.internal;

import android.app.AlertDialog;

/* JADX INFO: loaded from: classes2.dex */
final class zan extends zabr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f29121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zao f29122b;

    public zan(zao zaoVar, AlertDialog alertDialog) {
        this.f29121a = alertDialog;
        this.f29122b = zaoVar;
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void a() {
        zap zapVar = this.f29122b.zaa;
        zapVar.d.set(null);
        com.google.android.gms.internal.base.zao zaoVar = ((zaab) zapVar).f29069h.o;
        zaoVar.sendMessage(zaoVar.obtainMessage(3));
        AlertDialog alertDialog = this.f29121a;
        if (alertDialog.isShowing()) {
            alertDialog.dismiss();
        }
    }
}
