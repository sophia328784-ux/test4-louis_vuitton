package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

/* JADX INFO: loaded from: classes2.dex */
final class zzpi implements zzph {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile zzon f30806a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public zzpg f30807b;

    @Override // com.google.android.gms.internal.measurement.zzph
    public final zzpg a(final zzlk zzlkVar) {
        final zzon zzonVar = this.f30806a;
        zzon zzonVar2 = zzpg.f30799j;
        if (zzonVar != zzonVar2) {
            zzpe zzpeVar = zzpg.f30798i;
            zzpeVar.getClass();
            final zzpd zzpdVar = new zzpd();
            zzpdVar.f30795a = false;
            ConcurrentHashMap concurrentHashMap = zzpeVar.f30796a;
            Context context = zzlkVar.f30720b;
            String str = zzonVar.d;
            if (str == null) {
                str = (String) zzonVar.f30783a.apply(context);
                zzonVar.d = str;
            }
            zzoo zzooVar = (zzoo) concurrentHashMap.computeIfAbsent(str, new Function() { // from class: com.google.android.gms.internal.measurement.zzpb
                @Override // java.util.function.Function
                public final /* synthetic */ Object apply(Object obj) {
                    zzoo zzooVar2 = new zzoo(new zzpg(zzlkVar, zzonVar));
                    zzpdVar.f30795a = true;
                    return zzooVar2;
                }
            });
            if (zzpdVar.f30795a) {
                Context context2 = zzlkVar.f30720b;
                zzoz zzozVar = new zzoz(zzpeVar);
                if (zzql.f30835a == null) {
                    synchronized (zzql.class) {
                        try {
                            if (zzql.f30835a == null) {
                                if (!Objects.equals(context2.getPackageName(), "com.google.android.gms")) {
                                    if (Build.VERSION.SDK_INT >= 33) {
                                        context2.registerReceiver(new zzql(), new IntentFilter("com.google.android.gms.phenotype.UPDATE"), 2);
                                    } else {
                                        context2.registerReceiver(new zzql(), new IntentFilter("com.google.android.gms.phenotype.UPDATE"));
                                    }
                                }
                                zzql.f30835a = zzozVar;
                                zzqk zzqkVar = zzql.f30835a;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
            this.f30807b = zzooVar.f30786a;
            this.f30806a = zzonVar2;
        }
        return this.f30807b;
    }
}
