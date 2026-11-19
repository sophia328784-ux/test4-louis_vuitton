package com.google.android.gms.internal.gtm;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

/* JADX INFO: loaded from: classes2.dex */
final class zzcp implements ComponentCallbacks2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzcv f30033b;

    public zzcp(zzcv zzcvVar) {
        this.f30033b = zzcvVar;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i2) {
        if (i2 == 20) {
            this.f30033b.d.execute(new zzco(this));
        }
    }
}
