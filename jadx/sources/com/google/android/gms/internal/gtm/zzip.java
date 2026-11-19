package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzip extends zzdk {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzlh f30097b = zzlh.l(4, "GET", "HEAD", "POST", "PUT");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzau f30098a;

    public zzip(zzau zzauVar) {
        this.f30098a = zzauVar;
    }

    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        HashMap map;
        Preconditions.a(zzkkVarArr.length == 1);
        Preconditions.a(zzkkVarArr[0] instanceof zzks);
        zzkk zzkkVarB = zzkkVarArr[0].b(ConfigurationName.DOWNLOAD_PLUGIN_URL);
        Preconditions.a(zzkkVarB instanceof zzkv);
        String str = ((zzkv) zzkkVarB).f30188b;
        zzkk zzkkVarB2 = zzkkVarArr[0].b("method");
        zzko zzkoVar = zzko.f30172h;
        if (zzkkVarB2 == zzkoVar) {
            zzkkVarB2 = new zzkv("GET");
        }
        Preconditions.a(zzkkVarB2 instanceof zzkv);
        String str2 = ((zzkv) zzkkVarB2).f30188b;
        Preconditions.a(f30097b.contains(str2));
        zzkk zzkkVarB3 = zzkkVarArr[0].b("uniqueId");
        Preconditions.a(zzkkVarB3 == zzkoVar || zzkkVarB3 == zzko.g || (zzkkVarB3 instanceof zzkv));
        String str3 = (zzkkVarB3 == zzkoVar || zzkkVarB3 == zzko.g) ? null : ((zzkv) zzkkVarB3).f30188b;
        zzkk zzkkVarB4 = zzkkVarArr[0].b("headers");
        Preconditions.a(zzkkVarB4 == zzkoVar || (zzkkVarB4 instanceof zzks));
        HashMap map2 = new HashMap();
        if (zzkkVarB4 == zzkoVar) {
            map = null;
        } else {
            for (Map.Entry entry : ((zzks) zzkkVarB4).f30163a.entrySet()) {
                String str4 = (String) entry.getKey();
                zzkk zzkkVar = (zzkk) entry.getValue();
                if (zzkkVar instanceof zzkv) {
                    map2.put(str4, ((zzkv) zzkkVar).f30188b);
                } else {
                    zzao.a(5);
                }
            }
            map = map2;
        }
        zzkk zzkkVarB5 = zzkkVarArr[0].b("body");
        Preconditions.a(zzkkVarB5 == zzkoVar || (zzkkVarB5 instanceof zzkv));
        String str5 = zzkkVarB5 != zzkoVar ? ((zzkv) zzkkVarB5).f30188b : null;
        if ((str2.equals("GET") || str2.equals("HEAD")) && str5 != null) {
            zzao.a(5);
        }
        String str6 = str3;
        this.f30098a.a(str, str2, str6, map, str5);
        String.format("QueueRequest:\n  url = %s,\n  method = %s,\n  uniqueId = %s,\n  headers = %s,\n  body = %s", str, str2, str6, map, str5);
        zzao.a(2);
        return zzkoVar;
    }
}
