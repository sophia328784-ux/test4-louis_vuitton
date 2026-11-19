package com.google.android.gms.internal.gtm;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes2.dex */
final class zzcb implements Handler.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzcc f30014b;

    public zzcb(zzcc zzccVar) {
        this.f30014b = zzccVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what == 1 && zzce.l == message.obj) {
            zzcc zzccVar = this.f30014b;
            zzce zzceVar = zzccVar.f30016b;
            zzceVar.a();
            if (!zzceVar.c()) {
                zzccVar.a();
            }
        }
        return true;
    }
}
