package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgv extends zzdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f30067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzbv f30068b;

    public zzgv(int i2, zzbv zzbvVar) {
        this.f30067a = i2;
        this.f30068b = zzbvVar;
    }

    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length == 1);
        Preconditions.a(zzkkVarArr[0] instanceof zzkv);
        try {
            zzdh zzdhVarA = zziv.a(new JSONArray(((zzkv) zzkkVarArr[0]).f30188b).getJSONArray(0));
            zzdhVarA.f30058a = this.f30068b;
            return this.f30067a == 0 ? zzko.f30172h : zzdhVarA.a(zzbvVar, new zzkk[0]);
        } catch (JSONException unused) {
            zzbg.b();
            return zzko.f30172h;
        }
    }
}
