package com.google.ar.core;

import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
final class k implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Consumer f33416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f33417b;

    public k(l lVar, Consumer consumer) {
        this.f33416a = consumer;
        this.f33417b = lVar;
    }

    @Override // com.google.ar.core.h
    public final void a(final ArCoreApk.Availability availability) {
        final Consumer consumer = this.f33416a;
        this.f33417b.f33418a.post(new Runnable() { // from class: com.google.ar.core.j
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                consumer.accept(availability);
            }
        });
    }
}
