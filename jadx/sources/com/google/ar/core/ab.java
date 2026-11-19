package com.google.ar.core;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class ab implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f33360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ h f33361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ y f33362c;

    public ab(y yVar, Context context, h hVar) {
        this.f33360a = context;
        this.f33361b = hVar;
        Objects.requireNonNull(yVar);
        this.f33362c = yVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            com.google.ar.core.dependencies.h hVar = this.f33362c.f33451c;
            String str = this.f33360a.getApplicationInfo().packageName;
            Bundle bundle = new Bundle();
            bundle.putCharSequence("package.name", "com.google.ar.core");
            hVar.e(str, bundle, new aa(this, this.f33361b));
        } catch (RemoteException unused) {
            this.f33361b.a(ArCoreApk.Availability.UNKNOWN_ERROR);
        }
    }
}
