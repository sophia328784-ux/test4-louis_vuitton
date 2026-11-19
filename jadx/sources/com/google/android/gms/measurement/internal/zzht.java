package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import androidx.collection.LruCache;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzaeh;
import com.networkbench.agent.impl.util.r;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
public final class zzht extends zzos implements zzak {
    public final ArrayMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayMap f31822e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayMap f31823f;
    public final ArrayMap g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayMap f31824h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayMap f31825i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayMap f31826j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LruCache f31827k;
    public final com.google.android.gms.internal.measurement.zzr l;
    public final ArrayMap m;
    public final ArrayMap n;
    public final ArrayMap o;

    public zzht(zzpg zzpgVar) {
        super(zzpgVar);
        this.d = new ArrayMap();
        this.f31822e = new ArrayMap();
        this.f31823f = new ArrayMap();
        this.g = new ArrayMap();
        this.f31824h = new ArrayMap();
        this.f31825i = new ArrayMap();
        this.m = new ArrayMap();
        this.n = new ArrayMap();
        this.o = new ArrayMap();
        this.f31826j = new ArrayMap();
        this.f31827k = new zzhm(this);
        this.l = new zzhn(this);
    }

    public static final ArrayMap q(com.google.android.gms.internal.measurement.zzgl zzglVar) {
        ArrayMap arrayMap = new ArrayMap();
        for (com.google.android.gms.internal.measurement.zzgt zzgtVar : zzglVar.E()) {
            arrayMap.put(zzgtVar.A(), zzgtVar.B());
        }
        return arrayMap;
    }

    public static final zzjk r(int i2) {
        int i3 = i2 - 1;
        if (i3 == 1) {
            return zzjk.AD_STORAGE;
        }
        if (i3 == 2) {
            return zzjk.ANALYTICS_STORAGE;
        }
        if (i3 == 3) {
            return zzjk.AD_USER_DATA;
        }
        if (i3 != 4) {
            return null;
        }
        return zzjk.AD_PERSONALIZATION;
    }

    public final boolean A(String str) {
        g();
        m(str);
        ArrayMap arrayMap = this.f31822e;
        return arrayMap.get(str) != null && ((Set) arrayMap.get(str)).contains("app_instance_id");
    }

    public final boolean B(String str, zzjk zzjkVar) {
        g();
        m(str);
        com.google.android.gms.internal.measurement.zzgf zzgfVarC = C(str);
        if (zzgfVarC == null) {
            return false;
        }
        for (com.google.android.gms.internal.measurement.zzfu zzfuVar : zzgfVarC.A()) {
            if (zzjkVar == r(zzfuVar.A())) {
                return zzfuVar.B() == 2;
            }
        }
        return false;
    }

    public final com.google.android.gms.internal.measurement.zzgf C(String str) {
        g();
        m(str);
        com.google.android.gms.internal.measurement.zzgl zzglVarS = s(str);
        if (zzglVarS == null || !zzglVarS.M()) {
            return null;
        }
        return zzglVarS.N();
    }

    @Override // com.google.android.gms.measurement.internal.zzak
    public final String f(String str, String str2) {
        g();
        m(str);
        Map map = (Map) this.d.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.zzos
    public final void j() {
    }

    public final zzji k(String str, zzjk zzjkVar) {
        g();
        m(str);
        com.google.android.gms.internal.measurement.zzgf zzgfVarC = C(str);
        if (zzgfVarC == null) {
            return zzji.UNINITIALIZED;
        }
        for (com.google.android.gms.internal.measurement.zzfu zzfuVar : zzgfVarC.F()) {
            if (r(zzfuVar.A()) == zzjkVar) {
                int iB = zzfuVar.B() - 1;
                if (iB != 1) {
                    return iB != 2 ? zzji.UNINITIALIZED : zzji.DENIED;
                }
                return zzji.GRANTED;
            }
        }
        return zzji.UNINITIALIZED;
    }

    public final boolean l(String str) {
        g();
        m(str);
        com.google.android.gms.internal.measurement.zzgf zzgfVarC = C(str);
        if (zzgfVarC == null) {
            return false;
        }
        for (com.google.android.gms.internal.measurement.zzfu zzfuVar : zzgfVarC.A()) {
            if (zzfuVar.A() == 3 && zzfuVar.C() == 3) {
                return true;
            }
        }
        return false;
    }

    public final void m(String str) {
        h();
        g();
        Preconditions.e(str);
        ArrayMap arrayMap = this.f31825i;
        if (arrayMap.get(str) == null) {
            zzaw zzawVar = this.f31948b.f31982c;
            zzpg.U(zzawVar);
            zzaq zzaqVarO0 = zzawVar.o0(str);
            ArrayMap arrayMap2 = this.o;
            ArrayMap arrayMap3 = this.n;
            ArrayMap arrayMap4 = this.m;
            ArrayMap arrayMap5 = this.d;
            if (zzaqVarO0 != null) {
                com.google.android.gms.internal.measurement.zzgk zzgkVar = (com.google.android.gms.internal.measurement.zzgk) p(str, zzaqVarO0.f31557a).r();
                n(str, zzgkVar);
                arrayMap5.put(str, q((com.google.android.gms.internal.measurement.zzgl) zzgkVar.v()));
                arrayMap.put(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar.v());
                o(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar.v());
                arrayMap4.put(str, ((com.google.android.gms.internal.measurement.zzgl) zzgkVar.f30406c).L());
                arrayMap3.put(str, zzaqVarO0.f31558b);
                arrayMap2.put(str, zzaqVarO0.f31559c);
                return;
            }
            arrayMap5.put(str, null);
            this.f31823f.put(str, null);
            this.f31822e.put(str, null);
            this.g.put(str, null);
            this.f31824h.put(str, null);
            arrayMap.put(str, null);
            arrayMap4.put(str, null);
            arrayMap3.put(str, null);
            arrayMap2.put(str, null);
            this.f31826j.put(str, null);
        }
    }

    public final void n(String str, com.google.android.gms.internal.measurement.zzgk zzgkVar) {
        ArrayList arrayList;
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        Iterator it = Collections.unmodifiableList(((com.google.android.gms.internal.measurement.zzgl) zzgkVar.f30406c).K()).iterator();
        while (it.hasNext()) {
            hashSet.add(((com.google.android.gms.internal.measurement.zzgh) it.next()).A());
        }
        zzic zzicVar = this.f31850a;
        zzal zzalVar = zzicVar.d;
        zzgu zzguVar = zzicVar.f31842f;
        zzfx zzfxVar = zzfy.V0;
        int i2 = 0;
        if (zzalVar.r(null, zzfxVar)) {
            arrayList2.addAll(Collections.unmodifiableList(((com.google.android.gms.internal.measurement.zzgl) zzgkVar.f30406c).Q()));
        }
        while (i2 < ((com.google.android.gms.internal.measurement.zzgl) zzgkVar.f30406c).F()) {
            com.google.android.gms.internal.measurement.zzgi zzgiVar = (com.google.android.gms.internal.measurement.zzgi) ((com.google.android.gms.internal.measurement.zzgl) zzgkVar.f30406c).G(i2).r();
            if (zzgiVar.y().isEmpty()) {
                zzic.m(zzguVar);
                zzguVar.f31771i.a("EventConfig contained null event name");
                arrayList = arrayList2;
            } else {
                String strY = zzgiVar.y();
                arrayList = arrayList2;
                String strB = zzlt.b(zzgiVar.y(), zzjm.f31855a, zzjm.f31859f);
                if (!TextUtils.isEmpty(strB)) {
                    zzgiVar.l();
                    ((com.google.android.gms.internal.measurement.zzgj) zzgiVar.f30406c).H(strB);
                    zzgkVar.l();
                    ((com.google.android.gms.internal.measurement.zzgl) zzgkVar.f30406c).T(i2, (com.google.android.gms.internal.measurement.zzgj) zzgiVar.v());
                }
                if (((com.google.android.gms.internal.measurement.zzgj) zzgiVar.f30406c).B() && ((com.google.android.gms.internal.measurement.zzgj) zzgiVar.f30406c).C()) {
                    arrayMap.put(strY, Boolean.TRUE);
                }
                if (((com.google.android.gms.internal.measurement.zzgj) zzgiVar.f30406c).D() && ((com.google.android.gms.internal.measurement.zzgj) zzgiVar.f30406c).E()) {
                    arrayMap2.put(zzgiVar.y(), Boolean.TRUE);
                }
                if (((com.google.android.gms.internal.measurement.zzgj) zzgiVar.f30406c).F()) {
                    if (((com.google.android.gms.internal.measurement.zzgj) zzgiVar.f30406c).G() < 2 || ((com.google.android.gms.internal.measurement.zzgj) zzgiVar.f30406c).G() > 65535) {
                        zzic.m(zzguVar);
                        zzguVar.f31771i.c("Invalid sampling rate. Event name, sample rate", zzgiVar.y(), Integer.valueOf(((com.google.android.gms.internal.measurement.zzgj) zzgiVar.f30406c).G()));
                    } else {
                        arrayMap3.put(zzgiVar.y(), Integer.valueOf(((com.google.android.gms.internal.measurement.zzgj) zzgiVar.f30406c).G()));
                    }
                }
            }
            i2++;
            arrayList2 = arrayList;
        }
        ArrayList arrayList3 = arrayList2;
        this.f31822e.put(str, hashSet);
        if (zzicVar.d.r(null, zzfxVar)) {
            this.f31824h.put(str, arrayList3);
        }
        this.f31823f.put(str, arrayMap);
        this.g.put(str, arrayMap2);
        this.f31826j.put(str, arrayMap3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void o(final String str, com.google.android.gms.internal.measurement.zzgl zzglVar) {
        int iJ = zzglVar.J();
        LruCache lruCache = this.f31827k;
        if (iJ == 0) {
            lruCache.d(str);
            return;
        }
        zzic zzicVar = this.f31850a;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzguVar.n.b(Integer.valueOf(zzglVar.J()), "EES programs found");
        com.google.android.gms.internal.measurement.zzja zzjaVar = (com.google.android.gms.internal.measurement.zzja) zzglVar.I().get(0);
        try {
            com.google.android.gms.internal.measurement.zzc zzcVar = new com.google.android.gms.internal.measurement.zzc();
            com.google.android.gms.internal.measurement.zzf zzfVar = zzcVar.f30595a;
            zzfVar.d.f30642a.put("internal.remoteConfig", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhs
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    return new com.google.android.gms.internal.measurement.zzn("internal.remoteConfig", new zzho(this.zza, str));
                }
            });
            zzfVar.d.f30642a.put("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhp
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    final zzht zzhtVar = this.zza;
                    final String str2 = str;
                    return new com.google.android.gms.internal.measurement.zzu("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhr
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            zzht zzhtVar2 = zzhtVar;
                            zzaw zzawVar = zzhtVar2.f31948b.f31982c;
                            zzpg.U(zzawVar);
                            String str3 = str2;
                            zzh zzhVarK0 = zzawVar.k0(str3);
                            HashMap map = new HashMap();
                            map.put("platform", ReferenceApiV3ConstKt.OS_NAME);
                            map.put("package_name", str3);
                            zzhtVar2.f31850a.d.m();
                            map.put("gmp_version", 161000L);
                            if (zzhVarK0 != null) {
                                String strO = zzhVarK0.O();
                                if (strO != null) {
                                    map.put("app_version", strO);
                                }
                                map.put("app_version_int", Long.valueOf(zzhVarK0.Q()));
                                map.put("dynamite_version", Long.valueOf(zzhVarK0.b()));
                            }
                            return map;
                        }
                    });
                }
            });
            zzfVar.d.f30642a.put("internal.logger", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhq
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    return new com.google.android.gms.internal.measurement.zzt(this.zza.l);
                }
            });
            zzcVar.b(zzjaVar);
            lruCache.c(str, zzcVar);
            zzic.m(zzguVar);
            zzgs zzgsVar = zzguVar.n;
            zzgsVar.c("EES program loaded for appId, activities", str, Integer.valueOf(zzjaVar.B().B()));
            for (com.google.android.gms.internal.measurement.zziy zziyVar : zzjaVar.B().A()) {
                zzic.m(zzguVar);
                zzgsVar.b(zziyVar.A(), "EES program activity");
            }
        } catch (com.google.android.gms.internal.measurement.zzd unused) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31769f.b(str, "Failed to load EES program. appId");
        }
    }

    public final com.google.android.gms.internal.measurement.zzgl p(String str, byte[] bArr) {
        zzic zzicVar = this.f31850a;
        if (bArr == null) {
            return com.google.android.gms.internal.measurement.zzgl.S();
        }
        try {
            com.google.android.gms.internal.measurement.zzgl zzglVar = (com.google.android.gms.internal.measurement.zzgl) ((com.google.android.gms.internal.measurement.zzgk) zzpk.R(com.google.android.gms.internal.measurement.zzgl.R(), bArr)).v();
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.n.c("Parsed config. version, gmp_app_id", zzglVar.A() ? Long.valueOf(zzglVar.B()) : null, zzglVar.C() ? zzglVar.D() : null);
            return zzglVar;
        } catch (zzaeh e2) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31771i.c("Unable to merge remote config. appId", zzgu.o(str), e2);
            return com.google.android.gms.internal.measurement.zzgl.S();
        } catch (RuntimeException e3) {
            zzgu zzguVar3 = zzicVar.f31842f;
            zzic.m(zzguVar3);
            zzguVar3.f31771i.c("Unable to merge remote config. appId", zzgu.o(str), e3);
            return com.google.android.gms.internal.measurement.zzgl.S();
        }
    }

    public final com.google.android.gms.internal.measurement.zzgl s(String str) {
        h();
        g();
        Preconditions.e(str);
        m(str);
        return (com.google.android.gms.internal.measurement.zzgl) this.f31825i.get(str);
    }

    public final String t(String str) {
        g();
        m(str);
        return (String) this.m.get(str);
    }

    public final void u(String str, String str2, String str3, byte[] bArr) throws Throwable {
        SQLiteDatabase sQLiteDatabase;
        com.google.android.gms.internal.measurement.zzgk zzgkVar;
        byte[] bArrI;
        Iterator it;
        int i2;
        boolean z;
        h();
        g();
        Preconditions.e(str);
        com.google.android.gms.internal.measurement.zzgk zzgkVar2 = (com.google.android.gms.internal.measurement.zzgk) p(str, bArr).r();
        n(str, zzgkVar2);
        o(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar2.v());
        com.google.android.gms.internal.measurement.zzgl zzglVar = (com.google.android.gms.internal.measurement.zzgl) zzgkVar2.v();
        ArrayMap arrayMap = this.f31825i;
        arrayMap.put(str, zzglVar);
        this.m.put(str, ((com.google.android.gms.internal.measurement.zzgl) zzgkVar2.f30406c).L());
        this.n.put(str, str2);
        this.o.put(str, str3);
        this.d.put(str, q((com.google.android.gms.internal.measurement.zzgl) zzgkVar2.v()));
        zzpg zzpgVar = this.f31948b;
        zzaw zzawVar = zzpgVar.f31982c;
        zzpg.U(zzawVar);
        ArrayList<com.google.android.gms.internal.measurement.zzfd> arrayList = new ArrayList(Collections.unmodifiableList(((com.google.android.gms.internal.measurement.zzgl) zzgkVar2.f30406c).H()));
        zzic zzicVar = zzawVar.f31850a;
        int i3 = 0;
        while (i3 < arrayList.size()) {
            com.google.android.gms.internal.measurement.zzfc zzfcVar = (com.google.android.gms.internal.measurement.zzfc) ((com.google.android.gms.internal.measurement.zzfd) arrayList.get(i3)).r();
            ArrayMap arrayMap2 = arrayMap;
            if (((com.google.android.gms.internal.measurement.zzfd) zzfcVar.f30406c).G() != 0) {
                int i4 = 0;
                while (i4 < ((com.google.android.gms.internal.measurement.zzfd) zzfcVar.f30406c).G()) {
                    com.google.android.gms.internal.measurement.zzfe zzfeVar = (com.google.android.gms.internal.measurement.zzfe) ((com.google.android.gms.internal.measurement.zzfd) zzfcVar.f30406c).H(i4).r();
                    com.google.android.gms.internal.measurement.zzfe zzfeVar2 = (com.google.android.gms.internal.measurement.zzfe) zzfeVar.clone();
                    zzpg zzpgVar2 = zzpgVar;
                    com.google.android.gms.internal.measurement.zzgk zzgkVar3 = zzgkVar2;
                    String strB = zzlt.b(((com.google.android.gms.internal.measurement.zzff) zzfeVar.f30406c).C(), zzjm.f31855a, zzjm.f31859f);
                    if (strB != null) {
                        zzfeVar2.l();
                        ((com.google.android.gms.internal.measurement.zzff) zzfeVar2.f30406c).N(strB);
                        z = true;
                    } else {
                        z = false;
                    }
                    int i5 = 0;
                    while (i5 < ((com.google.android.gms.internal.measurement.zzff) zzfeVar.f30406c).E()) {
                        com.google.android.gms.internal.measurement.zzfh zzfhVarF = ((com.google.android.gms.internal.measurement.zzff) zzfeVar.f30406c).F(i5);
                        boolean z2 = z;
                        com.google.android.gms.internal.measurement.zzfe zzfeVar3 = zzfeVar;
                        String strB2 = zzlt.b(zzfhVarF.H(), zzjn.f31860a, zzjn.f31861b);
                        if (strB2 != null) {
                            com.google.android.gms.internal.measurement.zzfg zzfgVar = (com.google.android.gms.internal.measurement.zzfg) zzfhVarF.r();
                            zzfgVar.l();
                            ((com.google.android.gms.internal.measurement.zzfh) zzfgVar.f30406c).J(strB2);
                            com.google.android.gms.internal.measurement.zzfh zzfhVar = (com.google.android.gms.internal.measurement.zzfh) zzfgVar.v();
                            zzfeVar2.l();
                            ((com.google.android.gms.internal.measurement.zzff) zzfeVar2.f30406c).O(i5, zzfhVar);
                            z = true;
                        } else {
                            z = z2;
                        }
                        i5++;
                        zzfeVar = zzfeVar3;
                    }
                    if (z) {
                        zzfcVar.l();
                        ((com.google.android.gms.internal.measurement.zzfd) zzfcVar.f30406c).J(i4, (com.google.android.gms.internal.measurement.zzff) zzfeVar2.v());
                        arrayList.set(i3, (com.google.android.gms.internal.measurement.zzfd) zzfcVar.v());
                    }
                    i4++;
                    zzpgVar = zzpgVar2;
                    zzgkVar2 = zzgkVar3;
                }
            }
            com.google.android.gms.internal.measurement.zzgk zzgkVar4 = zzgkVar2;
            zzpg zzpgVar3 = zzpgVar;
            if (((com.google.android.gms.internal.measurement.zzfd) zzfcVar.f30406c).D() != 0) {
                for (int i6 = 0; i6 < ((com.google.android.gms.internal.measurement.zzfd) zzfcVar.f30406c).D(); i6++) {
                    com.google.android.gms.internal.measurement.zzfn zzfnVarE = ((com.google.android.gms.internal.measurement.zzfd) zzfcVar.f30406c).E(i6);
                    String strB3 = zzlt.b(zzfnVarE.C(), zzjo.f31863a, zzjo.f31864b);
                    if (strB3 != null) {
                        com.google.android.gms.internal.measurement.zzfm zzfmVar = (com.google.android.gms.internal.measurement.zzfm) zzfnVarE.r();
                        zzfmVar.l();
                        ((com.google.android.gms.internal.measurement.zzfn) zzfmVar.f30406c).J(strB3);
                        zzfcVar.l();
                        ((com.google.android.gms.internal.measurement.zzfd) zzfcVar.f30406c).I(i6, (com.google.android.gms.internal.measurement.zzfn) zzfmVar.v());
                        arrayList.set(i3, (com.google.android.gms.internal.measurement.zzfd) zzfcVar.v());
                    }
                }
            }
            i3++;
            arrayMap = arrayMap2;
            zzpgVar = zzpgVar3;
            zzgkVar2 = zzgkVar4;
        }
        com.google.android.gms.internal.measurement.zzgk zzgkVar5 = zzgkVar2;
        ArrayMap arrayMap3 = arrayMap;
        zzpg zzpgVar4 = zzpgVar;
        zzawVar.h();
        zzawVar.g();
        Preconditions.e(str);
        SQLiteDatabase sQLiteDatabaseX = zzawVar.X();
        sQLiteDatabaseX.beginTransaction();
        try {
            zzawVar.h();
            zzawVar.g();
            Preconditions.e(str);
            SQLiteDatabase sQLiteDatabaseX2 = zzawVar.X();
            sQLiteDatabaseX2.delete("property_filters", "app_id=?", new String[]{str});
            sQLiteDatabaseX2.delete("event_filters", "app_id=?", new String[]{str});
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                com.google.android.gms.internal.measurement.zzfd zzfdVar = (com.google.android.gms.internal.measurement.zzfd) it2.next();
                zzawVar.h();
                zzawVar.g();
                Preconditions.e(str);
                Preconditions.h(zzfdVar);
                if (zzfdVar.A()) {
                    int iB = zzfdVar.B();
                    Iterator<E> it3 = zzfdVar.F().iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            if (!((com.google.android.gms.internal.measurement.zzff) it3.next()).A()) {
                                zzgu zzguVar = zzicVar.f31842f;
                                zzic.m(zzguVar);
                                zzguVar.f31771i.c("Event filter with no ID. Audience definition ignored. appId, audienceId", zzgu.o(str), Integer.valueOf(iB));
                                break;
                            }
                        } else {
                            Iterator it4 = zzfdVar.C().iterator();
                            while (true) {
                                if (!it4.hasNext()) {
                                    Iterator<E> it5 = zzfdVar.F().iterator();
                                    while (true) {
                                        com.google.android.gms.internal.measurement.zzfd zzfdVar2 = zzfdVar;
                                        String str4 = "audience_id";
                                        sQLiteDatabase = sQLiteDatabaseX;
                                        String str5 = "app_id";
                                        if (!it5.hasNext()) {
                                            it = it2;
                                            i2 = iB;
                                            for (com.google.android.gms.internal.measurement.zzfn zzfnVar : zzfdVar2.C()) {
                                                zzawVar.h();
                                                zzawVar.g();
                                                Preconditions.e(str);
                                                Preconditions.h(zzfnVar);
                                                if (zzfnVar.C().isEmpty()) {
                                                    zzgu zzguVar2 = zzicVar.f31842f;
                                                    zzic.m(zzguVar2);
                                                    zzguVar2.f31771i.d("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", zzgu.o(str), Integer.valueOf(i2), String.valueOf(zzfnVar.A() ? Integer.valueOf(zzfnVar.B()) : null));
                                                } else {
                                                    byte[] bArrI2 = zzfnVar.i();
                                                    ContentValues contentValues = new ContentValues();
                                                    contentValues.put(str5, str);
                                                    String str6 = str5;
                                                    contentValues.put(str4, Integer.valueOf(i2));
                                                    contentValues.put("filter_id", zzfnVar.A() ? Integer.valueOf(zzfnVar.B()) : null);
                                                    String str7 = str4;
                                                    contentValues.put("property_name", zzfnVar.C());
                                                    contentValues.put("session_scoped", zzfnVar.G() ? Boolean.valueOf(zzfnVar.H()) : null);
                                                    contentValues.put(DbParams.KEY_DATA, bArrI2);
                                                    try {
                                                        if (zzawVar.X().insertWithOnConflict("property_filters", null, contentValues, 5) == -1) {
                                                            zzgu zzguVar3 = zzicVar.f31842f;
                                                            zzic.m(zzguVar3);
                                                            zzguVar3.f31769f.b(zzgu.o(str), "Failed to insert property filter (got -1). appId");
                                                        } else {
                                                            str5 = str6;
                                                            str4 = str7;
                                                        }
                                                    } catch (SQLiteException e2) {
                                                        zzgu zzguVar4 = zzicVar.f31842f;
                                                        zzic.m(zzguVar4);
                                                        zzguVar4.f31769f.c("Error storing property filter. appId", zzgu.o(str), e2);
                                                    }
                                                }
                                            }
                                            break;
                                        }
                                        try {
                                            com.google.android.gms.internal.measurement.zzff zzffVar = (com.google.android.gms.internal.measurement.zzff) it5.next();
                                            zzawVar.h();
                                            zzawVar.g();
                                            Preconditions.e(str);
                                            Preconditions.h(zzffVar);
                                            if (zzffVar.C().isEmpty()) {
                                                zzgu zzguVar5 = zzicVar.f31842f;
                                                zzic.m(zzguVar5);
                                                zzguVar5.f31771i.d("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", zzgu.o(str), Integer.valueOf(iB), String.valueOf(zzffVar.A() ? Integer.valueOf(zzffVar.B()) : null));
                                                it = it2;
                                                i2 = iB;
                                            } else {
                                                it = it2;
                                                byte[] bArrI3 = zzffVar.i();
                                                i2 = iB;
                                                ContentValues contentValues2 = new ContentValues();
                                                contentValues2.put("app_id", str);
                                                contentValues2.put("audience_id", Integer.valueOf(i2));
                                                contentValues2.put("filter_id", zzffVar.A() ? Integer.valueOf(zzffVar.B()) : null);
                                                contentValues2.put(DbParams.KEY_CHANNEL_EVENT_NAME, zzffVar.C());
                                                contentValues2.put("session_scoped", zzffVar.K() ? Boolean.valueOf(zzffVar.L()) : null);
                                                contentValues2.put(DbParams.KEY_DATA, bArrI3);
                                                try {
                                                    if (zzawVar.X().insertWithOnConflict("event_filters", null, contentValues2, 5) == -1) {
                                                        zzgu zzguVar6 = zzicVar.f31842f;
                                                        zzic.m(zzguVar6);
                                                        zzguVar6.f31769f.b(zzgu.o(str), "Failed to insert event filter (got -1). appId");
                                                    }
                                                    zzfdVar = zzfdVar2;
                                                    sQLiteDatabaseX = sQLiteDatabase;
                                                    it2 = it;
                                                    iB = i2;
                                                } catch (SQLiteException e3) {
                                                    zzgu zzguVar7 = zzicVar.f31842f;
                                                    zzic.m(zzguVar7);
                                                    zzguVar7.f31769f.c("Error storing event filter. appId", zzgu.o(str), e3);
                                                }
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            sQLiteDatabase.endTransaction();
                                            throw th;
                                        }
                                        zzawVar.h();
                                        zzawVar.g();
                                        Preconditions.e(str);
                                        SQLiteDatabase sQLiteDatabaseX3 = zzawVar.X();
                                        sQLiteDatabaseX3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(i2)});
                                        sQLiteDatabaseX3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(i2)});
                                        break;
                                    }
                                    sQLiteDatabaseX = sQLiteDatabase;
                                    it2 = it;
                                    break;
                                }
                                if (!((com.google.android.gms.internal.measurement.zzfn) it4.next()).A()) {
                                    zzgu zzguVar8 = zzicVar.f31842f;
                                    zzic.m(zzguVar8);
                                    zzguVar8.f31771i.c("Property filter with no ID. Audience definition ignored. appId, audienceId", zzgu.o(str), Integer.valueOf(iB));
                                    break;
                                }
                            }
                        }
                    }
                } else {
                    zzgu zzguVar9 = zzicVar.f31842f;
                    zzic.m(zzguVar9);
                    zzguVar9.f31771i.b(zzgu.o(str), "Audience with no ID. appId");
                }
            }
            sQLiteDatabase = sQLiteDatabaseX;
            ArrayList arrayList2 = new ArrayList();
            for (com.google.android.gms.internal.measurement.zzfd zzfdVar3 : arrayList) {
                arrayList2.add(zzfdVar3.A() ? Integer.valueOf(zzfdVar3.B()) : null);
            }
            Preconditions.e(str);
            zzawVar.h();
            zzawVar.g();
            SQLiteDatabase sQLiteDatabaseX4 = zzawVar.X();
            try {
                long jC = zzawVar.C("select count(1) from audience_filter_values where app_id=?", new String[]{str});
                int iMax = Math.max(0, Math.min(r.E, zzicVar.d.p(str, zzfy.U)));
                if (jC > iMax) {
                    ArrayList arrayList3 = new ArrayList();
                    int i7 = 0;
                    while (true) {
                        if (i7 >= arrayList2.size()) {
                            String strJoin = TextUtils.join(",", arrayList3);
                            StringBuilder sb = new StringBuilder(String.valueOf(strJoin).length() + 2);
                            sb.append("(");
                            sb.append(strJoin);
                            sb.append(")");
                            String string = sb.toString();
                            StringBuilder sb2 = new StringBuilder(string.length() + 140);
                            sb2.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
                            sb2.append(string);
                            sb2.append(" order by rowid desc limit -1 offset ?)");
                            sQLiteDatabaseX4.delete("audience_filter_values", sb2.toString(), new String[]{str, Integer.toString(iMax)});
                            break;
                        }
                        Integer num = (Integer) arrayList2.get(i7);
                        if (num == null) {
                            break;
                        }
                        arrayList3.add(Integer.toString(num.intValue()));
                        i7++;
                    }
                }
            } catch (SQLiteException e4) {
                zzgu zzguVar10 = zzicVar.f31842f;
                zzic.m(zzguVar10);
                zzguVar10.f31769f.c("Database error querying filters. appId", zzgu.o(str), e4);
            }
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            try {
                zzgkVar5.l();
                zzgkVar = zzgkVar5;
                try {
                    ((com.google.android.gms.internal.measurement.zzgl) zzgkVar.f30406c).U();
                    bArrI = ((com.google.android.gms.internal.measurement.zzgl) zzgkVar.v()).i();
                } catch (RuntimeException e5) {
                    e = e5;
                    zzgu zzguVar11 = this.f31850a.f31842f;
                    zzic.m(zzguVar11);
                    zzguVar11.f31771i.c("Unable to serialize reduced-size config. Storing full config instead. appId", zzgu.o(str), e);
                    bArrI = bArr;
                }
            } catch (RuntimeException e6) {
                e = e6;
                zzgkVar = zzgkVar5;
            }
            zzaw zzawVar2 = zzpgVar4.f31982c;
            zzpg.U(zzawVar2);
            zzic zzicVar2 = zzawVar2.f31850a;
            Preconditions.e(str);
            zzawVar2.g();
            zzawVar2.h();
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("remote_config", bArrI);
            contentValues3.put("config_last_modified_time", str2);
            contentValues3.put("e_tag", str3);
            try {
                if (zzawVar2.X().update("apps", contentValues3, "app_id = ?", new String[]{str}) == 0) {
                    zzgu zzguVar12 = zzicVar2.f31842f;
                    zzic.m(zzguVar12);
                    zzguVar12.f31769f.b(zzgu.o(str), "Failed to update remote config (got 0). appId");
                }
            } catch (SQLiteException e7) {
                zzgu zzguVar13 = zzicVar2.f31842f;
                zzic.m(zzguVar13);
                zzguVar13.f31769f.c("Error storing remote config. appId", zzgu.o(str), e7);
            }
            zzgkVar.l();
            ((com.google.android.gms.internal.measurement.zzgl) zzgkVar.f30406c).V();
            arrayMap3.put(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar.v());
        } catch (Throwable th2) {
            th = th2;
            sQLiteDatabase = sQLiteDatabaseX;
        }
    }

    public final boolean v(String str, String str2) {
        Boolean bool;
        g();
        m(str);
        if ("1".equals(f(str, "measurement.upload.blacklist_internal")) && zzpp.K(str2)) {
            return true;
        }
        if ("1".equals(f(str, "measurement.upload.blacklist_public")) && zzpp.g0(str2)) {
            return true;
        }
        Map map = (Map) this.f31823f.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final boolean w(String str, String str2) {
        Boolean bool;
        g();
        m(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map map = (Map) this.g.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final List x(String str) {
        g();
        m(str);
        return (List) this.f31824h.get(str);
    }

    public final int y(String str, String str2) {
        Integer num;
        g();
        m(str);
        Map map = (Map) this.f31826j.get(str);
        if (map == null || (num = (Integer) map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    public final boolean z(String str) {
        g();
        m(str);
        ArrayMap arrayMap = this.f31822e;
        if (arrayMap.get(str) != null) {
            return ((Set) arrayMap.get(str)).contains("os_version") || ((Set) arrayMap.get(str)).contains("device_info");
        }
        return false;
    }
}
