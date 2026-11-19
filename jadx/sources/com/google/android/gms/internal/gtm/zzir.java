package com.google.android.gms.internal.gtm;

import android.net.Uri;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzir extends zzdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzau f30101a;

    public zzir(zzau zzauVar) {
        this.f30101a = zzauVar;
    }

    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        int length = zzkkVarArr.length;
        Preconditions.a(length > 0);
        zzkk zzkkVar = zzkkVarArr[0];
        Preconditions.a(!(zzkkVar instanceof zzko));
        zzkk zzkkVar2 = length > 1 ? zzkkVarArr[1] : zzko.f30172h;
        zzko zzkoVar = zzko.f30172h;
        Preconditions.a(zzkkVar2 == zzkoVar || (zzkkVar2 instanceof zzkr));
        zzkk zzkkVar3 = length > 2 ? zzkkVarArr[2] : zzkoVar;
        Preconditions.a(zzkkVar3 == zzkoVar || !(zzkkVar3 instanceof zzko));
        Uri.Builder builderBuildUpon = Uri.parse(zzdj.d(zzkkVar)).buildUpon();
        if (zzkkVar2 != zzkoVar) {
            for (zzkk zzkkVar4 : ((zzkr) zzkkVar2).f30180b) {
                Preconditions.a(zzkkVar4 instanceof zzks);
                for (Map.Entry entry : ((zzks) zzkkVar4).f30163a.entrySet()) {
                    builderBuildUpon.appendQueryParameter(((String) entry.getKey()).toString(), zzdj.d(zzkw.c(zzbvVar, (zzkk) entry.getValue())));
                }
            }
        }
        String string = builderBuildUpon.build().toString();
        zzau zzauVar = this.f30101a;
        if (zzkkVar3 != zzkoVar) {
            ((zzap) zzauVar).a(string, null, zzdj.d(zzkkVar3), null, null);
            zzao.a(2);
            return zzkoVar;
        }
        ((zzap) zzauVar).a(string, null, null, null, null);
        "SendPixel: url = ".concat(String.valueOf(string));
        zzao.a(2);
        return zzkoVar;
    }
}
