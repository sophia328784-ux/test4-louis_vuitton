package com.google.android.gms.measurement.internal;

import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.zzahn;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzaa extends zzab {
    public final com.google.android.gms.internal.measurement.zzff g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ zzad f31531h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaa(zzad zzadVar, String str, int i2, com.google.android.gms.internal.measurement.zzff zzffVar) {
        super(str, i2);
        this.f31531h = zzadVar;
        this.g = zzffVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzab
    public final int a() {
        return this.g.B();
    }

    @Override // com.google.android.gms.measurement.internal.zzab
    public final boolean b() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzab
    public final boolean c() {
        return this.g.G();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0272  */
    /* JADX WARN: Code duplicated, block: B:105:0x0292  */
    /* JADX WARN: Code duplicated, block: B:111:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:115:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:120:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:126:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:131:0x0303  */
    /* JADX WARN: Code duplicated, block: B:133:0x0309  */
    /* JADX WARN: Code duplicated, block: B:135:0x031d  */
    /* JADX WARN: Code duplicated, block: B:137:0x0323  */
    /* JADX WARN: Code duplicated, block: B:139:0x032b  */
    /* JADX WARN: Code duplicated, block: B:141:0x0335  */
    /* JADX WARN: Code duplicated, block: B:150:0x0358  */
    /* JADX WARN: Code duplicated, block: B:153:0x0361  */
    /* JADX WARN: Code duplicated, block: B:158:0x0398 A[EDGE_INSN: B:158:0x0398->B:161:0x03c2 BREAK  A[LOOP:1: B:59:0x0183->B:64:0x01a6]] */
    /* JADX WARN: Code duplicated, block: B:159:0x03ab A[EDGE_INSN: B:159:0x03ab->B:161:0x03c2 BREAK  A[LOOP:1: B:59:0x0183->B:64:0x01a6]] */
    /* JADX WARN: Code duplicated, block: B:205:0x033c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:208:0x01ae A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:209:0x0199 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:210:0x0237 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x01d1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:212:0x01f0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x01d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:214:0x020f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:215:0x01f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:216:0x0221 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:218:0x01bb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:222:0x03bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:223:0x0264 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:224:0x0280 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:225:0x0167 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:226:0x02b4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:0x02ff A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:228:0x02c5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:229:0x0167 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:230:0x02fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:231:0x0392 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:232:0x037d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:233:0x0368 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:234:0x03c2 A[EDGE_INSN: B:234:0x03c2->B:161:0x03c2 BREAK  A[LOOP:1: B:59:0x0183->B:64:0x01a6], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:235:0x035e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:236:0x027a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:237:0x02bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0176  */
    /* JADX WARN: Code duplicated, block: B:61:0x0189  */
    /* JADX WARN: Code duplicated, block: B:64:0x01a6 A[LOOP:1: B:59:0x0183->B:64:0x01a6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:68:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:74:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:75:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:81:0x0200  */
    /* JADX WARN: Code duplicated, block: B:82:0x0209  */
    /* JADX WARN: Code duplicated, block: B:86:0x0215  */
    /* JADX WARN: Code duplicated, block: B:91:0x0245  */
    /* JADX WARN: Code duplicated, block: B:96:0x0259  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final boolean g(Long l, Long l2, com.google.android.gms.internal.measurement.zzhs zzhsVar, long j2, zzbd zzbdVar, boolean z) {
        HashSet hashSet;
        Iterator it;
        ArrayMap arrayMap;
        Iterator it2;
        Iterator it3;
        com.google.android.gms.internal.measurement.zzfh zzfhVar;
        boolean z2;
        String strH;
        Object obj;
        Boolean boolF;
        Boolean boolF2;
        String str;
        com.google.android.gms.internal.measurement.zzfl zzflVarD;
        long j3;
        Boolean boolF3;
        com.google.android.gms.internal.measurement.zzhw zzhwVar;
        Long lValueOf;
        Double dValueOf;
        com.google.android.gms.internal.measurement.zzfh zzfhVar2;
        Boolean boolF4;
        int i2;
        zzahn.a();
        zzad zzadVar = this.f31531h;
        zzic zzicVar = zzadVar.f31850a;
        zzal zzalVar = zzicVar.d;
        zzgu zzguVar = zzicVar.f31842f;
        zzgn zzgnVar = zzicVar.f31845j;
        zzfx zzfxVar = zzfy.F0;
        String str2 = this.f31532a;
        boolean zR = zzalVar.r(str2, zzfxVar);
        com.google.android.gms.internal.measurement.zzff zzffVar = this.g;
        long j4 = zzffVar.L() ? zzbdVar.f31595e : j2;
        zzic.m(zzguVar);
        zzgs zzgsVar = zzguVar.n;
        zzgs zzgsVar2 = zzguVar.f31771i;
        boolean zIsLoggable = Log.isLoggable(zzguVar.q(), 2);
        int i3 = this.f31533b;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        Boolean bool = null;
        if (zIsLoggable) {
            zzic.m(zzguVar);
            zzgsVar.d("Evaluating filter. audience, filter, event", Integer.valueOf(i3), zzffVar.A() ? Integer.valueOf(zzffVar.B()) : null, zzgnVar.a(zzffVar.C()));
            zzic.m(zzguVar);
            zzpk zzpkVar = zzadVar.f31948b.g;
            zzpg.U(zzpkVar);
            StringBuilder sb = new StringBuilder();
            sb.append("\nevent_filter {\n");
            if (zzffVar.A()) {
                i2 = 0;
                zzpk.B(sb, 0, "filter_id", Integer.valueOf(zzffVar.B()));
            } else {
                i2 = 0;
            }
            zzpk.B(sb, i2, DbParams.KEY_CHANNEL_EVENT_NAME, zzpkVar.f31850a.f31845j.a(zzffVar.C()));
            String strX = zzpk.x(zzffVar.I(), zzffVar.J(), zzffVar.L());
            if (!strX.isEmpty()) {
                zzpk.B(sb, 0, "filter_type", strX);
            }
            if (zzffVar.G()) {
                zzpk.C(sb, 1, "event_count_filter", zzffVar.H());
            }
            if (zzffVar.E() > 0) {
                sb.append("  filters {\n");
                Iterator it4 = zzffVar.D().iterator();
                while (it4.hasNext()) {
                    zzpkVar.u(sb, 2, (com.google.android.gms.internal.measurement.zzfh) it4.next());
                }
            }
            zzpk.v(sb, 1);
            sb.append("}\n}\n");
            zzgsVar.b(sb.toString(), "Filter definition");
        }
        if (!zzffVar.A() || zzffVar.B() > 256) {
            zzic.m(zzguVar);
            zzgsVar2.c("Invalid event filter ID. appId, id", zzgu.o(str2), String.valueOf(zzffVar.A() ? Integer.valueOf(zzffVar.B()) : null));
            return false;
        }
        boolean z3 = zzffVar.I() || zzffVar.J() || zzffVar.L();
        if (z && !z3) {
            zzic.m(zzguVar);
            zzgsVar.c("Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(i3), zzffVar.A() ? Integer.valueOf(zzffVar.B()) : null);
            return true;
        }
        String strF = zzhsVar.F();
        if (!zzffVar.G()) {
            hashSet = new HashSet();
            it = zzffVar.D().iterator();
            while (true) {
                if (it.hasNext()) {
                    arrayMap = new ArrayMap();
                    it2 = zzhsVar.C().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            it3 = zzffVar.D().iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    zR = zR;
                                    zzguVar = zzguVar;
                                    bool = Boolean.TRUE;
                                    break;
                                }
                                zzfhVar = (com.google.android.gms.internal.measurement.zzfh) it3.next();
                                if (zzfhVar.E()) {
                                    z2 = false;
                                } else {
                                    z2 = false;
                                }
                                strH = zzfhVar.H();
                                if (strH.isEmpty()) {
                                    obj = arrayMap.get(strH);
                                    if (obj instanceof Long) {
                                        if (obj instanceof Double) {
                                            if (obj instanceof String) {
                                                zR = zR;
                                                zzguVar = zzguVar;
                                                if (obj == null) {
                                                    zzic.m(zzguVar);
                                                    zzgsVar2.c("Unknown param type. event, param", zzgnVar.a(strF), zzgnVar.b(strH));
                                                    break;
                                                }
                                                zzic.m(zzguVar);
                                                zzgsVar.c("Missing param for filter. event, param", zzgnVar.a(strF), zzgnVar.b(strH));
                                                bool = Boolean.FALSE;
                                                break;
                                            }
                                            if (zzfhVar.A()) {
                                                if (zzfhVar.C()) {
                                                    zR = zR;
                                                    zzguVar = zzguVar;
                                                    zzic.m(zzguVar);
                                                    zzgsVar2.c("No filter for String param. event, param", zzgnVar.a(strF), zzgnVar.b(strH));
                                                    break;
                                                }
                                                str = (String) obj;
                                                if (zzpk.K(str)) {
                                                    zR = zR;
                                                    zzguVar = zzguVar;
                                                    zzic.m(zzguVar);
                                                    zzgsVar2.c("Invalid param value for number filter. event, param", zzgnVar.a(strF), zzgnVar.b(strH));
                                                    break;
                                                }
                                                zzflVarD = zzfhVar.D();
                                                if (zzpk.K(str)) {
                                                    zR = zR;
                                                    zzguVar = zzguVar;
                                                    j3 = 0;
                                                    boolF3 = zzab.f(new BigDecimal(str), zzflVarD, 0.0d);
                                                } else {
                                                    boolF3 = null;
                                                }
                                                if (boolF3 != null) {
                                                    break;
                                                    break;
                                                }
                                                if (boolF3.booleanValue() == z2) {
                                                    bool = Boolean.FALSE;
                                                    break;
                                                }
                                                zzguVar = zzguVar;
                                                zR = zR;
                                            } else {
                                                com.google.android.gms.internal.measurement.zzfr zzfrVarB = zzfhVar.B();
                                                zzic.m(zzguVar);
                                                boolF3 = zzab.e((String) obj, zzfrVarB, zzguVar);
                                            }
                                            j3 = 0;
                                            if (boolF3 != null) {
                                                break;
                                                break;
                                            }
                                            if (boolF3.booleanValue() == z2) {
                                                bool = Boolean.FALSE;
                                                break;
                                            }
                                            zzguVar = zzguVar;
                                            zR = zR;
                                        } else if (zzfhVar.C()) {
                                            double dDoubleValue = ((Double) obj).doubleValue();
                                            boolF2 = zzab.f(new BigDecimal(dDoubleValue), zzfhVar.D(), Math.ulp(dDoubleValue));
                                            if (boolF2 != null) {
                                                if (boolF2.booleanValue() == z2) {
                                                    bool = Boolean.FALSE;
                                                }
                                            }
                                        } else {
                                            zzic.m(zzguVar);
                                            zzgsVar2.c("No number filter for double param. event, param", zzgnVar.a(strF), zzgnVar.b(strH));
                                        }
                                    } else if (zzfhVar.C()) {
                                        boolF = zzab.f(new BigDecimal(((Long) obj).longValue()), zzfhVar.D(), 0.0d);
                                        if (boolF != null) {
                                            if (boolF.booleanValue() == z2) {
                                                bool = Boolean.FALSE;
                                            }
                                        }
                                    } else {
                                        zzic.m(zzguVar);
                                        zzgsVar2.c("No number filter for long param. event, param", zzgnVar.a(strF), zzgnVar.b(strH));
                                    }
                                } else {
                                    zzic.m(zzguVar);
                                    zzgsVar2.b(zzgnVar.a(strF), "Event has empty param name. event");
                                }
                            }
                        } else {
                            zzhwVar = (com.google.android.gms.internal.measurement.zzhw) it2.next();
                            if (!hashSet.contains(zzhwVar.B())) {
                                if (zzhwVar.E()) {
                                    String strB = zzhwVar.B();
                                    if (zzhwVar.E()) {
                                        lValueOf = Long.valueOf(zzhwVar.F());
                                    } else {
                                        lValueOf = null;
                                    }
                                    arrayMap.put(strB, lValueOf);
                                } else if (zzhwVar.I()) {
                                    String strB2 = zzhwVar.B();
                                    if (zzhwVar.I()) {
                                        dValueOf = Double.valueOf(zzhwVar.J());
                                    } else {
                                        dValueOf = null;
                                    }
                                    arrayMap.put(strB2, dValueOf);
                                } else if (zzhwVar.C()) {
                                    arrayMap.put(zzhwVar.B(), zzhwVar.D());
                                } else {
                                    zzic.m(zzguVar);
                                    zzgsVar2.c("Unknown value for param. event, param", zzgnVar.a(strF), zzgnVar.b(zzhwVar.B()));
                                }
                            }
                        }
                    }
                } else {
                    zzfhVar2 = (com.google.android.gms.internal.measurement.zzfh) it.next();
                    if (zzfhVar2.H().isEmpty()) {
                        zzic.m(zzguVar);
                        zzgsVar2.b(zzgnVar.a(strF), "null or empty param name in filter. event");
                    } else {
                        hashSet.add(zzfhVar2.H());
                    }
                }
                zR = zR;
                zzguVar = zzguVar;
                break;
            }
        }
        try {
            boolF4 = zzab.f(new BigDecimal(j4), zzffVar.H(), 0.0d);
        } catch (NumberFormatException unused) {
            boolF4 = null;
        }
        if (boolF4 != null) {
            if (boolF4.booleanValue()) {
                hashSet = new HashSet();
                it = zzffVar.D().iterator();
                while (true) {
                    if (it.hasNext()) {
                        arrayMap = new ArrayMap();
                        it2 = zzhsVar.C().iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                it3 = zzffVar.D().iterator();
                                while (true) {
                                    if (it3.hasNext()) {
                                        zR = zR;
                                        zzguVar = zzguVar;
                                        bool = Boolean.TRUE;
                                        break;
                                    }
                                    zzfhVar = (com.google.android.gms.internal.measurement.zzfh) it3.next();
                                    if (zzfhVar.E() || !zzfhVar.F()) {
                                        z2 = false;
                                    } else {
                                        z2 = true;
                                    }
                                    strH = zzfhVar.H();
                                    if (strH.isEmpty()) {
                                        obj = arrayMap.get(strH);
                                        if (obj instanceof Long) {
                                            if (obj instanceof Double) {
                                                if (obj instanceof String) {
                                                    zR = zR;
                                                    zzguVar = zzguVar;
                                                    if (obj == null) {
                                                        zzic.m(zzguVar);
                                                        zzgsVar2.c("Unknown param type. event, param", zzgnVar.a(strF), zzgnVar.b(strH));
                                                        break;
                                                    }
                                                    zzic.m(zzguVar);
                                                    zzgsVar.c("Missing param for filter. event, param", zzgnVar.a(strF), zzgnVar.b(strH));
                                                    bool = Boolean.FALSE;
                                                    break;
                                                }
                                                if (zzfhVar.A()) {
                                                    if (zzfhVar.C()) {
                                                        zR = zR;
                                                        zzguVar = zzguVar;
                                                        zzic.m(zzguVar);
                                                        zzgsVar2.c("No filter for String param. event, param", zzgnVar.a(strF), zzgnVar.b(strH));
                                                        break;
                                                    }
                                                    str = (String) obj;
                                                    if (zzpk.K(str)) {
                                                        zR = zR;
                                                        zzguVar = zzguVar;
                                                        zzic.m(zzguVar);
                                                        zzgsVar2.c("Invalid param value for number filter. event, param", zzgnVar.a(strF), zzgnVar.b(strH));
                                                        break;
                                                    }
                                                    zzflVarD = zzfhVar.D();
                                                    if (zzpk.K(str)) {
                                                        boolF3 = null;
                                                    } else {
                                                        try {
                                                            zR = zR;
                                                            zzguVar = zzguVar;
                                                            j3 = 0;
                                                            try {
                                                                boolF3 = zzab.f(new BigDecimal(str), zzflVarD, 0.0d);
                                                            } catch (NumberFormatException unused2) {
                                                                boolF3 = null;
                                                            }
                                                        } catch (NumberFormatException unused3) {
                                                            zR = zR;
                                                            zzguVar = zzguVar;
                                                            j3 = 0;
                                                        }
                                                    }
                                                    if (boolF3 != null) {
                                                        break;
                                                    }
                                                    if (boolF3.booleanValue() == z2) {
                                                        bool = Boolean.FALSE;
                                                        break;
                                                    }
                                                    zzguVar = zzguVar;
                                                    zR = zR;
                                                } else {
                                                    com.google.android.gms.internal.measurement.zzfr zzfrVarB2 = zzfhVar.B();
                                                    zzic.m(zzguVar);
                                                    boolF3 = zzab.e((String) obj, zzfrVarB2, zzguVar);
                                                }
                                                j3 = 0;
                                                if (boolF3 != null) {
                                                    break;
                                                    break;
                                                }
                                                if (boolF3.booleanValue() == z2) {
                                                    bool = Boolean.FALSE;
                                                    break;
                                                }
                                                zzguVar = zzguVar;
                                                zR = zR;
                                            } else if (zzfhVar.C()) {
                                                zzic.m(zzguVar);
                                                zzgsVar2.c("No number filter for double param. event, param", zzgnVar.a(strF), zzgnVar.b(strH));
                                            } else {
                                                double dDoubleValue2 = ((Double) obj).doubleValue();
                                                try {
                                                    boolF2 = zzab.f(new BigDecimal(dDoubleValue2), zzfhVar.D(), Math.ulp(dDoubleValue2));
                                                } catch (NumberFormatException unused4) {
                                                    boolF2 = null;
                                                }
                                                if (boolF2 != null) {
                                                    if (boolF2.booleanValue() == z2) {
                                                        bool = Boolean.FALSE;
                                                    }
                                                }
                                            }
                                        } else if (zzfhVar.C()) {
                                            zzic.m(zzguVar);
                                            zzgsVar2.c("No number filter for long param. event, param", zzgnVar.a(strF), zzgnVar.b(strH));
                                        } else {
                                            try {
                                                boolF = zzab.f(new BigDecimal(((Long) obj).longValue()), zzfhVar.D(), 0.0d);
                                            } catch (NumberFormatException unused5) {
                                                boolF = null;
                                            }
                                            if (boolF != null) {
                                                if (boolF.booleanValue() == z2) {
                                                    bool = Boolean.FALSE;
                                                }
                                            }
                                        }
                                    } else {
                                        zzic.m(zzguVar);
                                        zzgsVar2.b(zzgnVar.a(strF), "Event has empty param name. event");
                                    }
                                }
                            } else {
                                zzhwVar = (com.google.android.gms.internal.measurement.zzhw) it2.next();
                                if (!hashSet.contains(zzhwVar.B())) {
                                    if (zzhwVar.E()) {
                                        String strB3 = zzhwVar.B();
                                        if (zzhwVar.E()) {
                                            lValueOf = Long.valueOf(zzhwVar.F());
                                        } else {
                                            lValueOf = null;
                                        }
                                        arrayMap.put(strB3, lValueOf);
                                    } else if (zzhwVar.I()) {
                                        String strB4 = zzhwVar.B();
                                        if (zzhwVar.I()) {
                                            dValueOf = Double.valueOf(zzhwVar.J());
                                        } else {
                                            dValueOf = null;
                                        }
                                        arrayMap.put(strB4, dValueOf);
                                    } else if (zzhwVar.C()) {
                                        arrayMap.put(zzhwVar.B(), zzhwVar.D());
                                    } else {
                                        zzic.m(zzguVar);
                                        zzgsVar2.c("Unknown value for param. event, param", zzgnVar.a(strF), zzgnVar.b(zzhwVar.B()));
                                    }
                                }
                            }
                        }
                    } else {
                        zzfhVar2 = (com.google.android.gms.internal.measurement.zzfh) it.next();
                        if (zzfhVar2.H().isEmpty()) {
                            zzic.m(zzguVar);
                            zzgsVar2.b(zzgnVar.a(strF), "null or empty param name in filter. event");
                        } else {
                            hashSet.add(zzfhVar2.H());
                        }
                    }
                }
            } else {
                bool = Boolean.FALSE;
            }
        }
        zR = zR;
        zzguVar = zzguVar;
        break;
        zzic.m(zzguVar);
        zzgsVar.b(bool == null ? "null" : bool, "Event filter result");
        if (bool == null) {
            return false;
        }
        Boolean bool2 = Boolean.TRUE;
        this.f31534c = bool2;
        if (!bool.booleanValue()) {
            return true;
        }
        this.d = bool2;
        if (!z3 || !zzhsVar.G()) {
            return true;
        }
        Long lValueOf2 = Long.valueOf(zzhsVar.H());
        if (zzffVar.J()) {
            if (zR && zzffVar.G()) {
                lValueOf2 = l;
            }
            this.f31536f = lValueOf2;
            return true;
        }
        if (zR && zzffVar.G()) {
            lValueOf2 = l2;
        }
        this.f31535e = lValueOf2;
        return true;
    }
}
