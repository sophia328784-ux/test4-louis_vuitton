package com.google.android.gms.internal.measurement;

import defpackage.az;
import defpackage.d21;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public final class zzae implements Iterable, zzao, zzak {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TreeMap f30411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TreeMap f30412c;

    public zzae(List list) {
        this();
        if (list != null) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                q(i2, (zzao) list.get(i2));
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator I() {
        return new zzac(this, this.f30411b.keySet().iterator(), this.f30412c.keySet().iterator());
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao Q() {
        zzae zzaeVar = new zzae();
        for (Map.Entry entry : this.f30411b.entrySet()) {
            boolean z = entry.getValue() instanceof zzak;
            TreeMap treeMap = zzaeVar.f30411b;
            if (z) {
                treeMap.put((Integer) entry.getKey(), (zzao) entry.getValue());
            } else {
                treeMap.put((Integer) entry.getKey(), ((zzao) entry.getValue()).Q());
            }
        }
        return zzaeVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final zzao a(String str) {
        zzao zzaoVar;
        if ("length".equals(str)) {
            return new zzah(Double.valueOf(o()));
        }
        return (!i(str) || (zzaoVar = (zzao) this.f30412c.get(str)) == null) ? zzao.k0 : zzaoVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final void b(String str, zzao zzaoVar) {
        TreeMap treeMap = this.f30412c;
        if (zzaoVar == null) {
            treeMap.remove(str);
        } else {
            treeMap.put(str, zzaoVar);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzae)) {
            return false;
        }
        zzae zzaeVar = (zzae) obj;
        if (o() != zzaeVar.o()) {
            return false;
        }
        TreeMap treeMap = this.f30411b;
        if (treeMap.isEmpty()) {
            return zzaeVar.f30411b.isEmpty();
        }
        for (int iIntValue = ((Integer) treeMap.firstKey()).intValue(); iIntValue <= ((Integer) treeMap.lastKey()).intValue(); iIntValue++) {
            if (!p(iIntValue).equals(zzaeVar.p(iIntValue))) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String f0() {
        return t(",");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double g0() {
        TreeMap treeMap = this.f30411b;
        if (treeMap.size() == 1) {
            return p(0).g0();
        }
        return treeMap.size() <= 0 ? Double.valueOf(0.0d) : Double.valueOf(Double.NaN);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:100:0x0200  */
    /* JADX WARN: Code duplicated, block: B:102:0x020a  */
    /* JADX WARN: Code duplicated, block: B:104:0x020f  */
    /* JADX WARN: Code duplicated, block: B:106:0x0231  */
    /* JADX WARN: Code duplicated, block: B:107:0x0237  */
    /* JADX WARN: Code duplicated, block: B:110:0x0242  */
    /* JADX WARN: Code duplicated, block: B:112:0x025f  */
    /* JADX WARN: Code duplicated, block: B:113:0x0265  */
    /* JADX WARN: Code duplicated, block: B:117:0x0274 A[LOOP:2: B:115:0x026f->B:117:0x0274, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:119:0x0283  */
    /* JADX WARN: Code duplicated, block: B:121:0x0289  */
    /* JADX WARN: Code duplicated, block: B:124:0x0295  */
    /* JADX WARN: Code duplicated, block: B:126:0x029d  */
    /* JADX WARN: Code duplicated, block: B:128:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:130:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:133:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:136:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:139:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:141:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:143:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:145:0x02f7  */
    /* JADX WARN: Code duplicated, block: B:147:0x0308  */
    /* JADX WARN: Code duplicated, block: B:148:0x030c  */
    /* JADX WARN: Code duplicated, block: B:149:0x0312  */
    /* JADX WARN: Code duplicated, block: B:153:0x032b A[LOOP:3: B:151:0x0325->B:153:0x032b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:155:0x0339  */
    /* JADX WARN: Code duplicated, block: B:157:0x033f  */
    /* JADX WARN: Code duplicated, block: B:159:0x0354  */
    /* JADX WARN: Code duplicated, block: B:162:0x035b  */
    /* JADX WARN: Code duplicated, block: B:165:0x0367  */
    /* JADX WARN: Code duplicated, block: B:173:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:174:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:176:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:178:0x03bd  */
    /* JADX WARN: Code duplicated, block: B:181:0x03c7 A[LOOP:5: B:179:0x03c1->B:181:0x03c7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:184:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:186:0x03f2  */
    /* JADX WARN: Code duplicated, block: B:188:0x03fc  */
    /* JADX WARN: Code duplicated, block: B:190:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:192:0x0405  */
    /* JADX WARN: Code duplicated, block: B:198:0x0420  */
    /* JADX WARN: Code duplicated, block: B:199:0x0423  */
    /* JADX WARN: Code duplicated, block: B:202:0x042f  */
    /* JADX WARN: Code duplicated, block: B:204:0x0437  */
    /* JADX WARN: Code duplicated, block: B:207:0x0443  */
    /* JADX WARN: Code duplicated, block: B:209:0x044d  */
    /* JADX WARN: Code duplicated, block: B:211:0x0455  */
    /* JADX WARN: Code duplicated, block: B:213:0x046a  */
    /* JADX WARN: Code duplicated, block: B:215:0x0470  */
    /* JADX WARN: Code duplicated, block: B:217:0x0476  */
    /* JADX WARN: Code duplicated, block: B:219:0x047e  */
    /* JADX WARN: Code duplicated, block: B:221:0x0483  */
    /* JADX WARN: Code duplicated, block: B:223:0x048b  */
    /* JADX WARN: Code duplicated, block: B:225:0x0491  */
    /* JADX WARN: Code duplicated, block: B:228:0x04a0  */
    /* JADX WARN: Code duplicated, block: B:230:0x04b0 A[LOOP:6: B:226:0x049a->B:230:0x04b0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:235:0x04cd A[LOOP:7: B:233:0x04c7->B:235:0x04cd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:239:0x04f1 A[LOOP:8: B:237:0x04eb->B:239:0x04f1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:242:0x0516  */
    /* JADX WARN: Code duplicated, block: B:244:0x051e  */
    /* JADX WARN: Code duplicated, block: B:246:0x0528  */
    /* JADX WARN: Code duplicated, block: B:249:0x0544  */
    /* JADX WARN: Code duplicated, block: B:251:0x055e  */
    /* JADX WARN: Code duplicated, block: B:252:0x0566  */
    /* JADX WARN: Code duplicated, block: B:255:0x0576  */
    /* JADX WARN: Code duplicated, block: B:256:0x057d  */
    /* JADX WARN: Code duplicated, block: B:259:0x0582  */
    /* JADX WARN: Code duplicated, block: B:261:0x0588  */
    /* JADX WARN: Code duplicated, block: B:263:0x0594  */
    /* JADX WARN: Code duplicated, block: B:272:0x05b8  */
    /* JADX WARN: Code duplicated, block: B:274:0x05c0  */
    /* JADX WARN: Code duplicated, block: B:276:0x05d5  */
    /* JADX WARN: Code duplicated, block: B:279:0x05dc  */
    /* JADX WARN: Code duplicated, block: B:281:0x05e3  */
    /* JADX WARN: Code duplicated, block: B:283:0x05e8  */
    /* JADX WARN: Code duplicated, block: B:285:0x05f0  */
    /* JADX WARN: Code duplicated, block: B:287:0x05f6  */
    /* JADX WARN: Code duplicated, block: B:289:0x05fc  */
    /* JADX WARN: Code duplicated, block: B:291:0x061a  */
    /* JADX WARN: Code duplicated, block: B:292:0x0625  */
    /* JADX WARN: Code duplicated, block: B:294:0x062b  */
    /* JADX WARN: Code duplicated, block: B:297:0x063f  */
    /* JADX WARN: Code duplicated, block: B:299:0x065d  */
    /* JADX WARN: Code duplicated, block: B:302:0x0666 A[LOOP:10: B:300:0x065e->B:302:0x0666, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:305:0x067e A[LOOP:11: B:305:0x067e->B:321:0x06d0, LOOP_START, PHI: r9 r35
      0x067e: PHI (r9v3 int) = (r9v2 int), (r9v4 int) binds: [B:304:0x067c, B:321:0x06d0] A[DONT_GENERATE, DONT_INLINE]
      0x067e: PHI (r35v1 java.util.TreeMap) = (r35v0 java.util.TreeMap), (r35v4 java.util.TreeMap) binds: [B:304:0x067c, B:321:0x06d0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:307:0x0684  */
    /* JADX WARN: Code duplicated, block: B:309:0x0692  */
    /* JADX WARN: Code duplicated, block: B:311:0x0698  */
    /* JADX WARN: Code duplicated, block: B:313:0x069e  */
    /* JADX WARN: Code duplicated, block: B:314:0x06a4  */
    /* JADX WARN: Code duplicated, block: B:316:0x06b0  */
    /* JADX WARN: Code duplicated, block: B:318:0x06be  */
    /* JADX WARN: Code duplicated, block: B:326:0x06f6 A[LOOP:13: B:326:0x06f6->B:328:0x06f9, LOOP_START, PHI: r0
      0x06f6: PHI (r0v33 int) = (r0v32 int), (r0v34 int) binds: [B:296:0x063d, B:328:0x06f9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:328:0x06f9 A[LOOP:13: B:326:0x06f6->B:328:0x06f9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:330:0x070b  */
    /* JADX WARN: Code duplicated, block: B:332:0x0713  */
    /* JADX WARN: Code duplicated, block: B:334:0x0719  */
    /* JADX WARN: Code duplicated, block: B:336:0x0724  */
    /* JADX WARN: Code duplicated, block: B:338:0x0738  */
    /* JADX WARN: Code duplicated, block: B:340:0x073e  */
    /* JADX WARN: Code duplicated, block: B:342:0x0744  */
    /* JADX WARN: Code duplicated, block: B:345:0x0762 A[LOOP:14: B:343:0x075c->B:345:0x0762, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:347:0x0779  */
    /* JADX WARN: Code duplicated, block: B:348:0x077e  */
    /* JADX WARN: Code duplicated, block: B:350:0x0786  */
    /* JADX WARN: Code duplicated, block: B:352:0x0792  */
    /* JADX WARN: Code duplicated, block: B:355:0x079c  */
    /* JADX WARN: Code duplicated, block: B:357:0x07ac  */
    /* JADX WARN: Code duplicated, block: B:362:0x07c0 A[LOOP:16: B:360:0x07ba->B:362:0x07c0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:366:0x07e3  */
    /* JADX WARN: Code duplicated, block: B:368:0x07eb  */
    /* JADX WARN: Code duplicated, block: B:370:0x07fb  */
    /* JADX WARN: Code duplicated, block: B:379:0x01eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:390:0x04b8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:399:0x06ef A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:400:0x06d5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:405:0x06c6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:409:0x07db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:410:0x07d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:411:0x07b4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x0128  */
    /* JADX WARN: Code duplicated, block: B:56:0x012e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0138  */
    /* JADX WARN: Code duplicated, block: B:61:0x014e  */
    /* JADX WARN: Code duplicated, block: B:63:0x016f  */
    /* JADX WARN: Code duplicated, block: B:65:0x0175  */
    /* JADX WARN: Code duplicated, block: B:67:0x0179  */
    /* JADX WARN: Code duplicated, block: B:68:0x0181  */
    /* JADX WARN: Code duplicated, block: B:72:0x018c  */
    /* JADX WARN: Code duplicated, block: B:80:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:82:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:84:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:87:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:89:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:91:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:94:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:96:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:98:0x01fa  */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x02d2, code lost:
    
        if (com.google.android.gms.internal.measurement.zzba.b(r7, r2, (com.google.android.gms.internal.measurement.zzan) r0, java.lang.Boolean.FALSE, java.lang.Boolean.TRUE).o() != r7.o()) goto L171;
     */
    @Override // com.google.android.gms.internal.measurement.zzao
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.zzao h(java.lang.String r37, com.google.android.gms.internal.measurement.zzg r38, java.util.ArrayList r39) {
        /*
            Method dump skipped, instruction units count: 2132
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzae.h(java.lang.String, com.google.android.gms.internal.measurement.zzg, java.util.ArrayList):com.google.android.gms.internal.measurement.zzao");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean h0() {
        return Boolean.TRUE;
    }

    public final int hashCode() {
        return this.f30411b.hashCode() * 31;
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final boolean i(String str) {
        return "length".equals(str) || this.f30412c.containsKey(str);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new zzad(this);
    }

    public final List m() {
        ArrayList arrayList = new ArrayList(o());
        for (int i2 = 0; i2 < o(); i2++) {
            arrayList.add(p(i2));
        }
        return arrayList;
    }

    public final Iterator n() {
        return this.f30411b.keySet().iterator();
    }

    public final int o() {
        TreeMap treeMap = this.f30411b;
        if (treeMap.isEmpty()) {
            return 0;
        }
        return ((Integer) treeMap.lastKey()).intValue() + 1;
    }

    public final zzao p(int i2) {
        zzao zzaoVar;
        if (i2 < o()) {
            return (!r(i2) || (zzaoVar = (zzao) this.f30411b.get(Integer.valueOf(i2))) == null) ? zzao.k0 : zzaoVar;
        }
        az.v("Attempting to get element outside of current array");
        return null;
    }

    public final void q(int i2, zzao zzaoVar) {
        if (i2 > 32468) {
            md.k("Array too large");
            return;
        }
        if (i2 < 0) {
            az.v(d21.f(i2, "Out of bounds index: ", new StringBuilder(String.valueOf(i2).length() + 21)));
            return;
        }
        TreeMap treeMap = this.f30411b;
        if (zzaoVar == null) {
            treeMap.remove(Integer.valueOf(i2));
        } else {
            treeMap.put(Integer.valueOf(i2), zzaoVar);
        }
    }

    public final boolean r(int i2) {
        if (i2 >= 0) {
            TreeMap treeMap = this.f30411b;
            if (i2 <= ((Integer) treeMap.lastKey()).intValue()) {
                return treeMap.containsKey(Integer.valueOf(i2));
            }
        }
        az.v(d21.f(i2, "Out of bounds index: ", new StringBuilder(String.valueOf(i2).length() + 21)));
        return false;
    }

    public final void s(int i2) {
        TreeMap treeMap = this.f30411b;
        int iIntValue = ((Integer) treeMap.lastKey()).intValue();
        if (i2 > iIntValue || i2 < 0) {
            return;
        }
        treeMap.remove(Integer.valueOf(i2));
        if (i2 == iIntValue) {
            int i3 = i2 - 1;
            Integer numValueOf = Integer.valueOf(i3);
            if (treeMap.containsKey(numValueOf) || i3 < 0) {
                return;
            }
            treeMap.put(numValueOf, zzao.k0);
            return;
        }
        while (true) {
            i2++;
            if (i2 > ((Integer) treeMap.lastKey()).intValue()) {
                return;
            }
            Integer numValueOf2 = Integer.valueOf(i2);
            zzao zzaoVar = (zzao) treeMap.get(numValueOf2);
            if (zzaoVar != null) {
                treeMap.put(Integer.valueOf(i2 - 1), zzaoVar);
                treeMap.remove(numValueOf2);
            }
        }
    }

    public final String t(String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        if (!this.f30411b.isEmpty()) {
            int i2 = 0;
            while (true) {
                str2 = str == null ? "" : str;
                if (i2 >= o()) {
                    break;
                }
                zzao zzaoVarP = p(i2);
                sb.append(str2);
                if (!(zzaoVarP instanceof zzat) && !(zzaoVarP instanceof zzam)) {
                    sb.append(zzaoVarP.f0());
                }
                i2++;
            }
            sb.delete(0, str2.length());
        }
        return sb.toString();
    }

    public final String toString() {
        return t(",");
    }

    public zzae() {
        this.f30411b = new TreeMap();
        this.f30412c = new TreeMap();
    }
}
