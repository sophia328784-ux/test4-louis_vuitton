package com.google.android.gms.internal.measurement;

import com.google.common.base.Function;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzqz implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ zzqz f30856b = new zzqz();

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        zzmk zzmkVar = (zzmk) obj;
        if (zzmkVar.f30741b != 29514) {
            throw zzmkVar;
        }
        zznn zznnVarD = zzno.D();
        zznh zznhVarN = zzni.N();
        long jCurrentTimeMillis = System.currentTimeMillis();
        zznhVarN.l();
        ((zzni) zznhVarN.f30406c).P(jCurrentTimeMillis);
        zznnVarD.l();
        ((zzno) zznnVarD.f30406c).E((zzni) zznhVarN.v());
        return (zzno) zznnVarD.v();
    }
}
