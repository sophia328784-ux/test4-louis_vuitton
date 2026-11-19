package com.google.android.gms.measurement.internal;

import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzow implements zzgw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f31960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f31961b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzpg f31962c;

    public zzow(zzpg zzpgVar, String str, ArrayList arrayList) {
        this.f31960a = str;
        this.f31961b = arrayList;
        this.f31962c = zzpgVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgw
    public final void a(String str, int i2, Throwable th, byte[] bArr, Map map) {
        this.f31962c.z(true, i2, th, bArr, this.f31960a, this.f31961b, map);
    }
}
