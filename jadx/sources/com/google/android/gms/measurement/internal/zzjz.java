package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.appsflyer.sdk_base.referrer.Payload;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzjz implements Runnable {
    final /* synthetic */ zzlj zza;

    public zzjz(zzlj zzljVar) {
        Objects.requireNonNull(zzljVar);
        this.zza = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzx zzxVar = this.zza.q;
        zzic zzicVar = zzxVar.f32025a;
        zzhz zzhzVar = zzicVar.g;
        zzlj zzljVar = zzicVar.m;
        zzhh zzhhVar = zzicVar.f31841e;
        zzic.m(zzhzVar);
        zzhzVar.g();
        if (zzxVar.c()) {
            if (zzxVar.b()) {
                zzic.k(zzhhVar);
                zzhhVar.w.b(null);
                Bundle bundle = new Bundle();
                bundle.putString(Payload.SOURCE, "(not set)");
                bundle.putString("medium", "(not set)");
                bundle.putString("_cis", "intent");
                bundle.putLong("_cc", 1L);
                zzic.l(zzljVar);
                zzljVar.n("auto", "_cmpx", bundle);
            } else {
                zzic.k(zzhhVar);
                zzhg zzhgVar = zzhhVar.w;
                String strA = zzhgVar.a();
                if (TextUtils.isEmpty(strA)) {
                    zzgu zzguVar = zzicVar.f31842f;
                    zzic.m(zzguVar);
                    zzguVar.g.a("Cache still valid but referrer not found");
                } else {
                    long jA = zzhhVar.x.a() / 3600000;
                    Uri uri = Uri.parse(strA);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(uri.getPath(), bundle2);
                    for (String str : uri.getQueryParameterNames()) {
                        bundle2.putString(str, uri.getQueryParameter(str));
                    }
                    ((Bundle) pair.second).putLong("_cc", (jA - 1) * 3600000);
                    Object obj = pair.first;
                    String str2 = obj == null ? Payload.TYPE_APP : (String) obj;
                    zzic.l(zzljVar);
                    zzljVar.n(str2, "_cmp", (Bundle) pair.second);
                }
                zzhgVar.b(null);
            }
            zzic.k(zzhhVar);
            zzhhVar.x.b(0L);
        }
    }
}
