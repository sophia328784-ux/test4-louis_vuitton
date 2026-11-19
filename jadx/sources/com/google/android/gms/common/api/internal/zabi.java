package com.google.android.gms.common.api.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zabi implements Runnable {
    final /* synthetic */ zabj zaa;

    public zabi(zabj zabjVar) {
        Objects.requireNonNull(zabjVar);
        this.zaa = zabjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zabk zabkVar = this.zaa.f29073a;
        zabkVar.f29075b.a(zabkVar.f29075b.getClass().getName().concat(" disconnecting because it was signed out."));
    }
}
