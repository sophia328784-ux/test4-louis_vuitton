package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzju extends zzaz {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzlj f31872e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzju(zzlj zzljVar, zzjg zzjgVar) {
        super(zzjgVar);
        Objects.requireNonNull(zzljVar);
        this.f31872e = zzljVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzaz
    public final void a() {
        final zzlj zzljVar = this.f31872e.f31850a.m;
        zzic.l(zzljVar);
        new Thread(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzjt
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzljVar.M();
            }
        }).start();
    }
}
