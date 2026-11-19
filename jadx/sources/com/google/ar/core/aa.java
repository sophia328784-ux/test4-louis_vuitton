package com.google.ar.core;

import android.os.Bundle;
import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
final class aa extends com.google.ar.core.dependencies.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f33359a;

    public aa(ab abVar, h hVar) {
        this.f33359a = hVar;
    }

    @Override // com.google.ar.core.dependencies.j
    public final void b(Bundle bundle) {
    }

    @Override // com.google.ar.core.dependencies.j
    public final void c(Bundle bundle) {
        int i2 = bundle.getInt("error.code", -100);
        h hVar = this.f33359a;
        if (i2 == -5) {
            hVar.a(ArCoreApk.Availability.UNSUPPORTED_DEVICE_NOT_CAPABLE);
            return;
        }
        if (i2 == -3) {
            hVar.a(ArCoreApk.Availability.UNKNOWN_ERROR);
        } else if (i2 == 0) {
            hVar.a(ArCoreApk.Availability.SUPPORTED_NOT_INSTALLED);
        } else {
            z81.f(String.valueOf(i2).length() + (byte) 22, i2, "requestInfo returned: ");
            hVar.a(ArCoreApk.Availability.UNKNOWN_ERROR);
        }
    }
}
