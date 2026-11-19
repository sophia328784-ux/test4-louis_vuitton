package com.google.ar.core;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class s implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f33437a;

    public s(InstallActivity installActivity, AtomicReference atomicReference) {
        this.f33437a = atomicReference;
    }

    @Override // com.google.ar.core.h
    public final void a(ArCoreApk.Availability availability) {
        this.f33437a.set(availability);
    }
}
