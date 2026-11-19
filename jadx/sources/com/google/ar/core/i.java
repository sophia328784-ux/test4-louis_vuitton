package com.google.ar.core;

/* JADX INFO: loaded from: classes2.dex */
final class i implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f33413a;

    public i(l lVar) {
        this.f33413a = lVar;
    }

    @Override // com.google.ar.core.h
    public final void a(ArCoreApk.Availability availability) {
        l lVar = this.f33413a;
        synchronized (lVar) {
            lVar.g = availability;
            lVar.f33423h = false;
        }
    }
}
