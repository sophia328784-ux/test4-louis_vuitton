package com.google.android.gms.internal.measurement;

import com.google.common.base.Function;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzpt implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f30816b;

    public /* synthetic */ zzpt(String str) {
        this.f30816b = str;
    }

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        zznu zznuVar = (zznu) obj;
        zzvb zzvbVar = zzpu.f30817a;
        zznr zznrVarB = zznr.B();
        String str = this.f30816b;
        zznq zznqVar = (zznq) zznuVar.A(str, zznrVarB).r();
        if (!Collections.unmodifiableList(((zznr) zznqVar.f30406c).A()).contains("")) {
            zznqVar.l();
            ((zznr) zznqVar.f30406c).C("");
        }
        zznt zzntVar = (zznt) zznuVar.r();
        zznqVar.l();
        ((zznr) zznqVar.f30406c).D("");
        zznr zznrVar = (zznr) zznqVar.v();
        zzntVar.l();
        ((zznu) zzntVar.f30406c).C().put(str, zznrVar);
        return (zznu) zzntVar.v();
    }
}
