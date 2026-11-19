package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzoj extends zzaz {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzok f31945e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzoj(zzok zzokVar, zzjg zzjgVar) {
        super(zzjgVar);
        this.f31945e = zzokVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzaz
    public final void a() {
        zzok zzokVar = this.f31945e;
        zzokVar.l();
        zzgu zzguVar = zzokVar.f31850a.f31842f;
        zzic.m(zzguVar);
        zzguVar.n.a("Starting upload from DelayedRunnable");
        zzokVar.f31948b.q();
    }
}
