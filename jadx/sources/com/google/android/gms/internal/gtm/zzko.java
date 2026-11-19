package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzko extends zzkk {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzko f30170e = new zzko("BREAK");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzko f30171f = new zzko("CONTINUE");
    public static final zzko g = new zzko("NULL");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzko f30172h = new zzko("UNDEFINED");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30173b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f30174c;
    public final zzkk d;

    public zzko(zzkk zzkkVar) {
        Preconditions.h(zzkkVar);
        this.f30173b = "RETURN";
        this.f30174c = true;
        this.d = zzkkVar;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final /* synthetic */ Object c() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final String toString() {
        return this.f30173b;
    }

    public zzko(String str) {
        this.f30173b = str;
        this.f30174c = false;
        this.d = null;
    }
}
