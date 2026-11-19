package com.google.android.gms.internal.gtm;

import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
final class zzck extends com.google.android.gms.tagmanager.zzj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcv f30032a;

    public zzck(zzcv zzcvVar) {
        this.f30032a = zzcvVar;
    }

    @Override // com.google.android.gms.tagmanager.zzk
    public final void a(String str, String str2, Bundle bundle, long j2) {
        if (str.endsWith("+gtm")) {
            return;
        }
        this.f30032a.d.execute(new zzcj(this, str2, bundle, str.concat("+gtm"), j2, str));
    }
}
