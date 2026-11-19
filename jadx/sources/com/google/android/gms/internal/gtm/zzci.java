package com.google.android.gms.internal.gtm;

import android.os.Bundle;
import com.google.android.gms.tagmanager.zzm;

/* JADX INFO: loaded from: classes2.dex */
final class zzci extends zzm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcv f30031a;

    public zzci(zzcv zzcvVar) {
        this.f30031a = zzcvVar;
    }

    @Override // com.google.android.gms.tagmanager.zzn
    public final void a(String str, String str2, Bundle bundle, long j2) {
        this.f30031a.d.execute(new zzch(this, str2, bundle, String.valueOf(str).concat("+gtm"), j2, str));
    }
}
