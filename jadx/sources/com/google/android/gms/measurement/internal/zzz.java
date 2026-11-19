package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.google.android.gms.internal.measurement.zzhs f32032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Long f32033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f32034c;
    public final /* synthetic */ zzad d;

    public /* synthetic */ zzz(zzad zzadVar) {
        this.d = zzadVar;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00f3 A[PHI: r6 r16 r17
      0x00f3: PHI (r6v4 android.database.Cursor) = (r6v3 android.database.Cursor), (r6v6 android.database.Cursor) binds: [B:61:0x011e, B:46:0x00ec] A[DONT_GENERATE, DONT_INLINE]
      0x00f3: PHI (r16v5 com.google.android.gms.internal.measurement.zzhs) = (r16v3 com.google.android.gms.internal.measurement.zzhs), (r16v10 com.google.android.gms.internal.measurement.zzhs) binds: [B:61:0x011e, B:46:0x00ec] A[DONT_GENERATE, DONT_INLINE]
      0x00f3: PHI (r17v4 long) = (r17v2 long), (r17v7 long) binds: [B:61:0x011e, B:46:0x00ec] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:90:0x01e4  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31, types: [android.util.Pair] */
    /* JADX WARN: Type inference failed for: r0v72 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r9v7 */
    public final com.google.android.gms.internal.measurement.zzhs a(com.google.android.gms.internal.measurement.zzhs zzhsVar, String str) {
        ?? r9;
        com.google.android.gms.internal.measurement.zzhs zzhsVar2;
        long j2;
        Cursor cursorRawQuery;
        ?? r0;
        Object obj;
        Pair pair;
        String strF = zzhsVar.F();
        List listC = zzhsVar.C();
        zzad zzadVar = this.d;
        zzpg zzpgVar = zzadVar.f31948b;
        zzpg zzpgVar2 = zzadVar.f31948b;
        zzic zzicVar = zzadVar.f31850a;
        zzpgVar.k0();
        com.google.android.gms.internal.measurement.zzhw zzhwVarQ = zzpk.q(zzhsVar, "_eid");
        Long l = (Long) (zzhwVarQ == null ? null : zzpk.y(zzhwVarQ));
        if (l != null) {
            if (strF.equals("_ep")) {
                zzpgVar.k0();
                com.google.android.gms.internal.measurement.zzhw zzhwVarQ2 = zzpk.q(zzhsVar, "_en");
                String str2 = (String) (zzhwVarQ2 == null ? null : zzpk.y(zzhwVarQ2));
                if (TextUtils.isEmpty(str2)) {
                    zzgu zzguVar = zzicVar.f31842f;
                    zzic.m(zzguVar);
                    zzguVar.g.b(l, "Extra parameter without an event name. eventId");
                    return null;
                }
                if (this.f32032a == null || this.f32033b == null || l.longValue() != this.f32033b.longValue()) {
                    zzaw zzawVar = zzpgVar.f31982c;
                    zzpg.U(zzawVar);
                    zzic zzicVar2 = zzawVar.f31850a;
                    zzawVar.g();
                    zzawVar.h();
                    try {
                        try {
                            cursorRawQuery = zzawVar.X().rawQuery("select main_event, children_to_process from main_event_params where app_id=? and event_id=?", new String[]{str, l.toString()});
                            try {
                                if (cursorRawQuery.moveToFirst()) {
                                    zzhsVar2 = null;
                                    try {
                                        try {
                                            Pair pairCreate = Pair.create((com.google.android.gms.internal.measurement.zzhs) ((com.google.android.gms.internal.measurement.zzhr) zzpk.R(com.google.android.gms.internal.measurement.zzhs.Q(), cursorRawQuery.getBlob(0))).v(), Long.valueOf(cursorRawQuery.getLong(1)));
                                            cursorRawQuery.close();
                                            pair = pairCreate;
                                        } catch (IOException e2) {
                                            zzgu zzguVar2 = zzicVar2.f31842f;
                                            zzic.m(zzguVar2);
                                            j2 = 0;
                                            try {
                                                zzguVar2.f31769f.d("Failed to merge main event. appId, eventId", zzgu.o(str), l, e2);
                                            } catch (SQLiteException e3) {
                                                e = e3;
                                                zzgu zzguVar3 = zzicVar2.f31842f;
                                                zzic.m(zzguVar3);
                                                zzguVar3.f31769f.b(e, "Error selecting main event");
                                                if (cursorRawQuery != null) {
                                                    cursorRawQuery.close();
                                                }
                                                r0 = zzhsVar2;
                                                if (r0 != 0) {
                                                }
                                                zzgu zzguVar4 = zzicVar.f31842f;
                                                zzic.m(zzguVar4);
                                                zzguVar4.g.c("Extra parameter without existing main event. eventName, eventId", str2, l);
                                                return zzhsVar2;
                                            }
                                            cursorRawQuery.close();
                                            r0 = zzhsVar2;
                                        }
                                    } catch (SQLiteException e4) {
                                        e = e4;
                                        j2 = 0;
                                        zzgu zzguVar5 = zzicVar2.f31842f;
                                        zzic.m(zzguVar5);
                                        zzguVar5.f31769f.b(e, "Error selecting main event");
                                        if (cursorRawQuery != null) {
                                            cursorRawQuery.close();
                                        }
                                        r0 = zzhsVar2;
                                    }
                                } else {
                                    zzgu zzguVar6 = zzicVar2.f31842f;
                                    zzic.m(zzguVar6);
                                    zzguVar6.n.a("Main event not found");
                                    cursorRawQuery.close();
                                    pair = null;
                                    zzhsVar2 = null;
                                }
                                j2 = 0;
                                r0 = pair;
                            } catch (SQLiteException e5) {
                                e = e5;
                                zzhsVar2 = null;
                            }
                        } catch (Throwable th) {
                            th = th;
                            r9 = strF;
                            if (r9 != 0) {
                                r9.close();
                            }
                            throw th;
                        }
                    } catch (SQLiteException e6) {
                        e = e6;
                        zzhsVar2 = null;
                        j2 = 0;
                        cursorRawQuery = null;
                    } catch (Throwable th2) {
                        th = th2;
                        r9 = 0;
                        if (r9 != 0) {
                            r9.close();
                        }
                        throw th;
                    }
                    if (r0 != 0 || (obj = ((Pair) r0).first) == null) {
                        zzgu zzguVar7 = zzicVar.f31842f;
                        zzic.m(zzguVar7);
                        zzguVar7.g.c("Extra parameter without existing main event. eventName, eventId", str2, l);
                        return zzhsVar2;
                    }
                    this.f32032a = (com.google.android.gms.internal.measurement.zzhs) obj;
                    this.f32034c = ((Long) ((Pair) r0).second).longValue();
                    zzpgVar2.k0();
                    this.f32033b = (Long) zzpk.s(this.f32032a, "_eid");
                } else {
                    j2 = 0;
                }
                long j3 = this.f32034c - 1;
                this.f32034c = j3;
                if (j3 <= j2) {
                    zzaw zzawVar2 = zzpgVar2.f31982c;
                    zzpg.U(zzawVar2);
                    zzic zzicVar3 = zzawVar2.f31850a;
                    zzawVar2.g();
                    zzgu zzguVar8 = zzicVar3.f31842f;
                    zzic.m(zzguVar8);
                    zzguVar8.n.b(str, "Clearing complex main event info. appId");
                    try {
                        zzawVar2.X().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                    } catch (SQLiteException e7) {
                        zzgu zzguVar9 = zzicVar3.f31842f;
                        zzic.m(zzguVar9);
                        zzguVar9.f31769f.b(e7, "Error clearing complex main event");
                    }
                } else {
                    zzaw zzawVar3 = zzpgVar2.f31982c;
                    zzpg.U(zzawVar3);
                    zzawVar3.y(str, l, this.f32034c, this.f32032a);
                }
                ArrayList arrayList = new ArrayList();
                for (com.google.android.gms.internal.measurement.zzhw zzhwVar : this.f32032a.C()) {
                    zzpgVar2.k0();
                    if (zzpk.q(zzhsVar, zzhwVar.B()) == null) {
                        arrayList.add(zzhwVar);
                    }
                }
                if (arrayList.isEmpty()) {
                    zzgu zzguVar10 = zzicVar.f31842f;
                    zzic.m(zzguVar10);
                    zzguVar10.g.b(str2, "No unique parameters in main event. eventName");
                } else {
                    arrayList.addAll(listC);
                    listC = arrayList;
                }
                strF = str2;
            } else {
                this.f32033b = l;
                this.f32032a = zzhsVar;
                zzpgVar.k0();
                com.google.android.gms.internal.measurement.zzhw zzhwVarQ3 = zzpk.q(zzhsVar, "_epc");
                Serializable serializableY = zzhwVarQ3 == null ? null : zzpk.y(zzhwVarQ3);
                long jLongValue = ((Long) (serializableY != null ? serializableY : 0L)).longValue();
                this.f32034c = jLongValue;
                if (jLongValue <= 0) {
                    zzgu zzguVar11 = zzicVar.f31842f;
                    zzic.m(zzguVar11);
                    zzguVar11.g.b(strF, "Complex event with zero extra param count. eventName");
                } else {
                    zzaw zzawVar4 = zzpgVar.f31982c;
                    zzpg.U(zzawVar4);
                    zzawVar4.y(str, l, this.f32034c, zzhsVar);
                }
            }
        }
        com.google.android.gms.internal.measurement.zzhr zzhrVar = (com.google.android.gms.internal.measurement.zzhr) zzhsVar.r();
        zzhrVar.F(strF);
        zzhrVar.l();
        ((com.google.android.gms.internal.measurement.zzhs) zzhrVar.f30406c).U();
        zzhrVar.l();
        ((com.google.android.gms.internal.measurement.zzhs) zzhrVar.f30406c).T(listC);
        return (com.google.android.gms.internal.measurement.zzhs) zzhrVar.v();
    }
}
