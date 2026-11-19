package com.google.android.gms.internal.gtm;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
final class zzce extends zzbx {
    public static final Object l = new Object();
    public static zzce m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f30017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public zzbk f30018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile zzav f30019c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public zzca f30022h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public zzbh f30023i;
    public boolean d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f30020e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f30021f = false;
    public boolean g = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final zzby f30025k = new zzby(this);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f30024j = false;

    public final synchronized void a() {
        if (!this.f30020e) {
            zzao.a(2);
            this.d = true;
        } else {
            if (this.f30021f) {
                return;
            }
            this.f30021f = true;
            this.f30019c.zza(new zzbz(this));
        }
    }

    public final synchronized void b(boolean z, boolean z2) {
        boolean zC = c();
        this.f30024j = z;
        this.g = z2;
        if (c() == zC) {
            return;
        }
        boolean zC2 = c();
        zzca zzcaVar = this.f30022h;
        if (zC2) {
            ((zzcc) zzcaVar).f30015a.removeMessages(1, l);
            zzao.a(2);
        } else {
            ((zzcc) zzcaVar).a();
            zzao.a(2);
        }
    }

    public final boolean c() {
        return this.f30024j || !this.g;
    }
}
