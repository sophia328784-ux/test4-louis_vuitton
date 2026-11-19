package com.google.android.gms.internal.gtm;

import android.content.Context;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import defpackage.mt;
import defpackage.pq0;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class zzja {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30117a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzjm f30118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DefaultClock f30119c;
    public final HashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f30120e;

    public zzja(Context context) {
        HashMap map = new HashMap();
        zzjm zzjmVar = new zzjm(context);
        this.d = new HashMap();
        this.f30117a = context.getApplicationContext();
        this.f30119c = DefaultClock.f29336a;
        this.f30118b = zzjmVar;
        this.f30120e = map;
    }

    public final void a(zzjf zzjfVar, List list, int i2, zzix zzixVar, zzam zzamVar) {
        int i3;
        long jLastModified;
        if (i2 == 0) {
            zzao.a(2);
            i3 = 0;
        } else {
            i3 = i2;
        }
        if (i3 >= list.size()) {
            String strConcat = "There is no valid resource for the container: ".concat(String.valueOf(zzjfVar.f30123a.f30102a));
            zzao.a(2);
            zzixVar.zza(new zzjh(new Status(16, strConcat), ((Integer) list.get(i3 - 1)).intValue(), null, null));
            return;
        }
        int iIntValue = ((Integer) list.get(i3)).intValue();
        if (iIntValue != 0) {
            if (iIntValue == 1) {
                zzit zzitVar = zzjfVar.f30123a;
                String str = zzitVar.f30102a;
                zzao.a(2);
                zzjm zzjmVar = this.f30118b;
                String strA = zzitVar.a();
                zziy zziyVar = new zziy(this, 1, zzjfVar, list, i3, zzixVar, null);
                zzjmVar.getClass();
                zzjmVar.f30132b.execute(new zzjj(zzjmVar, strA, zziyVar));
                return;
            }
            if (iIntValue != 2) {
                mt.i(pq0.k(i3, "Unknown fetching source: "));
                return;
            }
            zzit zzitVar2 = zzjfVar.f30123a;
            String str2 = zzitVar2.f30102a;
            zzao.a(2);
            zzjm zzjmVar2 = this.f30118b;
            String strA2 = zzitVar2.a();
            String str3 = zzitVar2.f30103b;
            zziy zziyVar2 = new zziy(this, 2, zzjfVar, list, i3, zzixVar, null);
            zzjmVar2.getClass();
            zzjmVar2.f30132b.execute(new zzjk(zzjmVar2, strA2, str3, zziyVar2));
            return;
        }
        zzit zzitVar3 = zzjfVar.f30123a;
        zziz zzizVar = (zziz) this.d.get(zzitVar3.f30102a);
        if (!zzjfVar.f30123a.d) {
            if (zzizVar != null) {
                jLastModified = zzizVar.f30114a;
            } else {
                File fileA = this.f30118b.a(zzitVar3.f30102a);
                jLastModified = fileA.exists() ? fileA.lastModified() : 0L;
            }
            long j2 = jLastModified + 900000;
            this.f30119c.getClass();
            if (j2 >= System.currentTimeMillis()) {
                a(zzjfVar, list, i3 + 1, zzixVar, zzamVar);
                return;
            }
        }
        HashMap map = this.f30120e;
        zzit zzitVar4 = zzjfVar.f30123a;
        zzjr zzjrVar = (zzjr) map.get(zzitVar4 == null ? "" : zzitVar4.f30102a);
        if (zzjrVar == null) {
            zzjrVar = new zzjr();
            zzit zzitVar5 = zzjfVar.f30123a;
            map.put(zzitVar5 == null ? "" : zzitVar5.f30102a, zzjrVar);
        }
        zzjr zzjrVar2 = zzjrVar;
        zzao.a(2);
        Context context = this.f30117a;
        zziy zziyVar3 = new zziy(this, 0, zzjfVar, list, i3, zzixVar, zzamVar);
        synchronized (zzjrVar2) {
            try {
                ScheduledFuture scheduledFuture = zzjrVar2.f30137b;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                zzjrVar2.f30137b = zzjrVar2.f30136a.schedule(new zzjq(context, zzjfVar, zziyVar3), 0L, TimeUnit.MILLISECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(String str, String str2, String str3, ArrayList arrayList, zzix zzixVar, zzam zzamVar) {
        Preconditions.a(!arrayList.isEmpty());
        zzjf zzjfVar = new zzjf();
        zzbn zzbnVarA = zzbn.a();
        boolean z = false;
        if (zzbnVarA.f29990c == 2 && str.equals(zzbnVarA.f29988a)) {
            z = true;
        }
        zzjfVar.f30123a = new zzit(str, str2, str3, z, zzbn.a().f29989b, "");
        a(zzjfVar, Collections.unmodifiableList(arrayList), 0, zzixVar, zzamVar);
    }
}
