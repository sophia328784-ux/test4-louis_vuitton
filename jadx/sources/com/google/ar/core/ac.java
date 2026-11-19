package com.google.ar.core;

import android.content.pm.PackageInstaller;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
final class ac extends PackageInstaller.SessionCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f33363a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w f33364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ y f33365c;

    public ac(y yVar, w wVar) {
        this.f33364b = wVar;
        this.f33365c = yVar;
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public final void onActiveChanged(int i2, boolean z) {
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public final void onBadgingChanged(int i2) {
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public final void onCreated(int i2) {
        this.f33363a.put(Integer.valueOf(i2), this.f33365c.g.getSessionInfo(i2));
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public final void onFinished(int i2, boolean z) {
        PackageInstaller.SessionInfo sessionInfo = (PackageInstaller.SessionInfo) this.f33363a.remove(Integer.valueOf(i2));
        if (sessionInfo == null || !"com.google.ar.core".equals(sessionInfo.getAppPackageName())) {
            return;
        }
        this.f33364b.a(x.f33448c);
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public final void onProgressChanged(int i2, float f2) {
    }
}
