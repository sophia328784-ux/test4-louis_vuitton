package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzaee;
import com.google.android.gms.internal.measurement.zzahn;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.io.IOException;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class zzad extends zzos {
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public HashSet f31538e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ArrayMap f31539f;
    public Long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Long f31540h;

    @Override // com.google.android.gms.measurement.internal.zzos
    public final void j() {
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0239 A[LOOP:20: B:85:0x01e9->B:102:0x0239, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:117:0x026b  */
    /* JADX WARN: Code duplicated, block: B:121:0x0275  */
    /* JADX WARN: Code duplicated, block: B:123:0x0280  */
    /* JADX WARN: Code duplicated, block: B:125:0x028b  */
    /* JADX WARN: Code duplicated, block: B:131:0x02b9 A[Catch: all -> 0x02d4, SQLiteException -> 0x02d6, LOOP:11: B:131:0x02b9->B:566:?, LOOP_START, TryCatch #5 {SQLiteException -> 0x02d6, blocks: (B:129:0x02b3, B:131:0x02b9, B:133:0x02ca, B:139:0x02d8, B:142:0x02ed), top: B:476:0x02b3 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x02ca A[Catch: all -> 0x02d4, SQLiteException -> 0x02d6, TryCatch #5 {SQLiteException -> 0x02d6, blocks: (B:129:0x02b3, B:131:0x02b9, B:133:0x02ca, B:139:0x02d8, B:142:0x02ed), top: B:476:0x02b3 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x02ed A[Catch: all -> 0x02d4, SQLiteException -> 0x02d6, TRY_ENTER, TRY_LEAVE, TryCatch #5 {SQLiteException -> 0x02d6, blocks: (B:129:0x02b3, B:131:0x02b9, B:133:0x02ca, B:139:0x02d8, B:142:0x02ed), top: B:476:0x02b3 }] */
    /* JADX WARN: Code duplicated, block: B:159:0x032a  */
    /* JADX WARN: Code duplicated, block: B:162:0x0338  */
    /* JADX WARN: Code duplicated, block: B:164:0x034f  */
    /* JADX WARN: Code duplicated, block: B:190:0x0454  */
    /* JADX WARN: Code duplicated, block: B:194:0x0465  */
    /* JADX WARN: Code duplicated, block: B:196:0x0485  */
    /* JADX WARN: Code duplicated, block: B:202:0x049c  */
    /* JADX WARN: Code duplicated, block: B:206:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:207:0x04c1  */
    /* JADX WARN: Code duplicated, block: B:211:0x04cf  */
    /* JADX WARN: Code duplicated, block: B:217:0x04e6  */
    /* JADX WARN: Code duplicated, block: B:223:0x051c  */
    /* JADX WARN: Code duplicated, block: B:226:0x0525  */
    /* JADX WARN: Code duplicated, block: B:228:0x0531  */
    /* JADX WARN: Code duplicated, block: B:230:0x0553  */
    /* JADX WARN: Code duplicated, block: B:231:0x0557  */
    /* JADX WARN: Code duplicated, block: B:236:0x0570 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:247:0x058f  */
    /* JADX WARN: Code duplicated, block: B:249:0x05ab  */
    /* JADX WARN: Code duplicated, block: B:252:0x05bd  */
    /* JADX WARN: Code duplicated, block: B:255:0x05ca  */
    /* JADX WARN: Code duplicated, block: B:262:0x0610  */
    /* JADX WARN: Code duplicated, block: B:265:0x0624  */
    /* JADX WARN: Code duplicated, block: B:271:0x065a  */
    /* JADX WARN: Code duplicated, block: B:277:0x069b  */
    /* JADX WARN: Code duplicated, block: B:284:0x06c3  */
    /* JADX WARN: Code duplicated, block: B:290:0x06d2  */
    /* JADX WARN: Code duplicated, block: B:301:0x06ff A[LOOP:8: B:278:0x069d->B:301:0x06ff, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:302:0x0702  */
    /* JADX WARN: Code duplicated, block: B:304:0x0708 A[PHI: r0 r20 r22
      0x0708: PHI (r0v81 java.util.Map) = (r0v83 java.util.Map), (r0v91 java.util.Map) binds: [B:317:0x0734, B:303:0x0706] A[DONT_GENERATE, DONT_INLINE]
      0x0708: PHI (r20v11 android.database.Cursor) = (r20v12 android.database.Cursor), (r20v16 android.database.Cursor) binds: [B:317:0x0734, B:303:0x0706] A[DONT_GENERATE, DONT_INLINE]
      0x0708: PHI (r22v9 com.google.android.gms.measurement.internal.zzbd) = (r22v10 com.google.android.gms.measurement.internal.zzbd), (r22v13 com.google.android.gms.measurement.internal.zzbd) binds: [B:317:0x0734, B:303:0x0706] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:323:0x0741  */
    /* JADX WARN: Code duplicated, block: B:327:0x0755  */
    /* JADX WARN: Code duplicated, block: B:333:0x0785  */
    /* JADX WARN: Code duplicated, block: B:335:0x07b2  */
    /* JADX WARN: Code duplicated, block: B:337:0x07b9  */
    /* JADX WARN: Code duplicated, block: B:340:0x07ca A[LOOP:10: B:331:0x077f->B:340:0x07ca, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:344:0x07ee  */
    /* JADX WARN: Code duplicated, block: B:348:0x0808  */
    /* JADX WARN: Code duplicated, block: B:351:0x0810  */
    /* JADX WARN: Code duplicated, block: B:354:0x081f  */
    /* JADX WARN: Code duplicated, block: B:356:0x0832  */
    /* JADX WARN: Code duplicated, block: B:360:0x086b A[Catch: all -> 0x089c, SQLiteException -> 0x08ac, LOOP:3: B:360:0x086b->B:382:0x08d1, LOOP_START, PHI: r4 r7
      0x086b: PHI (r4v38 java.util.Iterator) = (r4v31 java.util.Iterator), (r4v41 java.util.Iterator) binds: [B:359:0x0869, B:382:0x08d1] A[DONT_GENERATE, DONT_INLINE]
      0x086b: PHI (r7v50 com.google.android.gms.measurement.internal.zzic) = (r7v41 com.google.android.gms.measurement.internal.zzic), (r7v52 com.google.android.gms.measurement.internal.zzic) binds: [B:359:0x0869, B:382:0x08d1] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #18 {SQLiteException -> 0x08ac, blocks: (B:358:0x0865, B:360:0x086b, B:361:0x0870, B:363:0x0881), top: B:490:0x0865 }] */
    /* JADX WARN: Code duplicated, block: B:365:0x0891  */
    /* JADX WARN: Code duplicated, block: B:371:0x08a2  */
    /* JADX WARN: Code duplicated, block: B:382:0x08d1 A[LOOP:3: B:360:0x086b->B:382:0x08d1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:385:0x08d8  */
    /* JADX WARN: Code duplicated, block: B:398:0x0904  */
    /* JADX WARN: Code duplicated, block: B:402:0x090e  */
    /* JADX WARN: Code duplicated, block: B:404:0x0912  */
    /* JADX WARN: Code duplicated, block: B:408:0x0922  */
    /* JADX WARN: Code duplicated, block: B:412:0x0943  */
    /* JADX WARN: Code duplicated, block: B:415:0x0954  */
    /* JADX WARN: Code duplicated, block: B:417:0x0969  */
    /* JADX WARN: Code duplicated, block: B:419:0x0977  */
    /* JADX WARN: Code duplicated, block: B:421:0x0982  */
    /* JADX WARN: Code duplicated, block: B:423:0x09ad  */
    /* JADX WARN: Code duplicated, block: B:426:0x09b7  */
    /* JADX WARN: Code duplicated, block: B:439:0x0a0e  */
    /* JADX WARN: Code duplicated, block: B:440:0x0a17  */
    /* JADX WARN: Code duplicated, block: B:444:0x0a28 A[PHI: r16 r38
      0x0a28: PHI (r16v18 java.lang.String) = (r16v19 java.lang.String), (r2v40 java.lang.String) binds: [B:443:0x0a26, B:441:0x0a18] A[DONT_GENERATE, DONT_INLINE]
      0x0a28: PHI (r38v3 java.util.Map) = (r38v4 java.util.Map), (r0v125 java.util.Map) binds: [B:443:0x0a26, B:441:0x0a18] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:449:0x0a4d  */
    /* JADX WARN: Code duplicated, block: B:462:0x0ad1  */
    /* JADX WARN: Code duplicated, block: B:465:0x0ad9  */
    /* JADX WARN: Code duplicated, block: B:535:0x08cc A[EDGE_INSN: B:535:0x08cc->B:381:0x08cc BREAK  A[LOOP:3: B:360:0x086b->B:382:0x08d1], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:536:0x0934 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:538:0x0a2d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:539:0x09fa A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:542:0x0a22 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:544:0x0aa7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:546:0x0a47 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:550:0x0632 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:551:0x0649 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:553:0x061e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:554:0x061e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:556:0x06fa A[EDGE_INSN: B:556:0x06fa->B:300:0x06fa BREAK  A[LOOP:8: B:278:0x069d->B:301:0x06ff], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:558:0x0773 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:559:0x0767 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:563:0x07dc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:564:0x07e4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:569:0x04a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:571:0x0496 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:574:0x04f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:577:0x04e0 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:585:0x05d1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:588:0x0355 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:602:0x0235 A[EDGE_INSN: B:602:0x0235->B:101:0x0235 BREAK  A[LOOP:20: B:85:0x01e9->B:102:0x0239], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x0187  */
    /* JADX WARN: Code duplicated, block: B:67:0x018e  */
    /* JADX WARN: Code duplicated, block: B:74:0x01c8 A[Catch: all -> 0x01d4, SQLiteException -> 0x01d7, TRY_LEAVE, TryCatch #1 {SQLiteException -> 0x01d7, blocks: (B:72:0x01c2, B:74:0x01c8, B:83:0x01e2), top: B:470:0x01c2 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x01e2 A[Catch: all -> 0x01d4, SQLiteException -> 0x01d7, TRY_ENTER, TRY_LEAVE, TryCatch #1 {SQLiteException -> 0x01d7, blocks: (B:72:0x01c2, B:74:0x01c8, B:83:0x01e2), top: B:470:0x01c2 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v201 */
    /* JADX WARN: Type inference failed for: r0v202 */
    /* JADX WARN: Type inference failed for: r0v30, types: [androidx.collection.ArrayMap, androidx.collection.SimpleArrayMap] */
    /* JADX WARN: Type inference failed for: r0v36, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v38, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v40 */
    /* JADX WARN: Type inference failed for: r0v53 */
    /* JADX WARN: Type inference failed for: r0v54 */
    /* JADX WARN: Type inference failed for: r0v56, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v16 */
    /* JADX WARN: Type inference failed for: r18v17 */
    /* JADX WARN: Type inference failed for: r18v19 */
    /* JADX WARN: Type inference failed for: r18v2, types: [com.google.android.gms.measurement.internal.zzic] */
    /* JADX WARN: Type inference failed for: r18v25 */
    /* JADX WARN: Type inference failed for: r18v26 */
    /* JADX WARN: Type inference failed for: r18v27 */
    /* JADX WARN: Type inference failed for: r18v28, types: [com.google.android.gms.measurement.internal.zzic] */
    /* JADX WARN: Type inference failed for: r18v33 */
    /* JADX WARN: Type inference failed for: r18v34 */
    /* JADX WARN: Type inference failed for: r19v16 */
    /* JADX WARN: Type inference failed for: r19v17 */
    /* JADX WARN: Type inference failed for: r19v18 */
    /* JADX WARN: Type inference failed for: r19v19 */
    /* JADX WARN: Type inference failed for: r19v21 */
    /* JADX WARN: Type inference failed for: r19v22 */
    /* JADX WARN: Type inference failed for: r19v23 */
    /* JADX WARN: Type inference failed for: r19v24 */
    /* JADX WARN: Type inference failed for: r19v25, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r19v29 */
    /* JADX WARN: Type inference failed for: r19v30 */
    /* JADX WARN: Type inference failed for: r19v31 */
    /* JADX WARN: Type inference failed for: r19v32 */
    /* JADX WARN: Type inference failed for: r19v33 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r22v16 */
    /* JADX WARN: Type inference failed for: r29v0 */
    /* JADX WARN: Type inference failed for: r29v1 */
    /* JADX WARN: Type inference failed for: r29v2 */
    /* JADX WARN: Type inference failed for: r29v4 */
    /* JADX WARN: Type inference failed for: r3v68, types: [com.google.android.gms.measurement.internal.zzgs] */
    /* JADX WARN: Type inference failed for: r3v80, types: [androidx.collection.ArrayMap, androidx.collection.SimpleArrayMap] */
    /* JADX WARN: Type inference failed for: r4v10, types: [androidx.collection.ArrayMap] */
    /* JADX WARN: Type inference failed for: r4v11, types: [androidx.collection.SimpleArrayMap] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v36, types: [com.google.android.gms.measurement.internal.zzgs] */
    /* JADX WARN: Type inference failed for: r4v54 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v31 */
    /* JADX WARN: Type inference failed for: r5v32, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v34 */
    /* JADX WARN: Type inference failed for: r5v35 */
    /* JADX WARN: Type inference failed for: r5v36 */
    /* JADX WARN: Type inference failed for: r5v48 */
    /* JADX WARN: Type inference failed for: r5v49 */
    /* JADX WARN: Type inference failed for: r5v50 */
    /* JADX WARN: Type inference failed for: r5v51 */
    /* JADX WARN: Type inference failed for: r5v52 */
    /* JADX WARN: Type inference failed for: r5v53 */
    /* JADX WARN: Type inference failed for: r5v54 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v55 */
    /* JADX WARN: Type inference failed for: r7v56 */
    /* JADX WARN: Type inference failed for: r7v57, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v58, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v59, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v60 */
    /* JADX WARN: Type inference failed for: r7v61 */
    /* JADX WARN: Type inference failed for: r7v62 */
    /* JADX WARN: Type inference failed for: r7v63 */
    /* JADX WARN: Type inference failed for: r7v64, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v66 */
    /* JADX WARN: Type inference failed for: r7v71 */
    /* JADX WARN: Type inference failed for: r7v72 */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.lang.String] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public final ArrayList k(String str, List list, List list2, Long l, Long l2, boolean z) throws Throwable {
        boolean z2;
        boolean z3;
        String str2;
        Map map;
        Object obj;
        ?? r5;
        Cursor cursorQuery;
        ?? r18;
        String str3;
        Object obj2;
        ?? r22;
        Map map2;
        String str4;
        zzic zzicVar;
        Map map3;
        Map map4;
        Map map5;
        String str5;
        com.google.android.gms.internal.measurement.zzii zziiVar;
        BitSet bitSet;
        BitSet bitSet2;
        ArrayMap arrayMap;
        com.google.android.gms.internal.measurement.zzii zziiVar2;
        ArrayMap arrayMap2;
        List<com.google.android.gms.internal.measurement.zzff> list3;
        long jLongValue;
        Integer numValueOf;
        int i2;
        boolean z4;
        Iterator it;
        com.google.android.gms.internal.measurement.zzik zzikVar;
        Long lValueOf;
        zzaw zzawVarH0;
        String str6;
        ?? arrayMap3;
        ?? r7;
        Cursor cursorRawQuery;
        ?? r0;
        ArrayMap arrayMap4;
        Iterator it2;
        Integer num;
        com.google.android.gms.internal.measurement.zzii zziiVar3;
        List list4;
        ?? r19;
        Iterator it3;
        zzic zzicVar2;
        Integer numValueOf2;
        List arrayList;
        String str7;
        String str8;
        zzz zzzVar;
        ?? arrayMap5;
        Iterator it4;
        com.google.android.gms.internal.measurement.zzhs zzhsVar;
        com.google.android.gms.internal.measurement.zzhs zzhsVarA;
        zzbd zzbdVarQ;
        zzpg zzpgVar;
        long j2;
        String strF;
        Map map6;
        zzbd zzbdVar;
        Iterator it5;
        Integer num2;
        int iIntValue;
        Iterator it6;
        boolean z5;
        ?? r4;
        Map map7;
        Iterator it7;
        ?? r29;
        long j3;
        zzaa zzaaVar;
        ?? r210;
        int iB;
        zzy zzyVar;
        boolean z6;
        boolean zG;
        String str9;
        ArrayMap arrayMap6;
        Cursor cursor;
        String str10;
        Cursor cursor2;
        Cursor cursorQuery2;
        Integer numValueOf3;
        List list5;
        List arrayList2;
        zzpg zzpgVar2;
        ArrayList arrayList3;
        zzaw zzawVarH1;
        zzic zzicVar3;
        String str11;
        ContentValues contentValues;
        ?? arrayMap7;
        Iterator it8;
        String strC;
        Map map8;
        Iterator it9;
        Iterator it10;
        boolean zG2;
        com.google.android.gms.internal.measurement.zzfn zzfnVar;
        Integer numValueOf4;
        zzac zzacVar;
        Integer numValueOf5;
        zzic zzicVar4;
        String str12;
        ArrayMap arrayMap8;
        Cursor cursor3;
        Cursor cursorQuery3;
        Integer numValueOf6;
        List list6;
        List arrayList4;
        ArrayMap arrayMap9;
        int i3;
        ?? r6;
        Object obj3;
        ?? r8;
        ?? r110;
        ?? r111;
        List arrayList5;
        Preconditions.e(str);
        Preconditions.h(list);
        Preconditions.h(list2);
        this.d = str;
        this.f31538e = new HashSet();
        this.f31539f = new ArrayMap();
        this.g = l;
        this.f31540h = l2;
        Iterator it11 = list.iterator();
        while (true) {
            if (!it11.hasNext()) {
                z2 = false;
                break;
            }
            if ("_s".equals(((com.google.android.gms.internal.measurement.zzhs) it11.next()).F())) {
                z2 = true;
                break;
            }
        }
        zzahn.a();
        zzic zzicVar5 = this.f31850a;
        boolean zR = zzicVar5.d.r(this.d, zzfy.F0);
        zzahn.a();
        boolean zR2 = zzicVar5.d.r(this.d, zzfy.E0);
        String str13 = DbParams.TABLE_EVENTS;
        zzpg zzpgVar3 = this.f31948b;
        if (z2) {
            zzaw zzawVarH2 = zzpgVar3.h0();
            String str14 = this.d;
            zzawVarH2.h();
            zzawVarH2.g();
            Preconditions.e(str14);
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("current_session_count", (Integer) 0);
            try {
                zzawVarH2.X().update(DbParams.TABLE_EVENTS, contentValues2, "app_id = ?", new String[]{str14});
            } catch (SQLiteException e2) {
                zzawVarH2.f31850a.b().k().c("Error resetting session-scoped event counts. appId", zzgu.o(str14), e2);
            }
        }
        Map map9 = Collections.EMPTY_MAP;
        String str15 = "Failed to merge filter. appId";
        Object objO = "Database error querying filters. appId";
        String str16 = "audience_id";
        try {
            try {
                try {
                    if (zR2 && zR) {
                        zzaw zzawVarH3 = zzpgVar3.h0();
                        zzic zzicVar6 = zzawVarH3.f31850a;
                        String str17 = this.d;
                        Preconditions.e(str17);
                        z3 = z2;
                        ArrayMap arrayMap10 = new ArrayMap();
                        SQLiteDatabase sQLiteDatabaseX = zzawVarH3.X();
                        try {
                            String[] strArr = {"audience_id", DbParams.KEY_DATA};
                            ?? Query = sQLiteDatabaseX.query("event_filters", strArr, "app_id=?", new String[]{str17}, null, null, null);
                            try {
                                try {
                                    if (Query.moveToFirst()) {
                                        str2 = DbParams.KEY_DATA;
                                        Query = Query;
                                        ?? r112 = strArr;
                                        while (true) {
                                            try {
                                                try {
                                                    com.google.android.gms.internal.measurement.zzff zzffVar = (com.google.android.gms.internal.measurement.zzff) ((com.google.android.gms.internal.measurement.zzfe) zzpk.R(com.google.android.gms.internal.measurement.zzff.M(), Query.getBlob(1))).v();
                                                    if (zzffVar.G()) {
                                                        Integer numValueOf7 = Integer.valueOf(Query.getInt(0));
                                                        List list7 = (List) arrayMap10.get(numValueOf7);
                                                        if (list7 == null) {
                                                            arrayList5 = new ArrayList();
                                                            arrayMap10.put(numValueOf7, arrayList5);
                                                        } else {
                                                            arrayList5 = list7;
                                                        }
                                                        arrayList5.add(zzffVar);
                                                        r112 = Query;
                                                    } else {
                                                        r112 = Query;
                                                    }
                                                } catch (IOException e3) {
                                                    r112 = Query;
                                                    zzicVar6.b().k().c("Failed to merge filter. appId", zzgu.o(str17), e3);
                                                }
                                                try {
                                                    if (!r112.moveToNext()) {
                                                        break;
                                                    }
                                                    Query = r112;
                                                    r112 = r112;
                                                } catch (SQLiteException e4) {
                                                    e = e4;
                                                    r111 = r112;
                                                    r8 = r111;
                                                    try {
                                                        zzicVar6.b().k().c("Database error querying filters. appId", zzgu.o(str17), e);
                                                        map9 = Collections.EMPTY_MAP;
                                                        if (r8 != 0) {
                                                            r8.close();
                                                        }
                                                        map = map9;
                                                    } catch (Throwable th) {
                                                        th = th;
                                                        if (r8 != 0) {
                                                            r8.close();
                                                        }
                                                        throw th;
                                                    }
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    r110 = r112;
                                                    r8 = r110;
                                                    if (r8 != 0) {
                                                        r8.close();
                                                    }
                                                    throw th;
                                                }
                                            } catch (SQLiteException e5) {
                                                e = e5;
                                                r111 = Query;
                                                r8 = r111;
                                                zzicVar6.b().k().c("Database error querying filters. appId", zzgu.o(str17), e);
                                                map9 = Collections.EMPTY_MAP;
                                                if (r8 != 0) {
                                                    r8.close();
                                                }
                                                map = map9;
                                                zzaw zzawVarH4 = zzpgVar3.h0();
                                                obj = zzawVarH4.f31850a;
                                                r5 = this.d;
                                                zzawVarH4.h();
                                                zzawVarH4.g();
                                                Preconditions.e(r5);
                                                cursorQuery = zzawVarH4.X().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{r5}, null, null, null);
                                                if (cursorQuery.moveToFirst()) {
                                                    arrayMap9 = new ArrayMap();
                                                    r18 = obj;
                                                    r22 = r5;
                                                    while (true) {
                                                        try {
                                                            i3 = cursorQuery.getInt(0);
                                                            try {
                                                                com.google.android.gms.internal.measurement.zzii zziiVar4 = (com.google.android.gms.internal.measurement.zzii) ((com.google.android.gms.internal.measurement.zzih) zzpk.R(com.google.android.gms.internal.measurement.zzii.I(), cursorQuery.getBlob(1))).v();
                                                                Object objValueOf = Integer.valueOf(i3);
                                                                arrayMap9.put(objValueOf, zziiVar4);
                                                                str3 = str15;
                                                                obj2 = objO;
                                                                obj3 = objValueOf;
                                                                r6 = r22;
                                                            } catch (IOException e6) {
                                                                zzgs zzgsVarK = r18.b().k();
                                                                str3 = str15;
                                                                str15 = "Failed to merge filter results. appId, audienceId, error";
                                                                obj2 = objO;
                                                                try {
                                                                    objO = zzgu.o(r22);
                                                                    Integer numValueOf8 = Integer.valueOf(i3);
                                                                    zzgsVarK.d("Failed to merge filter results. appId, audienceId, error", objO, numValueOf8, e6);
                                                                    obj3 = zzgsVarK;
                                                                    r6 = numValueOf8;
                                                                } catch (SQLiteException e7) {
                                                                    e = e7;
                                                                    r22 = r22;
                                                                    r18.b().k().c("Database error querying filter results. appId", zzgu.o(r22), e);
                                                                    Map map10 = Collections.EMPTY_MAP;
                                                                    if (cursorQuery != null) {
                                                                        cursorQuery.close();
                                                                    }
                                                                    map2 = map10;
                                                                    if (map2.isEmpty()) {
                                                                        str5 = "audience_id";
                                                                        zzicVar = zzicVar5;
                                                                    } else {
                                                                        HashSet<Integer> hashSet = new HashSet(map2.keySet());
                                                                        if (z3) {
                                                                            String str18 = this.d;
                                                                            zzawVarH0 = zzpgVar3.h0();
                                                                            str6 = this.d;
                                                                            zzawVarH0.h();
                                                                            zzawVarH0.g();
                                                                            Preconditions.e(str6);
                                                                            arrayMap3 = new ArrayMap();
                                                                            try {
                                                                                try {
                                                                                    cursorRawQuery = zzawVarH0.X().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str6, str6});
                                                                                    try {
                                                                                        if (cursorRawQuery.moveToFirst()) {
                                                                                            do {
                                                                                                numValueOf2 = Integer.valueOf(cursorRawQuery.getInt(0));
                                                                                                arrayList = (List) arrayMap3.get(numValueOf2);
                                                                                                if (arrayList == null) {
                                                                                                    arrayList = new ArrayList();
                                                                                                    arrayMap3.put(numValueOf2, arrayList);
                                                                                                }
                                                                                                arrayList.add(Integer.valueOf(cursorRawQuery.getInt(1)));
                                                                                            } while (cursorRawQuery.moveToNext());
                                                                                        } else {
                                                                                            arrayMap3 = Collections.EMPTY_MAP;
                                                                                        }
                                                                                    } catch (SQLiteException e8) {
                                                                                        e = e8;
                                                                                        zzawVarH0.f31850a.b().k().c("Database error querying scoped filters. appId", zzgu.o(str6), e);
                                                                                        arrayMap3 = Collections.EMPTY_MAP;
                                                                                        r0 = arrayMap3;
                                                                                        if (cursorRawQuery != null) {
                                                                                        }
                                                                                        Preconditions.e(str18);
                                                                                        arrayMap4 = new ArrayMap();
                                                                                        if (!map2.isEmpty()) {
                                                                                            it2 = map2.keySet().iterator();
                                                                                            while (it2.hasNext()) {
                                                                                                num = (Integer) it2.next();
                                                                                                num.getClass();
                                                                                                zziiVar3 = (com.google.android.gms.internal.measurement.zzii) map2.get(num);
                                                                                                list4 = (List) r0.get(num);
                                                                                                if (list4 != null) {
                                                                                                }
                                                                                                r19 = r0;
                                                                                                it3 = it2;
                                                                                                zzicVar2 = zzicVar5;
                                                                                                arrayMap4.put(num, zziiVar3);
                                                                                                r0 = r19;
                                                                                                it2 = it3;
                                                                                                str16 = str16;
                                                                                                zzicVar5 = zzicVar2;
                                                                                            }
                                                                                        }
                                                                                        str4 = str16;
                                                                                        zzicVar = zzicVar5;
                                                                                        map3 = arrayMap4;
                                                                                        map5 = map2;
                                                                                        map4 = map3;
                                                                                        for (Integer num3 : hashSet) {
                                                                                            num3.getClass();
                                                                                            zziiVar = (com.google.android.gms.internal.measurement.zzii) map4.get(num3);
                                                                                            bitSet = new BitSet();
                                                                                            bitSet2 = new BitSet();
                                                                                            arrayMap = new ArrayMap();
                                                                                            if (zziiVar != null) {
                                                                                                for (com.google.android.gms.internal.measurement.zzhq zzhqVar : zziiVar.E()) {
                                                                                                    if (zzhqVar.A()) {
                                                                                                        com.google.android.gms.internal.measurement.zzii zziiVar5 = zziiVar;
                                                                                                        Integer numValueOf9 = Integer.valueOf(zzhqVar.B());
                                                                                                        if (zzhqVar.C()) {
                                                                                                            lValueOf = Long.valueOf(zzhqVar.D());
                                                                                                        } else {
                                                                                                            lValueOf = null;
                                                                                                        }
                                                                                                        arrayMap.put(numValueOf9, lValueOf);
                                                                                                        zziiVar = zziiVar5;
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            zziiVar2 = zziiVar;
                                                                                            arrayMap2 = new ArrayMap();
                                                                                            if (zziiVar2 != null) {
                                                                                                it = zziiVar2.G().iterator();
                                                                                                while (it.hasNext()) {
                                                                                                    zzikVar = (com.google.android.gms.internal.measurement.zzik) it.next();
                                                                                                    if (!zzikVar.A()) {
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            Map map11 = map4;
                                                                                            if (zziiVar2 != null) {
                                                                                                i2 = 0;
                                                                                                while (i2 < zziiVar2.B() * 64) {
                                                                                                    if (zzpk.L((zzaee) zziiVar2.A(), i2)) {
                                                                                                        z4 = zR;
                                                                                                        zzicVar.b().n().c("Filter already evaluated. audience ID, filter ID", num3, Integer.valueOf(i2));
                                                                                                        bitSet2.set(i2);
                                                                                                        if (zzpk.L((zzaee) zziiVar2.C(), i2)) {
                                                                                                            bitSet.set(i2);
                                                                                                        }
                                                                                                        i2++;
                                                                                                        zR = z4;
                                                                                                    } else {
                                                                                                        z4 = zR;
                                                                                                    }
                                                                                                    arrayMap.remove(Integer.valueOf(i2));
                                                                                                    i2++;
                                                                                                    zR = z4;
                                                                                                }
                                                                                            }
                                                                                            boolean z7 = zR;
                                                                                            com.google.android.gms.internal.measurement.zzii zziiVar6 = (com.google.android.gms.internal.measurement.zzii) map5.get(num3);
                                                                                            if (zR2) {
                                                                                                for (com.google.android.gms.internal.measurement.zzff zzffVar2 : list3) {
                                                                                                    int iB2 = zzffVar2.B();
                                                                                                    Integer num4 = num3;
                                                                                                    jLongValue = this.f31540h.longValue() / 1000;
                                                                                                    if (zzffVar2.J()) {
                                                                                                        jLongValue = this.g.longValue() / 1000;
                                                                                                    }
                                                                                                    numValueOf = Integer.valueOf(iB2);
                                                                                                    if (arrayMap.containsKey(numValueOf)) {
                                                                                                        arrayMap.put(numValueOf, Long.valueOf(jLongValue));
                                                                                                    }
                                                                                                    if (arrayMap2.containsKey(numValueOf)) {
                                                                                                        arrayMap2.put(numValueOf, Long.valueOf(jLongValue));
                                                                                                    }
                                                                                                    num3 = num4;
                                                                                                }
                                                                                            }
                                                                                            this.f31539f.put(num3, new zzy(this, this.d, zziiVar6, bitSet, bitSet2, arrayMap, arrayMap2));
                                                                                            map = map;
                                                                                            zR = z7;
                                                                                            zR2 = zR2;
                                                                                            str2 = str2;
                                                                                            str3 = str3;
                                                                                            map5 = map5;
                                                                                            map4 = map11;
                                                                                        }
                                                                                        str5 = str4;
                                                                                        str7 = str2;
                                                                                        String str19 = str3;
                                                                                        ?? r9 = obj2;
                                                                                        str8 = "Skipping failed audience ID";
                                                                                        if (!list.isEmpty()) {
                                                                                            zzzVar = new zzz(this);
                                                                                            arrayMap5 = new ArrayMap();
                                                                                            it4 = list.iterator();
                                                                                            while (it4.hasNext()) {
                                                                                                zzhsVar = (com.google.android.gms.internal.measurement.zzhs) it4.next();
                                                                                                zzhsVarA = zzzVar.a(zzhsVar, this.d);
                                                                                                if (zzhsVarA != null) {
                                                                                                    zzbdVarQ = zzpgVar3.h0().Q(this.d, zzhsVar, zzhsVarA.F());
                                                                                                    zzpgVar3.h0().H(str13, zzbdVarQ);
                                                                                                    if (!z) {
                                                                                                        String str20 = str13;
                                                                                                        zzpgVar = zzpgVar3;
                                                                                                        j2 = zzbdVarQ.f31594c;
                                                                                                        strF = zzhsVarA.F();
                                                                                                        map6 = (Map) arrayMap5.get(strF);
                                                                                                        if (map6 == null) {
                                                                                                            zzaw zzawVarH5 = zzpgVar.h0();
                                                                                                            zzic zzicVar7 = zzawVarH5.f31850a;
                                                                                                            str9 = this.d;
                                                                                                            zzawVarH5.h();
                                                                                                            zzawVarH5.g();
                                                                                                            Preconditions.e(str9);
                                                                                                            Preconditions.e(strF);
                                                                                                            arrayMap6 = new ArrayMap();
                                                                                                            try {
                                                                                                                try {
                                                                                                                    str10 = str9;
                                                                                                                    try {
                                                                                                                        cursorQuery2 = zzawVarH5.X().query("event_filters", new String[]{str5, str7}, "app_id=? AND event_name=?", new String[]{str9, strF}, null, null, null);
                                                                                                                        try {
                                                                                                                            try {
                                                                                                                                if (cursorQuery2.moveToFirst()) {
                                                                                                                                    zzbdVar = zzbdVarQ;
                                                                                                                                    while (true) {
                                                                                                                                        try {
                                                                                                                                            try {
                                                                                                                                                com.google.android.gms.internal.measurement.zzff zzffVar3 = (com.google.android.gms.internal.measurement.zzff) ((com.google.android.gms.internal.measurement.zzfe) zzpk.R(com.google.android.gms.internal.measurement.zzff.M(), cursorQuery2.getBlob(1))).v();
                                                                                                                                                numValueOf3 = Integer.valueOf(cursorQuery2.getInt(0));
                                                                                                                                                list5 = (List) arrayMap6.get(numValueOf3);
                                                                                                                                                if (list5 == null) {
                                                                                                                                                    cursor2 = cursorQuery2;
                                                                                                                                                    try {
                                                                                                                                                        try {
                                                                                                                                                            arrayList2 = new ArrayList();
                                                                                                                                                            arrayMap6.put(numValueOf3, arrayList2);
                                                                                                                                                        } catch (Throwable th3) {
                                                                                                                                                            th = th3;
                                                                                                                                                            cursor = cursor2;
                                                                                                                                                            if (cursor != null) {
                                                                                                                                                                cursor.close();
                                                                                                                                                            }
                                                                                                                                                            throw th;
                                                                                                                                                        }
                                                                                                                                                    } catch (SQLiteException e9) {
                                                                                                                                                        e = e9;
                                                                                                                                                        zzicVar7.b().k().c(r9, zzgu.o(str10), e);
                                                                                                                                                        map6 = Collections.EMPTY_MAP;
                                                                                                                                                        if (cursor2 != null) {
                                                                                                                                                            cursor2.close();
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                } else {
                                                                                                                                                    cursor2 = cursorQuery2;
                                                                                                                                                    arrayList2 = list5;
                                                                                                                                                }
                                                                                                                                                arrayList2.add(zzffVar3);
                                                                                                                                            } catch (IOException e10) {
                                                                                                                                                cursor2 = cursorQuery2;
                                                                                                                                                zzicVar7.b().k().c(str19, zzgu.o(str10), e10);
                                                                                                                                            }
                                                                                                                                            if (!cursor2.moveToNext()) {
                                                                                                                                                break;
                                                                                                                                            }
                                                                                                                                            cursorQuery2 = cursor2;
                                                                                                                                        } catch (SQLiteException e11) {
                                                                                                                                            e = e11;
                                                                                                                                            cursor2 = cursorQuery2;
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    cursor2.close();
                                                                                                                                    map6 = arrayMap6;
                                                                                                                                } else {
                                                                                                                                    cursor2 = cursorQuery2;
                                                                                                                                    zzbdVar = zzbdVarQ;
                                                                                                                                    map6 = Collections.EMPTY_MAP;
                                                                                                                                    cursor2.close();
                                                                                                                                }
                                                                                                                            } catch (SQLiteException e12) {
                                                                                                                                e = e12;
                                                                                                                                cursor2 = cursorQuery2;
                                                                                                                                zzbdVar = zzbdVarQ;
                                                                                                                            }
                                                                                                                            arrayMap5.put(strF, map6);
                                                                                                                        } catch (Throwable th4) {
                                                                                                                            th = th4;
                                                                                                                            cursor2 = cursorQuery2;
                                                                                                                        }
                                                                                                                    } catch (SQLiteException e13) {
                                                                                                                        e = e13;
                                                                                                                        zzbdVar = zzbdVarQ;
                                                                                                                        cursor2 = null;
                                                                                                                        zzicVar7.b().k().c(r9, zzgu.o(str10), e);
                                                                                                                        map6 = Collections.EMPTY_MAP;
                                                                                                                        if (cursor2 != null) {
                                                                                                                            cursor2.close();
                                                                                                                        }
                                                                                                                        arrayMap5.put(strF, map6);
                                                                                                                        it5 = map6.keySet().iterator();
                                                                                                                        while (it5.hasNext()) {
                                                                                                                            num2 = (Integer) it5.next();
                                                                                                                            iIntValue = num2.intValue();
                                                                                                                            if (this.f31538e.contains(num2)) {
                                                                                                                                zzicVar.b().n().b(num2, "Skipping failed audience ID");
                                                                                                                            } else {
                                                                                                                                it6 = ((List) map6.get(num2)).iterator();
                                                                                                                                z5 = true;
                                                                                                                                r4 = arrayMap5;
                                                                                                                                while (true) {
                                                                                                                                    if (!it6.hasNext()) {
                                                                                                                                        map7 = map6;
                                                                                                                                        it7 = it5;
                                                                                                                                        r29 = r4;
                                                                                                                                        j3 = j2;
                                                                                                                                        break;
                                                                                                                                    }
                                                                                                                                    map7 = map6;
                                                                                                                                    com.google.android.gms.internal.measurement.zzff zzffVar4 = (com.google.android.gms.internal.measurement.zzff) it6.next();
                                                                                                                                    it7 = it5;
                                                                                                                                    r210 = r4;
                                                                                                                                    zzaaVar = new zzaa(this, this.d, iIntValue, zzffVar4);
                                                                                                                                    Long l3 = this.g;
                                                                                                                                    Long l4 = this.f31540h;
                                                                                                                                    iB = zzffVar4.B();
                                                                                                                                    zzyVar = (zzy) this.f31539f.get(num2);
                                                                                                                                    if (zzyVar == null) {
                                                                                                                                        z6 = false;
                                                                                                                                    } else {
                                                                                                                                        z6 = zzyVar.d.get(iB);
                                                                                                                                    }
                                                                                                                                    j3 = j2;
                                                                                                                                    zG = zzaaVar.g(l3, l4, zzhsVarA, j3, zzbdVar, z6);
                                                                                                                                    if (!zG) {
                                                                                                                                        this.f31538e.add(num2);
                                                                                                                                        z5 = zG;
                                                                                                                                        r29 = r210;
                                                                                                                                        break;
                                                                                                                                    }
                                                                                                                                    l(num2).a(zzaaVar);
                                                                                                                                    z5 = zG;
                                                                                                                                    j2 = j3;
                                                                                                                                    map6 = map7;
                                                                                                                                    it5 = it7;
                                                                                                                                    r4 = r210;
                                                                                                                                }
                                                                                                                                if (!z5) {
                                                                                                                                    this.f31538e.add(num2);
                                                                                                                                }
                                                                                                                                j2 = j3;
                                                                                                                                map6 = map7;
                                                                                                                                it5 = it7;
                                                                                                                                arrayMap5 = r29;
                                                                                                                            }
                                                                                                                        }
                                                                                                                        it4 = it4;
                                                                                                                        str13 = str20;
                                                                                                                        zzpgVar3 = zzpgVar;
                                                                                                                        zzzVar = zzzVar;
                                                                                                                    }
                                                                                                                } catch (SQLiteException e14) {
                                                                                                                    e = e14;
                                                                                                                    str10 = str9;
                                                                                                                }
                                                                                                            } catch (Throwable th5) {
                                                                                                                th = th5;
                                                                                                                cursor = null;
                                                                                                            }
                                                                                                        } else {
                                                                                                            zzbdVar = zzbdVarQ;
                                                                                                        }
                                                                                                        it5 = map6.keySet().iterator();
                                                                                                        while (it5.hasNext()) {
                                                                                                            num2 = (Integer) it5.next();
                                                                                                            iIntValue = num2.intValue();
                                                                                                            if (this.f31538e.contains(num2)) {
                                                                                                                zzicVar.b().n().b(num2, "Skipping failed audience ID");
                                                                                                            } else {
                                                                                                                it6 = ((List) map6.get(num2)).iterator();
                                                                                                                z5 = true;
                                                                                                                r4 = arrayMap5;
                                                                                                                while (true) {
                                                                                                                    if (!it6.hasNext()) {
                                                                                                                        map7 = map6;
                                                                                                                        it7 = it5;
                                                                                                                        r29 = r4;
                                                                                                                        j3 = j2;
                                                                                                                        break;
                                                                                                                    }
                                                                                                                    map7 = map6;
                                                                                                                    com.google.android.gms.internal.measurement.zzff zzffVar5 = (com.google.android.gms.internal.measurement.zzff) it6.next();
                                                                                                                    it7 = it5;
                                                                                                                    r210 = r4;
                                                                                                                    zzaaVar = new zzaa(this, this.d, iIntValue, zzffVar5);
                                                                                                                    Long l5 = this.g;
                                                                                                                    Long l6 = this.f31540h;
                                                                                                                    iB = zzffVar5.B();
                                                                                                                    zzyVar = (zzy) this.f31539f.get(num2);
                                                                                                                    if (zzyVar == null) {
                                                                                                                        z6 = false;
                                                                                                                    } else {
                                                                                                                        z6 = zzyVar.d.get(iB);
                                                                                                                    }
                                                                                                                    j3 = j2;
                                                                                                                    zG = zzaaVar.g(l5, l6, zzhsVarA, j3, zzbdVar, z6);
                                                                                                                    if (!zG) {
                                                                                                                        this.f31538e.add(num2);
                                                                                                                        z5 = zG;
                                                                                                                        r29 = r210;
                                                                                                                        break;
                                                                                                                    }
                                                                                                                    l(num2).a(zzaaVar);
                                                                                                                    z5 = zG;
                                                                                                                    j2 = j3;
                                                                                                                    map6 = map7;
                                                                                                                    it5 = it7;
                                                                                                                    r4 = r210;
                                                                                                                }
                                                                                                                if (!z5) {
                                                                                                                    this.f31538e.add(num2);
                                                                                                                }
                                                                                                                j2 = j3;
                                                                                                                map6 = map7;
                                                                                                                it5 = it7;
                                                                                                                arrayMap5 = r29;
                                                                                                            }
                                                                                                        }
                                                                                                        it4 = it4;
                                                                                                        str13 = str20;
                                                                                                        zzpgVar3 = zzpgVar;
                                                                                                        zzzVar = zzzVar;
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        zzpgVar2 = zzpgVar3;
                                                                                        if (!z) {
                                                                                            return new ArrayList();
                                                                                        }
                                                                                        if (!list2.isEmpty()) {
                                                                                            arrayMap7 = new ArrayMap();
                                                                                            it8 = list2.iterator();
                                                                                            while (it8.hasNext()) {
                                                                                                com.google.android.gms.internal.measurement.zziu zziuVar = (com.google.android.gms.internal.measurement.zziu) it8.next();
                                                                                                strC = zziuVar.C();
                                                                                                map8 = (Map) arrayMap7.get(strC);
                                                                                                if (map8 == null) {
                                                                                                    zzaw zzawVarH6 = zzpgVar2.h0();
                                                                                                    zzicVar4 = zzawVarH6.f31850a;
                                                                                                    str12 = this.d;
                                                                                                    zzawVarH6.h();
                                                                                                    zzawVarH6.g();
                                                                                                    Preconditions.e(str12);
                                                                                                    Preconditions.e(strC);
                                                                                                    arrayMap8 = new ArrayMap();
                                                                                                    try {
                                                                                                        cursorQuery3 = zzawVarH6.X().query("property_filters", new String[]{str5, str7}, "app_id=? AND property_name=?", new String[]{str12, strC}, null, null, null);
                                                                                                        try {
                                                                                                            try {
                                                                                                                if (cursorQuery3.moveToFirst()) {
                                                                                                                    while (true) {
                                                                                                                        try {
                                                                                                                            com.google.android.gms.internal.measurement.zzfn zzfnVar2 = (com.google.android.gms.internal.measurement.zzfn) ((com.google.android.gms.internal.measurement.zzfm) zzpk.R(com.google.android.gms.internal.measurement.zzfn.I(), cursorQuery3.getBlob(1))).v();
                                                                                                                            numValueOf6 = Integer.valueOf(cursorQuery3.getInt(0));
                                                                                                                            list6 = (List) arrayMap8.get(numValueOf6);
                                                                                                                            if (list6 == null) {
                                                                                                                                it9 = it8;
                                                                                                                                try {
                                                                                                                                    arrayList4 = new ArrayList();
                                                                                                                                    arrayMap8.put(numValueOf6, arrayList4);
                                                                                                                                } catch (SQLiteException e15) {
                                                                                                                                    e = e15;
                                                                                                                                    zzicVar4 = zzicVar4;
                                                                                                                                    cursor3 = cursorQuery3;
                                                                                                                                    try {
                                                                                                                                        zzicVar4.b().k().c(r9, zzgu.o(str12), e);
                                                                                                                                        map8 = Collections.EMPTY_MAP;
                                                                                                                                        if (cursor3 != null) {
                                                                                                                                            cursor3.close();
                                                                                                                                        }
                                                                                                                                        arrayMap7.put(strC, map8);
                                                                                                                                        for (Integer num5 : map8.keySet()) {
                                                                                                                                            int iIntValue2 = num5.intValue();
                                                                                                                                            if (this.f31538e.contains(num5)) {
                                                                                                                                                zzicVar.b().n().b(num5, str8);
                                                                                                                                                break;
                                                                                                                                            }
                                                                                                                                            it10 = ((List) map8.get(num5)).iterator();
                                                                                                                                            zG2 = true;
                                                                                                                                            while (true) {
                                                                                                                                                if (it10.hasNext()) {
                                                                                                                                                    zzfnVar = (com.google.android.gms.internal.measurement.zzfn) it10.next();
                                                                                                                                                    if (Log.isLoggable(zzicVar.b().q(), 2)) {
                                                                                                                                                        zzgs zzgsVarN = zzicVar.b().n();
                                                                                                                                                        if (zzfnVar.A()) {
                                                                                                                                                            numValueOf5 = Integer.valueOf(zzfnVar.B());
                                                                                                                                                        } else {
                                                                                                                                                            numValueOf5 = null;
                                                                                                                                                        }
                                                                                                                                                        zzgsVarN.d("Evaluating filter. audience, filter, property", num5, numValueOf5, zzicVar.n().c(zzfnVar.C()));
                                                                                                                                                        zzicVar.b().n().b(zzpgVar2.k0().I(zzfnVar), "Filter definition");
                                                                                                                                                    }
                                                                                                                                                    if (zzfnVar.A()) {
                                                                                                                                                    }
                                                                                                                                                    zzgs zzgsVarL = zzicVar.b().l();
                                                                                                                                                    Object objO2 = zzgu.o(this.d);
                                                                                                                                                    if (zzfnVar.A()) {
                                                                                                                                                        numValueOf4 = Integer.valueOf(zzfnVar.B());
                                                                                                                                                    } else {
                                                                                                                                                        numValueOf4 = null;
                                                                                                                                                    }
                                                                                                                                                    zzgsVarL.c("Invalid property filter ID. appId, id", objO2, String.valueOf(numValueOf4));
                                                                                                                                                    this.f31538e.add(num5);
                                                                                                                                                    map8 = map8;
                                                                                                                                                    str8 = str8;
                                                                                                                                                } else {
                                                                                                                                                    map8 = map8;
                                                                                                                                                    str8 = str8;
                                                                                                                                                }
                                                                                                                                                if (!zG2) {
                                                                                                                                                    this.f31538e.add(num5);
                                                                                                                                                }
                                                                                                                                                map8 = map8;
                                                                                                                                                str8 = str8;
                                                                                                                                                l(num5).a(zzacVar);
                                                                                                                                                map8 = map8;
                                                                                                                                                str8 = str8;
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        it8 = it9;
                                                                                                                                    } catch (Throwable th6) {
                                                                                                                                        th = th6;
                                                                                                                                        if (cursor3 != null) {
                                                                                                                                            cursor3.close();
                                                                                                                                        }
                                                                                                                                        throw th;
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            } else {
                                                                                                                                it9 = it8;
                                                                                                                                arrayList4 = list6;
                                                                                                                            }
                                                                                                                            arrayList4.add(zzfnVar2);
                                                                                                                        } catch (IOException e16) {
                                                                                                                            it9 = it8;
                                                                                                                            zzicVar4.b().k().c("Failed to merge filter", zzgu.o(str12), e16);
                                                                                                                        }
                                                                                                                        try {
                                                                                                                            if (!cursorQuery3.moveToNext()) {
                                                                                                                                break;
                                                                                                                            }
                                                                                                                            it8 = it9;
                                                                                                                            zzicVar4 = zzicVar4;
                                                                                                                        } catch (SQLiteException e17) {
                                                                                                                            e = e17;
                                                                                                                            cursor3 = cursorQuery3;
                                                                                                                            zzicVar4.b().k().c(r9, zzgu.o(str12), e);
                                                                                                                            map8 = Collections.EMPTY_MAP;
                                                                                                                            if (cursor3 != null) {
                                                                                                                                cursor3.close();
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                    cursorQuery3.close();
                                                                                                                    map8 = arrayMap8;
                                                                                                                } else {
                                                                                                                    it9 = it8;
                                                                                                                    map8 = Collections.EMPTY_MAP;
                                                                                                                    cursorQuery3.close();
                                                                                                                }
                                                                                                            } catch (SQLiteException e18) {
                                                                                                                e = e18;
                                                                                                                it9 = it8;
                                                                                                            }
                                                                                                        } catch (Throwable th7) {
                                                                                                            th = th7;
                                                                                                            cursor3 = cursorQuery3;
                                                                                                            if (cursor3 != null) {
                                                                                                                cursor3.close();
                                                                                                            }
                                                                                                            throw th;
                                                                                                        }
                                                                                                    } catch (SQLiteException e19) {
                                                                                                        e = e19;
                                                                                                        it9 = it8;
                                                                                                        zzicVar4 = zzicVar4;
                                                                                                        cursor3 = null;
                                                                                                    } catch (Throwable th8) {
                                                                                                        th = th8;
                                                                                                        cursor3 = null;
                                                                                                    }
                                                                                                    arrayMap7.put(strC, map8);
                                                                                                } else {
                                                                                                    it9 = it8;
                                                                                                }
                                                                                                while (r4.hasNext()) {
                                                                                                    int iIntValue3 = num5.intValue();
                                                                                                    if (this.f31538e.contains(num5)) {
                                                                                                        zzicVar.b().n().b(num5, str8);
                                                                                                        break;
                                                                                                        break;
                                                                                                    }
                                                                                                    it10 = ((List) map8.get(num5)).iterator();
                                                                                                    zG2 = true;
                                                                                                    while (true) {
                                                                                                        if (it10.hasNext()) {
                                                                                                            zzfnVar = (com.google.android.gms.internal.measurement.zzfn) it10.next();
                                                                                                            if (Log.isLoggable(zzicVar.b().q(), 2)) {
                                                                                                                zzgs zzgsVarN2 = zzicVar.b().n();
                                                                                                                if (zzfnVar.A()) {
                                                                                                                    numValueOf5 = Integer.valueOf(zzfnVar.B());
                                                                                                                } else {
                                                                                                                    numValueOf5 = null;
                                                                                                                }
                                                                                                                zzgsVarN2.d("Evaluating filter. audience, filter, property", num5, numValueOf5, zzicVar.n().c(zzfnVar.C()));
                                                                                                                zzicVar.b().n().b(zzpgVar2.k0().I(zzfnVar), "Filter definition");
                                                                                                            }
                                                                                                            if (zzfnVar.A()) {
                                                                                                            }
                                                                                                            zzgs zzgsVarL2 = zzicVar.b().l();
                                                                                                            Object objO3 = zzgu.o(this.d);
                                                                                                            if (zzfnVar.A()) {
                                                                                                                numValueOf4 = Integer.valueOf(zzfnVar.B());
                                                                                                            } else {
                                                                                                                numValueOf4 = null;
                                                                                                            }
                                                                                                            zzgsVarL2.c("Invalid property filter ID. appId, id", objO3, String.valueOf(numValueOf4));
                                                                                                            this.f31538e.add(num5);
                                                                                                            map8 = map8;
                                                                                                            str8 = str8;
                                                                                                        } else {
                                                                                                            map8 = map8;
                                                                                                            str8 = str8;
                                                                                                        }
                                                                                                        if (!zG2) {
                                                                                                            this.f31538e.add(num5);
                                                                                                        }
                                                                                                        map8 = map8;
                                                                                                        str8 = str8;
                                                                                                        l(num5).a(zzacVar);
                                                                                                        map8 = map8;
                                                                                                        str8 = str8;
                                                                                                    }
                                                                                                }
                                                                                                it8 = it9;
                                                                                            }
                                                                                        }
                                                                                        arrayList3 = new ArrayList();
                                                                                        Set<Integer> setKeySet = this.f31539f.keySet();
                                                                                        setKeySet.removeAll(this.f31538e);
                                                                                        for (Integer num6 : setKeySet) {
                                                                                            int iIntValue4 = num6.intValue();
                                                                                            zzy zzyVar2 = (zzy) this.f31539f.get(num6);
                                                                                            Preconditions.h(zzyVar2);
                                                                                            com.google.android.gms.internal.measurement.zzhg zzhgVarB = zzyVar2.b(iIntValue4);
                                                                                            arrayList3.add(zzhgVarB);
                                                                                            zzawVarH1 = zzpgVar2.h0();
                                                                                            zzicVar3 = zzawVarH1.f31850a;
                                                                                            str11 = this.d;
                                                                                            com.google.android.gms.internal.measurement.zzii zziiVarC = zzhgVarB.C();
                                                                                            zzawVarH1.h();
                                                                                            zzawVarH1.g();
                                                                                            Preconditions.e(str11);
                                                                                            Preconditions.h(zziiVarC);
                                                                                            byte[] bArrI = zziiVarC.i();
                                                                                            contentValues = new ContentValues();
                                                                                            contentValues.put("app_id", str11);
                                                                                            contentValues.put(str5, num6);
                                                                                            contentValues.put("current_results", bArrI);
                                                                                            try {
                                                                                                try {
                                                                                                    if (zzawVarH1.X().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                                                                                                        zzicVar3.b().k().b(zzgu.o(str11), "Failed to insert filter results (got -1). appId");
                                                                                                    }
                                                                                                } catch (SQLiteException e20) {
                                                                                                    e = e20;
                                                                                                    zzicVar3.b().k().c("Error storing filter results. appId", zzgu.o(str11), e);
                                                                                                }
                                                                                            } catch (SQLiteException e21) {
                                                                                                e = e21;
                                                                                            }
                                                                                        }
                                                                                        return arrayList3;
                                                                                    }
                                                                                } catch (SQLiteException e22) {
                                                                                    e = e22;
                                                                                    cursorRawQuery = null;
                                                                                } catch (Throwable th9) {
                                                                                    th = th9;
                                                                                    r7 = 0;
                                                                                    if (r7 != 0) {
                                                                                        r7.close();
                                                                                    }
                                                                                    throw th;
                                                                                }
                                                                                cursorRawQuery.close();
                                                                                r0 = arrayMap3;
                                                                                Preconditions.e(str18);
                                                                                arrayMap4 = new ArrayMap();
                                                                                if (!map2.isEmpty()) {
                                                                                    it2 = map2.keySet().iterator();
                                                                                    while (it2.hasNext()) {
                                                                                        num = (Integer) it2.next();
                                                                                        num.getClass();
                                                                                        zziiVar3 = (com.google.android.gms.internal.measurement.zzii) map2.get(num);
                                                                                        list4 = (List) r0.get(num);
                                                                                        if (list4 != null) {
                                                                                        }
                                                                                        r19 = r0;
                                                                                        it3 = it2;
                                                                                        zzicVar2 = zzicVar5;
                                                                                        arrayMap4.put(num, zziiVar3);
                                                                                        r0 = r19;
                                                                                        it2 = it3;
                                                                                        str16 = str16;
                                                                                        zzicVar5 = zzicVar2;
                                                                                    }
                                                                                }
                                                                                str4 = str16;
                                                                                zzicVar = zzicVar5;
                                                                                map3 = arrayMap4;
                                                                            } catch (Throwable th10) {
                                                                                th = th10;
                                                                                r7 = hashSet;
                                                                            }
                                                                        } else {
                                                                            str4 = "audience_id";
                                                                            zzicVar = zzicVar5;
                                                                            map3 = map2;
                                                                        }
                                                                        map5 = map2;
                                                                        map4 = map3;
                                                                        while (r16.hasNext()) {
                                                                            num3.getClass();
                                                                            zziiVar = (com.google.android.gms.internal.measurement.zzii) map4.get(num3);
                                                                            bitSet = new BitSet();
                                                                            bitSet2 = new BitSet();
                                                                            arrayMap = new ArrayMap();
                                                                            if (zziiVar != null) {
                                                                                while (r3.hasNext()) {
                                                                                    if (zzhqVar.A()) {
                                                                                        com.google.android.gms.internal.measurement.zzii zziiVar7 = zziiVar;
                                                                                        Integer numValueOf10 = Integer.valueOf(zzhqVar.B());
                                                                                        if (zzhqVar.C()) {
                                                                                            lValueOf = Long.valueOf(zzhqVar.D());
                                                                                        } else {
                                                                                            lValueOf = null;
                                                                                        }
                                                                                        arrayMap.put(numValueOf10, lValueOf);
                                                                                        zziiVar = zziiVar7;
                                                                                    }
                                                                                }
                                                                            }
                                                                            zziiVar2 = zziiVar;
                                                                            arrayMap2 = new ArrayMap();
                                                                            if (zziiVar2 != null) {
                                                                                it = zziiVar2.G().iterator();
                                                                                while (it.hasNext()) {
                                                                                    zzikVar = (com.google.android.gms.internal.measurement.zzik) it.next();
                                                                                    if (!zzikVar.A()) {
                                                                                    }
                                                                                }
                                                                            }
                                                                            Map map12 = map4;
                                                                            if (zziiVar2 != null) {
                                                                                i2 = 0;
                                                                                while (i2 < zziiVar2.B() * 64) {
                                                                                    if (zzpk.L((zzaee) zziiVar2.A(), i2)) {
                                                                                        z4 = zR;
                                                                                        zzicVar.b().n().c("Filter already evaluated. audience ID, filter ID", num3, Integer.valueOf(i2));
                                                                                        bitSet2.set(i2);
                                                                                        if (zzpk.L((zzaee) zziiVar2.C(), i2)) {
                                                                                            bitSet.set(i2);
                                                                                        }
                                                                                        i2++;
                                                                                        zR = z4;
                                                                                    } else {
                                                                                        z4 = zR;
                                                                                    }
                                                                                    arrayMap.remove(Integer.valueOf(i2));
                                                                                    i2++;
                                                                                    zR = z4;
                                                                                }
                                                                            }
                                                                            boolean z8 = zR;
                                                                            com.google.android.gms.internal.measurement.zzii zziiVar8 = (com.google.android.gms.internal.measurement.zzii) map5.get(num3);
                                                                            if (zR2) {
                                                                                while (r2.hasNext()) {
                                                                                    int iB3 = zzffVar2.B();
                                                                                    Integer num7 = num3;
                                                                                    jLongValue = this.f31540h.longValue() / 1000;
                                                                                    if (zzffVar2.J()) {
                                                                                        jLongValue = this.g.longValue() / 1000;
                                                                                    }
                                                                                    numValueOf = Integer.valueOf(iB3);
                                                                                    if (arrayMap.containsKey(numValueOf)) {
                                                                                        arrayMap.put(numValueOf, Long.valueOf(jLongValue));
                                                                                    }
                                                                                    if (arrayMap2.containsKey(numValueOf)) {
                                                                                        arrayMap2.put(numValueOf, Long.valueOf(jLongValue));
                                                                                    }
                                                                                    num3 = num7;
                                                                                }
                                                                            }
                                                                            this.f31539f.put(num3, new zzy(this, this.d, zziiVar8, bitSet, bitSet2, arrayMap, arrayMap2));
                                                                            map = map;
                                                                            zR = z8;
                                                                            zR2 = zR2;
                                                                            str2 = str2;
                                                                            str3 = str3;
                                                                            map5 = map5;
                                                                            map4 = map12;
                                                                        }
                                                                        str5 = str4;
                                                                    }
                                                                    str7 = str2;
                                                                    String str110 = str3;
                                                                    ?? r10 = obj2;
                                                                    str8 = "Skipping failed audience ID";
                                                                    if (!list.isEmpty()) {
                                                                        zzzVar = new zzz(this);
                                                                        arrayMap5 = new ArrayMap();
                                                                        it4 = list.iterator();
                                                                        while (it4.hasNext()) {
                                                                            zzhsVar = (com.google.android.gms.internal.measurement.zzhs) it4.next();
                                                                            zzhsVarA = zzzVar.a(zzhsVar, this.d);
                                                                            if (zzhsVarA != null) {
                                                                                zzbdVarQ = zzpgVar3.h0().Q(this.d, zzhsVar, zzhsVarA.F());
                                                                                zzpgVar3.h0().H(str13, zzbdVarQ);
                                                                                if (!z) {
                                                                                    String str21 = str13;
                                                                                    zzpgVar = zzpgVar3;
                                                                                    j2 = zzbdVarQ.f31594c;
                                                                                    strF = zzhsVarA.F();
                                                                                    map6 = (Map) arrayMap5.get(strF);
                                                                                    if (map6 == null) {
                                                                                        zzaw zzawVarH7 = zzpgVar.h0();
                                                                                        zzic zzicVar8 = zzawVarH7.f31850a;
                                                                                        str9 = this.d;
                                                                                        zzawVarH7.h();
                                                                                        zzawVarH7.g();
                                                                                        Preconditions.e(str9);
                                                                                        Preconditions.e(strF);
                                                                                        arrayMap6 = new ArrayMap();
                                                                                        str10 = str9;
                                                                                        cursorQuery2 = zzawVarH7.X().query("event_filters", new String[]{str5, str7}, "app_id=? AND event_name=?", new String[]{str9, strF}, null, null, null);
                                                                                        if (cursorQuery2.moveToFirst()) {
                                                                                            zzbdVar = zzbdVarQ;
                                                                                            while (true) {
                                                                                                com.google.android.gms.internal.measurement.zzff zzffVar6 = (com.google.android.gms.internal.measurement.zzff) ((com.google.android.gms.internal.measurement.zzfe) zzpk.R(com.google.android.gms.internal.measurement.zzff.M(), cursorQuery2.getBlob(1))).v();
                                                                                                numValueOf3 = Integer.valueOf(cursorQuery2.getInt(0));
                                                                                                list5 = (List) arrayMap6.get(numValueOf3);
                                                                                                if (list5 == null) {
                                                                                                    cursor2 = cursorQuery2;
                                                                                                    arrayList2 = new ArrayList();
                                                                                                    arrayMap6.put(numValueOf3, arrayList2);
                                                                                                } else {
                                                                                                    cursor2 = cursorQuery2;
                                                                                                    arrayList2 = list5;
                                                                                                }
                                                                                                arrayList2.add(zzffVar6);
                                                                                                if (!cursor2.moveToNext()) {
                                                                                                    break;
                                                                                                    break;
                                                                                                }
                                                                                                cursorQuery2 = cursor2;
                                                                                            }
                                                                                            cursor2.close();
                                                                                            map6 = arrayMap6;
                                                                                        } else {
                                                                                            cursor2 = cursorQuery2;
                                                                                            zzbdVar = zzbdVarQ;
                                                                                            map6 = Collections.EMPTY_MAP;
                                                                                            cursor2.close();
                                                                                        }
                                                                                        arrayMap5.put(strF, map6);
                                                                                    } else {
                                                                                        zzbdVar = zzbdVarQ;
                                                                                    }
                                                                                    it5 = map6.keySet().iterator();
                                                                                    while (it5.hasNext()) {
                                                                                        num2 = (Integer) it5.next();
                                                                                        iIntValue = num2.intValue();
                                                                                        if (this.f31538e.contains(num2)) {
                                                                                            zzicVar.b().n().b(num2, "Skipping failed audience ID");
                                                                                        } else {
                                                                                            it6 = ((List) map6.get(num2)).iterator();
                                                                                            z5 = true;
                                                                                            r4 = arrayMap5;
                                                                                            while (true) {
                                                                                                if (!it6.hasNext()) {
                                                                                                    map7 = map6;
                                                                                                    it7 = it5;
                                                                                                    r29 = r4;
                                                                                                    j3 = j2;
                                                                                                    break;
                                                                                                }
                                                                                                map7 = map6;
                                                                                                com.google.android.gms.internal.measurement.zzff zzffVar7 = (com.google.android.gms.internal.measurement.zzff) it6.next();
                                                                                                it7 = it5;
                                                                                                r210 = r4;
                                                                                                zzaaVar = new zzaa(this, this.d, iIntValue, zzffVar7);
                                                                                                Long l7 = this.g;
                                                                                                Long l8 = this.f31540h;
                                                                                                iB = zzffVar7.B();
                                                                                                zzyVar = (zzy) this.f31539f.get(num2);
                                                                                                if (zzyVar == null) {
                                                                                                    z6 = false;
                                                                                                } else {
                                                                                                    z6 = zzyVar.d.get(iB);
                                                                                                }
                                                                                                j3 = j2;
                                                                                                zG = zzaaVar.g(l7, l8, zzhsVarA, j3, zzbdVar, z6);
                                                                                                if (!zG) {
                                                                                                    this.f31538e.add(num2);
                                                                                                    z5 = zG;
                                                                                                    r29 = r210;
                                                                                                    break;
                                                                                                }
                                                                                                l(num2).a(zzaaVar);
                                                                                                z5 = zG;
                                                                                                j2 = j3;
                                                                                                map6 = map7;
                                                                                                it5 = it7;
                                                                                                r4 = r210;
                                                                                            }
                                                                                            if (!z5) {
                                                                                                this.f31538e.add(num2);
                                                                                            }
                                                                                            j2 = j3;
                                                                                            map6 = map7;
                                                                                            it5 = it7;
                                                                                            arrayMap5 = r29;
                                                                                        }
                                                                                    }
                                                                                    it4 = it4;
                                                                                    str13 = str21;
                                                                                    zzpgVar3 = zzpgVar;
                                                                                    zzzVar = zzzVar;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    zzpgVar2 = zzpgVar3;
                                                                    if (!z) {
                                                                        return new ArrayList();
                                                                    }
                                                                    if (!list2.isEmpty()) {
                                                                        arrayMap7 = new ArrayMap();
                                                                        it8 = list2.iterator();
                                                                        while (it8.hasNext()) {
                                                                            com.google.android.gms.internal.measurement.zziu zziuVar2 = (com.google.android.gms.internal.measurement.zziu) it8.next();
                                                                            strC = zziuVar2.C();
                                                                            map8 = (Map) arrayMap7.get(strC);
                                                                            if (map8 == null) {
                                                                                zzaw zzawVarH8 = zzpgVar2.h0();
                                                                                zzicVar4 = zzawVarH8.f31850a;
                                                                                str12 = this.d;
                                                                                zzawVarH8.h();
                                                                                zzawVarH8.g();
                                                                                Preconditions.e(str12);
                                                                                Preconditions.e(strC);
                                                                                arrayMap8 = new ArrayMap();
                                                                                cursorQuery3 = zzawVarH8.X().query("property_filters", new String[]{str5, str7}, "app_id=? AND property_name=?", new String[]{str12, strC}, null, null, null);
                                                                                if (cursorQuery3.moveToFirst()) {
                                                                                    while (true) {
                                                                                        com.google.android.gms.internal.measurement.zzfn zzfnVar3 = (com.google.android.gms.internal.measurement.zzfn) ((com.google.android.gms.internal.measurement.zzfm) zzpk.R(com.google.android.gms.internal.measurement.zzfn.I(), cursorQuery3.getBlob(1))).v();
                                                                                        numValueOf6 = Integer.valueOf(cursorQuery3.getInt(0));
                                                                                        list6 = (List) arrayMap8.get(numValueOf6);
                                                                                        if (list6 == null) {
                                                                                            it9 = it8;
                                                                                            arrayList4 = new ArrayList();
                                                                                            arrayMap8.put(numValueOf6, arrayList4);
                                                                                        } else {
                                                                                            it9 = it8;
                                                                                            arrayList4 = list6;
                                                                                        }
                                                                                        arrayList4.add(zzfnVar3);
                                                                                        if (!cursorQuery3.moveToNext()) {
                                                                                            break;
                                                                                            break;
                                                                                        }
                                                                                        it8 = it9;
                                                                                        zzicVar4 = zzicVar4;
                                                                                    }
                                                                                    cursorQuery3.close();
                                                                                    map8 = arrayMap8;
                                                                                } else {
                                                                                    it9 = it8;
                                                                                    map8 = Collections.EMPTY_MAP;
                                                                                    cursorQuery3.close();
                                                                                }
                                                                                arrayMap7.put(strC, map8);
                                                                            } else {
                                                                                it9 = it8;
                                                                            }
                                                                            while (r4.hasNext()) {
                                                                                int iIntValue5 = num5.intValue();
                                                                                if (this.f31538e.contains(num5)) {
                                                                                    zzicVar.b().n().b(num5, str8);
                                                                                    break;
                                                                                    break;
                                                                                }
                                                                                it10 = ((List) map8.get(num5)).iterator();
                                                                                zG2 = true;
                                                                                while (true) {
                                                                                    if (it10.hasNext()) {
                                                                                        zzfnVar = (com.google.android.gms.internal.measurement.zzfn) it10.next();
                                                                                        if (Log.isLoggable(zzicVar.b().q(), 2)) {
                                                                                            zzgs zzgsVarN3 = zzicVar.b().n();
                                                                                            if (zzfnVar.A()) {
                                                                                                numValueOf5 = Integer.valueOf(zzfnVar.B());
                                                                                            } else {
                                                                                                numValueOf5 = null;
                                                                                            }
                                                                                            zzgsVarN3.d("Evaluating filter. audience, filter, property", num5, numValueOf5, zzicVar.n().c(zzfnVar.C()));
                                                                                            zzicVar.b().n().b(zzpgVar2.k0().I(zzfnVar), "Filter definition");
                                                                                        }
                                                                                        if (zzfnVar.A()) {
                                                                                        }
                                                                                        zzgs zzgsVarL3 = zzicVar.b().l();
                                                                                        Object objO4 = zzgu.o(this.d);
                                                                                        if (zzfnVar.A()) {
                                                                                            numValueOf4 = Integer.valueOf(zzfnVar.B());
                                                                                        } else {
                                                                                            numValueOf4 = null;
                                                                                        }
                                                                                        zzgsVarL3.c("Invalid property filter ID. appId, id", objO4, String.valueOf(numValueOf4));
                                                                                        this.f31538e.add(num5);
                                                                                        map8 = map8;
                                                                                        str8 = str8;
                                                                                    } else {
                                                                                        map8 = map8;
                                                                                        str8 = str8;
                                                                                    }
                                                                                    if (!zG2) {
                                                                                        this.f31538e.add(num5);
                                                                                    }
                                                                                    map8 = map8;
                                                                                    str8 = str8;
                                                                                    l(num5).a(zzacVar);
                                                                                    map8 = map8;
                                                                                    str8 = str8;
                                                                                }
                                                                            }
                                                                            it8 = it9;
                                                                        }
                                                                    }
                                                                    arrayList3 = new ArrayList();
                                                                    Set<Integer> setKeySet2 = this.f31539f.keySet();
                                                                    setKeySet2.removeAll(this.f31538e);
                                                                    while (r3.hasNext()) {
                                                                        int iIntValue6 = num6.intValue();
                                                                        zzy zzyVar3 = (zzy) this.f31539f.get(num6);
                                                                        Preconditions.h(zzyVar3);
                                                                        com.google.android.gms.internal.measurement.zzhg zzhgVarB2 = zzyVar3.b(iIntValue6);
                                                                        arrayList3.add(zzhgVarB2);
                                                                        zzawVarH1 = zzpgVar2.h0();
                                                                        zzicVar3 = zzawVarH1.f31850a;
                                                                        str11 = this.d;
                                                                        com.google.android.gms.internal.measurement.zzii zziiVarC2 = zzhgVarB2.C();
                                                                        zzawVarH1.h();
                                                                        zzawVarH1.g();
                                                                        Preconditions.e(str11);
                                                                        Preconditions.h(zziiVarC2);
                                                                        byte[] bArrI2 = zziiVarC2.i();
                                                                        contentValues = new ContentValues();
                                                                        contentValues.put("app_id", str11);
                                                                        contentValues.put(str5, num6);
                                                                        contentValues.put("current_results", bArrI2);
                                                                        if (zzawVarH1.X().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                                                                            zzicVar3.b().k().b(zzgu.o(str11), "Failed to insert filter results (got -1). appId");
                                                                        }
                                                                    }
                                                                    return arrayList3;
                                                                }
                                                            }
                                                            try {
                                                                if (!cursorQuery.moveToNext()) {
                                                                    break;
                                                                }
                                                                str15 = str3;
                                                                objO = obj2;
                                                                r22 = r22;
                                                            } catch (SQLiteException e23) {
                                                                e = e23;
                                                                r18.b().k().c("Database error querying filter results. appId", zzgu.o(r22), e);
                                                                Map map13 = Collections.EMPTY_MAP;
                                                                if (cursorQuery != null) {
                                                                    cursorQuery.close();
                                                                }
                                                                map2 = map13;
                                                            }
                                                        } catch (SQLiteException e24) {
                                                            e = e24;
                                                            r22 = r22;
                                                            r18 = r18;
                                                            str3 = str15;
                                                            obj2 = objO;
                                                            r22 = r22;
                                                            r18.b().k().c("Database error querying filter results. appId", zzgu.o(r22), e);
                                                            Map map14 = Collections.EMPTY_MAP;
                                                            if (cursorQuery != null) {
                                                                cursorQuery.close();
                                                            }
                                                            map2 = map14;
                                                            if (map2.isEmpty()) {
                                                                str5 = "audience_id";
                                                                zzicVar = zzicVar5;
                                                            } else {
                                                                HashSet<Integer> hashSet2 = new HashSet(map2.keySet());
                                                                if (z3) {
                                                                    String str111 = this.d;
                                                                    zzawVarH0 = zzpgVar3.h0();
                                                                    str6 = this.d;
                                                                    zzawVarH0.h();
                                                                    zzawVarH0.g();
                                                                    Preconditions.e(str6);
                                                                    arrayMap3 = new ArrayMap();
                                                                    cursorRawQuery = zzawVarH0.X().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str6, str6});
                                                                    if (cursorRawQuery.moveToFirst()) {
                                                                        do {
                                                                            numValueOf2 = Integer.valueOf(cursorRawQuery.getInt(0));
                                                                            arrayList = (List) arrayMap3.get(numValueOf2);
                                                                            if (arrayList == null) {
                                                                                arrayList = new ArrayList();
                                                                                arrayMap3.put(numValueOf2, arrayList);
                                                                            }
                                                                            arrayList.add(Integer.valueOf(cursorRawQuery.getInt(1)));
                                                                        } while (cursorRawQuery.moveToNext());
                                                                    } else {
                                                                        arrayMap3 = Collections.EMPTY_MAP;
                                                                    }
                                                                    cursorRawQuery.close();
                                                                    r0 = arrayMap3;
                                                                    Preconditions.e(str111);
                                                                    arrayMap4 = new ArrayMap();
                                                                    if (!map2.isEmpty()) {
                                                                        it2 = map2.keySet().iterator();
                                                                        while (it2.hasNext()) {
                                                                            num = (Integer) it2.next();
                                                                            num.getClass();
                                                                            zziiVar3 = (com.google.android.gms.internal.measurement.zzii) map2.get(num);
                                                                            list4 = (List) r0.get(num);
                                                                            if (list4 != null) {
                                                                            }
                                                                            r19 = r0;
                                                                            it3 = it2;
                                                                            zzicVar2 = zzicVar5;
                                                                            arrayMap4.put(num, zziiVar3);
                                                                            r0 = r19;
                                                                            it2 = it3;
                                                                            str16 = str16;
                                                                            zzicVar5 = zzicVar2;
                                                                        }
                                                                    }
                                                                    str4 = str16;
                                                                    zzicVar = zzicVar5;
                                                                    map3 = arrayMap4;
                                                                } else {
                                                                    str4 = "audience_id";
                                                                    zzicVar = zzicVar5;
                                                                    map3 = map2;
                                                                }
                                                                map5 = map2;
                                                                map4 = map3;
                                                                while (r16.hasNext()) {
                                                                    num3.getClass();
                                                                    zziiVar = (com.google.android.gms.internal.measurement.zzii) map4.get(num3);
                                                                    bitSet = new BitSet();
                                                                    bitSet2 = new BitSet();
                                                                    arrayMap = new ArrayMap();
                                                                    if (zziiVar != null) {
                                                                        while (r3.hasNext()) {
                                                                            if (zzhqVar.A()) {
                                                                                com.google.android.gms.internal.measurement.zzii zziiVar9 = zziiVar;
                                                                                Integer numValueOf11 = Integer.valueOf(zzhqVar.B());
                                                                                if (zzhqVar.C()) {
                                                                                    lValueOf = Long.valueOf(zzhqVar.D());
                                                                                } else {
                                                                                    lValueOf = null;
                                                                                }
                                                                                arrayMap.put(numValueOf11, lValueOf);
                                                                                zziiVar = zziiVar9;
                                                                            }
                                                                        }
                                                                    }
                                                                    zziiVar2 = zziiVar;
                                                                    arrayMap2 = new ArrayMap();
                                                                    if (zziiVar2 != null) {
                                                                        it = zziiVar2.G().iterator();
                                                                        while (it.hasNext()) {
                                                                            zzikVar = (com.google.android.gms.internal.measurement.zzik) it.next();
                                                                            if (!zzikVar.A()) {
                                                                            }
                                                                        }
                                                                    }
                                                                    Map map15 = map4;
                                                                    if (zziiVar2 != null) {
                                                                        i2 = 0;
                                                                        while (i2 < zziiVar2.B() * 64) {
                                                                            if (zzpk.L((zzaee) zziiVar2.A(), i2)) {
                                                                                z4 = zR;
                                                                                zzicVar.b().n().c("Filter already evaluated. audience ID, filter ID", num3, Integer.valueOf(i2));
                                                                                bitSet2.set(i2);
                                                                                if (zzpk.L((zzaee) zziiVar2.C(), i2)) {
                                                                                    bitSet.set(i2);
                                                                                }
                                                                                i2++;
                                                                                zR = z4;
                                                                            } else {
                                                                                z4 = zR;
                                                                            }
                                                                            arrayMap.remove(Integer.valueOf(i2));
                                                                            i2++;
                                                                            zR = z4;
                                                                        }
                                                                    }
                                                                    boolean z9 = zR;
                                                                    com.google.android.gms.internal.measurement.zzii zziiVar10 = (com.google.android.gms.internal.measurement.zzii) map5.get(num3);
                                                                    if (zR2) {
                                                                        while (r2.hasNext()) {
                                                                            int iB4 = zzffVar2.B();
                                                                            Integer num8 = num3;
                                                                            jLongValue = this.f31540h.longValue() / 1000;
                                                                            if (zzffVar2.J()) {
                                                                                jLongValue = this.g.longValue() / 1000;
                                                                            }
                                                                            numValueOf = Integer.valueOf(iB4);
                                                                            if (arrayMap.containsKey(numValueOf)) {
                                                                                arrayMap.put(numValueOf, Long.valueOf(jLongValue));
                                                                            }
                                                                            if (arrayMap2.containsKey(numValueOf)) {
                                                                                arrayMap2.put(numValueOf, Long.valueOf(jLongValue));
                                                                            }
                                                                            num3 = num8;
                                                                        }
                                                                    }
                                                                    this.f31539f.put(num3, new zzy(this, this.d, zziiVar10, bitSet, bitSet2, arrayMap, arrayMap2));
                                                                    map = map;
                                                                    zR = z9;
                                                                    zR2 = zR2;
                                                                    str2 = str2;
                                                                    str3 = str3;
                                                                    map5 = map5;
                                                                    map4 = map15;
                                                                }
                                                                str5 = str4;
                                                            }
                                                            str7 = str2;
                                                            String str112 = str3;
                                                            ?? r11 = obj2;
                                                            str8 = "Skipping failed audience ID";
                                                            if (!list.isEmpty()) {
                                                                zzzVar = new zzz(this);
                                                                arrayMap5 = new ArrayMap();
                                                                it4 = list.iterator();
                                                                while (it4.hasNext()) {
                                                                    zzhsVar = (com.google.android.gms.internal.measurement.zzhs) it4.next();
                                                                    zzhsVarA = zzzVar.a(zzhsVar, this.d);
                                                                    if (zzhsVarA != null) {
                                                                        zzbdVarQ = zzpgVar3.h0().Q(this.d, zzhsVar, zzhsVarA.F());
                                                                        zzpgVar3.h0().H(str13, zzbdVarQ);
                                                                        if (!z) {
                                                                            String str22 = str13;
                                                                            zzpgVar = zzpgVar3;
                                                                            j2 = zzbdVarQ.f31594c;
                                                                            strF = zzhsVarA.F();
                                                                            map6 = (Map) arrayMap5.get(strF);
                                                                            if (map6 == null) {
                                                                                zzaw zzawVarH9 = zzpgVar.h0();
                                                                                zzic zzicVar9 = zzawVarH9.f31850a;
                                                                                str9 = this.d;
                                                                                zzawVarH9.h();
                                                                                zzawVarH9.g();
                                                                                Preconditions.e(str9);
                                                                                Preconditions.e(strF);
                                                                                arrayMap6 = new ArrayMap();
                                                                                str10 = str9;
                                                                                cursorQuery2 = zzawVarH9.X().query("event_filters", new String[]{str5, str7}, "app_id=? AND event_name=?", new String[]{str9, strF}, null, null, null);
                                                                                if (cursorQuery2.moveToFirst()) {
                                                                                    zzbdVar = zzbdVarQ;
                                                                                    while (true) {
                                                                                        com.google.android.gms.internal.measurement.zzff zzffVar8 = (com.google.android.gms.internal.measurement.zzff) ((com.google.android.gms.internal.measurement.zzfe) zzpk.R(com.google.android.gms.internal.measurement.zzff.M(), cursorQuery2.getBlob(1))).v();
                                                                                        numValueOf3 = Integer.valueOf(cursorQuery2.getInt(0));
                                                                                        list5 = (List) arrayMap6.get(numValueOf3);
                                                                                        if (list5 == null) {
                                                                                            cursor2 = cursorQuery2;
                                                                                            arrayList2 = new ArrayList();
                                                                                            arrayMap6.put(numValueOf3, arrayList2);
                                                                                        } else {
                                                                                            cursor2 = cursorQuery2;
                                                                                            arrayList2 = list5;
                                                                                        }
                                                                                        arrayList2.add(zzffVar8);
                                                                                        if (!cursor2.moveToNext()) {
                                                                                            break;
                                                                                            break;
                                                                                        }
                                                                                        cursorQuery2 = cursor2;
                                                                                    }
                                                                                    cursor2.close();
                                                                                    map6 = arrayMap6;
                                                                                } else {
                                                                                    cursor2 = cursorQuery2;
                                                                                    zzbdVar = zzbdVarQ;
                                                                                    map6 = Collections.EMPTY_MAP;
                                                                                    cursor2.close();
                                                                                }
                                                                                arrayMap5.put(strF, map6);
                                                                            } else {
                                                                                zzbdVar = zzbdVarQ;
                                                                            }
                                                                            it5 = map6.keySet().iterator();
                                                                            while (it5.hasNext()) {
                                                                                num2 = (Integer) it5.next();
                                                                                iIntValue = num2.intValue();
                                                                                if (this.f31538e.contains(num2)) {
                                                                                    zzicVar.b().n().b(num2, "Skipping failed audience ID");
                                                                                } else {
                                                                                    it6 = ((List) map6.get(num2)).iterator();
                                                                                    z5 = true;
                                                                                    r4 = arrayMap5;
                                                                                    while (true) {
                                                                                        if (!it6.hasNext()) {
                                                                                            map7 = map6;
                                                                                            it7 = it5;
                                                                                            r29 = r4;
                                                                                            j3 = j2;
                                                                                            break;
                                                                                        }
                                                                                        map7 = map6;
                                                                                        com.google.android.gms.internal.measurement.zzff zzffVar9 = (com.google.android.gms.internal.measurement.zzff) it6.next();
                                                                                        it7 = it5;
                                                                                        r210 = r4;
                                                                                        zzaaVar = new zzaa(this, this.d, iIntValue, zzffVar9);
                                                                                        Long l9 = this.g;
                                                                                        Long l10 = this.f31540h;
                                                                                        iB = zzffVar9.B();
                                                                                        zzyVar = (zzy) this.f31539f.get(num2);
                                                                                        if (zzyVar == null) {
                                                                                            z6 = false;
                                                                                        } else {
                                                                                            z6 = zzyVar.d.get(iB);
                                                                                        }
                                                                                        j3 = j2;
                                                                                        zG = zzaaVar.g(l9, l10, zzhsVarA, j3, zzbdVar, z6);
                                                                                        if (!zG) {
                                                                                            this.f31538e.add(num2);
                                                                                            z5 = zG;
                                                                                            r29 = r210;
                                                                                            break;
                                                                                        }
                                                                                        l(num2).a(zzaaVar);
                                                                                        z5 = zG;
                                                                                        j2 = j3;
                                                                                        map6 = map7;
                                                                                        it5 = it7;
                                                                                        r4 = r210;
                                                                                    }
                                                                                    if (!z5) {
                                                                                        this.f31538e.add(num2);
                                                                                    }
                                                                                    j2 = j3;
                                                                                    map6 = map7;
                                                                                    it5 = it7;
                                                                                    arrayMap5 = r29;
                                                                                }
                                                                            }
                                                                            it4 = it4;
                                                                            str13 = str22;
                                                                            zzpgVar3 = zzpgVar;
                                                                            zzzVar = zzzVar;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            zzpgVar2 = zzpgVar3;
                                                            if (!z) {
                                                                return new ArrayList();
                                                            }
                                                            if (!list2.isEmpty()) {
                                                                arrayMap7 = new ArrayMap();
                                                                it8 = list2.iterator();
                                                                while (it8.hasNext()) {
                                                                    com.google.android.gms.internal.measurement.zziu zziuVar3 = (com.google.android.gms.internal.measurement.zziu) it8.next();
                                                                    strC = zziuVar3.C();
                                                                    map8 = (Map) arrayMap7.get(strC);
                                                                    if (map8 == null) {
                                                                        zzaw zzawVarH10 = zzpgVar2.h0();
                                                                        zzicVar4 = zzawVarH10.f31850a;
                                                                        str12 = this.d;
                                                                        zzawVarH10.h();
                                                                        zzawVarH10.g();
                                                                        Preconditions.e(str12);
                                                                        Preconditions.e(strC);
                                                                        arrayMap8 = new ArrayMap();
                                                                        cursorQuery3 = zzawVarH10.X().query("property_filters", new String[]{str5, str7}, "app_id=? AND property_name=?", new String[]{str12, strC}, null, null, null);
                                                                        if (cursorQuery3.moveToFirst()) {
                                                                            while (true) {
                                                                                com.google.android.gms.internal.measurement.zzfn zzfnVar4 = (com.google.android.gms.internal.measurement.zzfn) ((com.google.android.gms.internal.measurement.zzfm) zzpk.R(com.google.android.gms.internal.measurement.zzfn.I(), cursorQuery3.getBlob(1))).v();
                                                                                numValueOf6 = Integer.valueOf(cursorQuery3.getInt(0));
                                                                                list6 = (List) arrayMap8.get(numValueOf6);
                                                                                if (list6 == null) {
                                                                                    it9 = it8;
                                                                                    arrayList4 = new ArrayList();
                                                                                    arrayMap8.put(numValueOf6, arrayList4);
                                                                                } else {
                                                                                    it9 = it8;
                                                                                    arrayList4 = list6;
                                                                                }
                                                                                arrayList4.add(zzfnVar4);
                                                                                if (!cursorQuery3.moveToNext()) {
                                                                                    break;
                                                                                    break;
                                                                                }
                                                                                it8 = it9;
                                                                                zzicVar4 = zzicVar4;
                                                                            }
                                                                            cursorQuery3.close();
                                                                            map8 = arrayMap8;
                                                                        } else {
                                                                            it9 = it8;
                                                                            map8 = Collections.EMPTY_MAP;
                                                                            cursorQuery3.close();
                                                                        }
                                                                        arrayMap7.put(strC, map8);
                                                                    } else {
                                                                        it9 = it8;
                                                                    }
                                                                    while (r4.hasNext()) {
                                                                        int iIntValue7 = num5.intValue();
                                                                        if (this.f31538e.contains(num5)) {
                                                                            zzicVar.b().n().b(num5, str8);
                                                                            break;
                                                                            break;
                                                                        }
                                                                        it10 = ((List) map8.get(num5)).iterator();
                                                                        zG2 = true;
                                                                        while (true) {
                                                                            if (it10.hasNext()) {
                                                                                zzfnVar = (com.google.android.gms.internal.measurement.zzfn) it10.next();
                                                                                if (Log.isLoggable(zzicVar.b().q(), 2)) {
                                                                                    zzgs zzgsVarN4 = zzicVar.b().n();
                                                                                    if (zzfnVar.A()) {
                                                                                        numValueOf5 = Integer.valueOf(zzfnVar.B());
                                                                                    } else {
                                                                                        numValueOf5 = null;
                                                                                    }
                                                                                    zzgsVarN4.d("Evaluating filter. audience, filter, property", num5, numValueOf5, zzicVar.n().c(zzfnVar.C()));
                                                                                    zzicVar.b().n().b(zzpgVar2.k0().I(zzfnVar), "Filter definition");
                                                                                }
                                                                                if (zzfnVar.A()) {
                                                                                }
                                                                                zzgs zzgsVarL4 = zzicVar.b().l();
                                                                                Object objO5 = zzgu.o(this.d);
                                                                                if (zzfnVar.A()) {
                                                                                    numValueOf4 = Integer.valueOf(zzfnVar.B());
                                                                                } else {
                                                                                    numValueOf4 = null;
                                                                                }
                                                                                zzgsVarL4.c("Invalid property filter ID. appId, id", objO5, String.valueOf(numValueOf4));
                                                                                this.f31538e.add(num5);
                                                                                map8 = map8;
                                                                                str8 = str8;
                                                                            } else {
                                                                                map8 = map8;
                                                                                str8 = str8;
                                                                            }
                                                                            if (!zG2) {
                                                                                this.f31538e.add(num5);
                                                                            }
                                                                            map8 = map8;
                                                                            str8 = str8;
                                                                            l(num5).a(zzacVar);
                                                                            map8 = map8;
                                                                            str8 = str8;
                                                                        }
                                                                    }
                                                                    it8 = it9;
                                                                }
                                                            }
                                                            arrayList3 = new ArrayList();
                                                            Set<Integer> setKeySet3 = this.f31539f.keySet();
                                                            setKeySet3.removeAll(this.f31538e);
                                                            while (r3.hasNext()) {
                                                                int iIntValue8 = num6.intValue();
                                                                zzy zzyVar4 = (zzy) this.f31539f.get(num6);
                                                                Preconditions.h(zzyVar4);
                                                                com.google.android.gms.internal.measurement.zzhg zzhgVarB3 = zzyVar4.b(iIntValue8);
                                                                arrayList3.add(zzhgVarB3);
                                                                zzawVarH1 = zzpgVar2.h0();
                                                                zzicVar3 = zzawVarH1.f31850a;
                                                                str11 = this.d;
                                                                com.google.android.gms.internal.measurement.zzii zziiVarC3 = zzhgVarB3.C();
                                                                zzawVarH1.h();
                                                                zzawVarH1.g();
                                                                Preconditions.e(str11);
                                                                Preconditions.h(zziiVarC3);
                                                                byte[] bArrI3 = zziiVarC3.i();
                                                                contentValues = new ContentValues();
                                                                contentValues.put("app_id", str11);
                                                                contentValues.put(str5, num6);
                                                                contentValues.put("current_results", bArrI3);
                                                                if (zzawVarH1.X().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                                                                    zzicVar3.b().k().b(zzgu.o(str11), "Failed to insert filter results (got -1). appId");
                                                                }
                                                            }
                                                            return arrayList3;
                                                        }
                                                    }
                                                    cursorQuery.close();
                                                    obj = obj3;
                                                    r5 = r6;
                                                    map2 = arrayMap9;
                                                } else {
                                                    Map map16 = Collections.EMPTY_MAP;
                                                    cursorQuery.close();
                                                    map2 = map16;
                                                    str3 = "Failed to merge filter. appId";
                                                    obj2 = "Database error querying filters. appId";
                                                    obj = obj;
                                                    r5 = r5;
                                                }
                                                if (map2.isEmpty()) {
                                                    str5 = "audience_id";
                                                    zzicVar = zzicVar5;
                                                } else {
                                                    HashSet<Integer> hashSet3 = new HashSet(map2.keySet());
                                                    if (z3) {
                                                        String str113 = this.d;
                                                        zzawVarH0 = zzpgVar3.h0();
                                                        str6 = this.d;
                                                        zzawVarH0.h();
                                                        zzawVarH0.g();
                                                        Preconditions.e(str6);
                                                        arrayMap3 = new ArrayMap();
                                                        cursorRawQuery = zzawVarH0.X().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str6, str6});
                                                        if (cursorRawQuery.moveToFirst()) {
                                                            do {
                                                                numValueOf2 = Integer.valueOf(cursorRawQuery.getInt(0));
                                                                arrayList = (List) arrayMap3.get(numValueOf2);
                                                                if (arrayList == null) {
                                                                    arrayList = new ArrayList();
                                                                    arrayMap3.put(numValueOf2, arrayList);
                                                                }
                                                                arrayList.add(Integer.valueOf(cursorRawQuery.getInt(1)));
                                                            } while (cursorRawQuery.moveToNext());
                                                        } else {
                                                            arrayMap3 = Collections.EMPTY_MAP;
                                                        }
                                                        cursorRawQuery.close();
                                                        r0 = arrayMap3;
                                                        Preconditions.e(str113);
                                                        arrayMap4 = new ArrayMap();
                                                        if (!map2.isEmpty()) {
                                                            it2 = map2.keySet().iterator();
                                                            while (it2.hasNext()) {
                                                                num = (Integer) it2.next();
                                                                num.getClass();
                                                                zziiVar3 = (com.google.android.gms.internal.measurement.zzii) map2.get(num);
                                                                list4 = (List) r0.get(num);
                                                                if (list4 != null) {
                                                                }
                                                                r19 = r0;
                                                                it3 = it2;
                                                                zzicVar2 = zzicVar5;
                                                                arrayMap4.put(num, zziiVar3);
                                                                r0 = r19;
                                                                it2 = it3;
                                                                str16 = str16;
                                                                zzicVar5 = zzicVar2;
                                                            }
                                                        }
                                                        str4 = str16;
                                                        zzicVar = zzicVar5;
                                                        map3 = arrayMap4;
                                                    } else {
                                                        str4 = "audience_id";
                                                        zzicVar = zzicVar5;
                                                        map3 = map2;
                                                    }
                                                    map5 = map2;
                                                    map4 = map3;
                                                    while (r16.hasNext()) {
                                                        num3.getClass();
                                                        zziiVar = (com.google.android.gms.internal.measurement.zzii) map4.get(num3);
                                                        bitSet = new BitSet();
                                                        bitSet2 = new BitSet();
                                                        arrayMap = new ArrayMap();
                                                        if (zziiVar != null) {
                                                            while (r3.hasNext()) {
                                                                if (zzhqVar.A()) {
                                                                    com.google.android.gms.internal.measurement.zzii zziiVar11 = zziiVar;
                                                                    Integer numValueOf12 = Integer.valueOf(zzhqVar.B());
                                                                    if (zzhqVar.C()) {
                                                                        lValueOf = Long.valueOf(zzhqVar.D());
                                                                    } else {
                                                                        lValueOf = null;
                                                                    }
                                                                    arrayMap.put(numValueOf12, lValueOf);
                                                                    zziiVar = zziiVar11;
                                                                }
                                                            }
                                                        }
                                                        zziiVar2 = zziiVar;
                                                        arrayMap2 = new ArrayMap();
                                                        if (zziiVar2 != null) {
                                                            it = zziiVar2.G().iterator();
                                                            while (it.hasNext()) {
                                                                zzikVar = (com.google.android.gms.internal.measurement.zzik) it.next();
                                                                if (!zzikVar.A()) {
                                                                }
                                                            }
                                                        }
                                                        Map map17 = map4;
                                                        if (zziiVar2 != null) {
                                                            i2 = 0;
                                                            while (i2 < zziiVar2.B() * 64) {
                                                                if (zzpk.L((zzaee) zziiVar2.A(), i2)) {
                                                                    z4 = zR;
                                                                    zzicVar.b().n().c("Filter already evaluated. audience ID, filter ID", num3, Integer.valueOf(i2));
                                                                    bitSet2.set(i2);
                                                                    if (zzpk.L((zzaee) zziiVar2.C(), i2)) {
                                                                        bitSet.set(i2);
                                                                    }
                                                                    i2++;
                                                                    zR = z4;
                                                                } else {
                                                                    z4 = zR;
                                                                }
                                                                arrayMap.remove(Integer.valueOf(i2));
                                                                i2++;
                                                                zR = z4;
                                                            }
                                                        }
                                                        boolean z10 = zR;
                                                        com.google.android.gms.internal.measurement.zzii zziiVar12 = (com.google.android.gms.internal.measurement.zzii) map5.get(num3);
                                                        if (zR2) {
                                                            while (r2.hasNext()) {
                                                                int iB5 = zzffVar2.B();
                                                                Integer num9 = num3;
                                                                jLongValue = this.f31540h.longValue() / 1000;
                                                                if (zzffVar2.J()) {
                                                                    jLongValue = this.g.longValue() / 1000;
                                                                }
                                                                numValueOf = Integer.valueOf(iB5);
                                                                if (arrayMap.containsKey(numValueOf)) {
                                                                    arrayMap.put(numValueOf, Long.valueOf(jLongValue));
                                                                }
                                                                if (arrayMap2.containsKey(numValueOf)) {
                                                                    arrayMap2.put(numValueOf, Long.valueOf(jLongValue));
                                                                }
                                                                num3 = num9;
                                                            }
                                                        }
                                                        this.f31539f.put(num3, new zzy(this, this.d, zziiVar12, bitSet, bitSet2, arrayMap, arrayMap2));
                                                        map = map;
                                                        zR = z10;
                                                        zR2 = zR2;
                                                        str2 = str2;
                                                        str3 = str3;
                                                        map5 = map5;
                                                        map4 = map17;
                                                    }
                                                    str5 = str4;
                                                }
                                                str7 = str2;
                                                String str114 = str3;
                                                ?? r12 = obj2;
                                                str8 = "Skipping failed audience ID";
                                                if (!list.isEmpty()) {
                                                    zzzVar = new zzz(this);
                                                    arrayMap5 = new ArrayMap();
                                                    it4 = list.iterator();
                                                    while (it4.hasNext()) {
                                                        zzhsVar = (com.google.android.gms.internal.measurement.zzhs) it4.next();
                                                        zzhsVarA = zzzVar.a(zzhsVar, this.d);
                                                        if (zzhsVarA != null) {
                                                            zzbdVarQ = zzpgVar3.h0().Q(this.d, zzhsVar, zzhsVarA.F());
                                                            zzpgVar3.h0().H(str13, zzbdVarQ);
                                                            if (!z) {
                                                                String str23 = str13;
                                                                zzpgVar = zzpgVar3;
                                                                j2 = zzbdVarQ.f31594c;
                                                                strF = zzhsVarA.F();
                                                                map6 = (Map) arrayMap5.get(strF);
                                                                if (map6 == null) {
                                                                    zzaw zzawVarH11 = zzpgVar.h0();
                                                                    zzic zzicVar10 = zzawVarH11.f31850a;
                                                                    str9 = this.d;
                                                                    zzawVarH11.h();
                                                                    zzawVarH11.g();
                                                                    Preconditions.e(str9);
                                                                    Preconditions.e(strF);
                                                                    arrayMap6 = new ArrayMap();
                                                                    str10 = str9;
                                                                    cursorQuery2 = zzawVarH11.X().query("event_filters", new String[]{str5, str7}, "app_id=? AND event_name=?", new String[]{str9, strF}, null, null, null);
                                                                    if (cursorQuery2.moveToFirst()) {
                                                                        zzbdVar = zzbdVarQ;
                                                                        while (true) {
                                                                            com.google.android.gms.internal.measurement.zzff zzffVar10 = (com.google.android.gms.internal.measurement.zzff) ((com.google.android.gms.internal.measurement.zzfe) zzpk.R(com.google.android.gms.internal.measurement.zzff.M(), cursorQuery2.getBlob(1))).v();
                                                                            numValueOf3 = Integer.valueOf(cursorQuery2.getInt(0));
                                                                            list5 = (List) arrayMap6.get(numValueOf3);
                                                                            if (list5 == null) {
                                                                                cursor2 = cursorQuery2;
                                                                                arrayList2 = new ArrayList();
                                                                                arrayMap6.put(numValueOf3, arrayList2);
                                                                            } else {
                                                                                cursor2 = cursorQuery2;
                                                                                arrayList2 = list5;
                                                                            }
                                                                            arrayList2.add(zzffVar10);
                                                                            if (!cursor2.moveToNext()) {
                                                                                break;
                                                                                break;
                                                                            }
                                                                            cursorQuery2 = cursor2;
                                                                        }
                                                                        cursor2.close();
                                                                        map6 = arrayMap6;
                                                                    } else {
                                                                        cursor2 = cursorQuery2;
                                                                        zzbdVar = zzbdVarQ;
                                                                        map6 = Collections.EMPTY_MAP;
                                                                        cursor2.close();
                                                                    }
                                                                    arrayMap5.put(strF, map6);
                                                                } else {
                                                                    zzbdVar = zzbdVarQ;
                                                                }
                                                                it5 = map6.keySet().iterator();
                                                                while (it5.hasNext()) {
                                                                    num2 = (Integer) it5.next();
                                                                    iIntValue = num2.intValue();
                                                                    if (this.f31538e.contains(num2)) {
                                                                        zzicVar.b().n().b(num2, "Skipping failed audience ID");
                                                                    } else {
                                                                        it6 = ((List) map6.get(num2)).iterator();
                                                                        z5 = true;
                                                                        r4 = arrayMap5;
                                                                        while (true) {
                                                                            if (!it6.hasNext()) {
                                                                                map7 = map6;
                                                                                it7 = it5;
                                                                                r29 = r4;
                                                                                j3 = j2;
                                                                                break;
                                                                            }
                                                                            map7 = map6;
                                                                            com.google.android.gms.internal.measurement.zzff zzffVar11 = (com.google.android.gms.internal.measurement.zzff) it6.next();
                                                                            it7 = it5;
                                                                            r210 = r4;
                                                                            zzaaVar = new zzaa(this, this.d, iIntValue, zzffVar11);
                                                                            Long l11 = this.g;
                                                                            Long l12 = this.f31540h;
                                                                            iB = zzffVar11.B();
                                                                            zzyVar = (zzy) this.f31539f.get(num2);
                                                                            if (zzyVar == null) {
                                                                                z6 = false;
                                                                            } else {
                                                                                z6 = zzyVar.d.get(iB);
                                                                            }
                                                                            j3 = j2;
                                                                            zG = zzaaVar.g(l11, l12, zzhsVarA, j3, zzbdVar, z6);
                                                                            if (!zG) {
                                                                                this.f31538e.add(num2);
                                                                                z5 = zG;
                                                                                r29 = r210;
                                                                                break;
                                                                            }
                                                                            l(num2).a(zzaaVar);
                                                                            z5 = zG;
                                                                            j2 = j3;
                                                                            map6 = map7;
                                                                            it5 = it7;
                                                                            r4 = r210;
                                                                        }
                                                                        if (!z5) {
                                                                            this.f31538e.add(num2);
                                                                        }
                                                                        j2 = j3;
                                                                        map6 = map7;
                                                                        it5 = it7;
                                                                        arrayMap5 = r29;
                                                                    }
                                                                }
                                                                it4 = it4;
                                                                str13 = str23;
                                                                zzpgVar3 = zzpgVar;
                                                                zzzVar = zzzVar;
                                                            }
                                                        }
                                                    }
                                                }
                                                zzpgVar2 = zzpgVar3;
                                                if (!z) {
                                                    return new ArrayList();
                                                }
                                                if (!list2.isEmpty()) {
                                                    arrayMap7 = new ArrayMap();
                                                    it8 = list2.iterator();
                                                    while (it8.hasNext()) {
                                                        com.google.android.gms.internal.measurement.zziu zziuVar4 = (com.google.android.gms.internal.measurement.zziu) it8.next();
                                                        strC = zziuVar4.C();
                                                        map8 = (Map) arrayMap7.get(strC);
                                                        if (map8 == null) {
                                                            zzaw zzawVarH12 = zzpgVar2.h0();
                                                            zzicVar4 = zzawVarH12.f31850a;
                                                            str12 = this.d;
                                                            zzawVarH12.h();
                                                            zzawVarH12.g();
                                                            Preconditions.e(str12);
                                                            Preconditions.e(strC);
                                                            arrayMap8 = new ArrayMap();
                                                            cursorQuery3 = zzawVarH12.X().query("property_filters", new String[]{str5, str7}, "app_id=? AND property_name=?", new String[]{str12, strC}, null, null, null);
                                                            if (cursorQuery3.moveToFirst()) {
                                                                while (true) {
                                                                    com.google.android.gms.internal.measurement.zzfn zzfnVar5 = (com.google.android.gms.internal.measurement.zzfn) ((com.google.android.gms.internal.measurement.zzfm) zzpk.R(com.google.android.gms.internal.measurement.zzfn.I(), cursorQuery3.getBlob(1))).v();
                                                                    numValueOf6 = Integer.valueOf(cursorQuery3.getInt(0));
                                                                    list6 = (List) arrayMap8.get(numValueOf6);
                                                                    if (list6 == null) {
                                                                        it9 = it8;
                                                                        arrayList4 = new ArrayList();
                                                                        arrayMap8.put(numValueOf6, arrayList4);
                                                                    } else {
                                                                        it9 = it8;
                                                                        arrayList4 = list6;
                                                                    }
                                                                    arrayList4.add(zzfnVar5);
                                                                    if (!cursorQuery3.moveToNext()) {
                                                                        break;
                                                                        break;
                                                                    }
                                                                    it8 = it9;
                                                                    zzicVar4 = zzicVar4;
                                                                }
                                                                cursorQuery3.close();
                                                                map8 = arrayMap8;
                                                            } else {
                                                                it9 = it8;
                                                                map8 = Collections.EMPTY_MAP;
                                                                cursorQuery3.close();
                                                            }
                                                            arrayMap7.put(strC, map8);
                                                        } else {
                                                            it9 = it8;
                                                        }
                                                        while (r4.hasNext()) {
                                                            int iIntValue9 = num5.intValue();
                                                            if (this.f31538e.contains(num5)) {
                                                                zzicVar.b().n().b(num5, str8);
                                                                break;
                                                                break;
                                                            }
                                                            it10 = ((List) map8.get(num5)).iterator();
                                                            zG2 = true;
                                                            while (true) {
                                                                if (it10.hasNext()) {
                                                                    zzfnVar = (com.google.android.gms.internal.measurement.zzfn) it10.next();
                                                                    if (Log.isLoggable(zzicVar.b().q(), 2)) {
                                                                        zzgs zzgsVarN5 = zzicVar.b().n();
                                                                        if (zzfnVar.A()) {
                                                                            numValueOf5 = Integer.valueOf(zzfnVar.B());
                                                                        } else {
                                                                            numValueOf5 = null;
                                                                        }
                                                                        zzgsVarN5.d("Evaluating filter. audience, filter, property", num5, numValueOf5, zzicVar.n().c(zzfnVar.C()));
                                                                        zzicVar.b().n().b(zzpgVar2.k0().I(zzfnVar), "Filter definition");
                                                                    }
                                                                    if (zzfnVar.A()) {
                                                                    }
                                                                    zzgs zzgsVarL5 = zzicVar.b().l();
                                                                    Object objO6 = zzgu.o(this.d);
                                                                    if (zzfnVar.A()) {
                                                                        numValueOf4 = Integer.valueOf(zzfnVar.B());
                                                                    } else {
                                                                        numValueOf4 = null;
                                                                    }
                                                                    zzgsVarL5.c("Invalid property filter ID. appId, id", objO6, String.valueOf(numValueOf4));
                                                                    this.f31538e.add(num5);
                                                                    map8 = map8;
                                                                    str8 = str8;
                                                                } else {
                                                                    map8 = map8;
                                                                    str8 = str8;
                                                                }
                                                                if (!zG2) {
                                                                    this.f31538e.add(num5);
                                                                }
                                                                map8 = map8;
                                                                str8 = str8;
                                                                l(num5).a(zzacVar);
                                                                map8 = map8;
                                                                str8 = str8;
                                                            }
                                                        }
                                                        it8 = it9;
                                                    }
                                                }
                                                arrayList3 = new ArrayList();
                                                Set<Integer> setKeySet4 = this.f31539f.keySet();
                                                setKeySet4.removeAll(this.f31538e);
                                                while (r3.hasNext()) {
                                                    int iIntValue10 = num6.intValue();
                                                    zzy zzyVar5 = (zzy) this.f31539f.get(num6);
                                                    Preconditions.h(zzyVar5);
                                                    com.google.android.gms.internal.measurement.zzhg zzhgVarB4 = zzyVar5.b(iIntValue10);
                                                    arrayList3.add(zzhgVarB4);
                                                    zzawVarH1 = zzpgVar2.h0();
                                                    zzicVar3 = zzawVarH1.f31850a;
                                                    str11 = this.d;
                                                    com.google.android.gms.internal.measurement.zzii zziiVarC4 = zzhgVarB4.C();
                                                    zzawVarH1.h();
                                                    zzawVarH1.g();
                                                    Preconditions.e(str11);
                                                    Preconditions.h(zziiVarC4);
                                                    byte[] bArrI4 = zziiVarC4.i();
                                                    contentValues = new ContentValues();
                                                    contentValues.put("app_id", str11);
                                                    contentValues.put(str5, num6);
                                                    contentValues.put("current_results", bArrI4);
                                                    if (zzawVarH1.X().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                                                        zzicVar3.b().k().b(zzgu.o(str11), "Failed to insert filter results (got -1). appId");
                                                    }
                                                }
                                                return arrayList3;
                                            }
                                        }
                                        r112.close();
                                        map = arrayMap10;
                                    } else {
                                        str2 = DbParams.KEY_DATA;
                                        Query.close();
                                    }
                                } catch (Throwable th11) {
                                    th = th11;
                                    r110 = Query;
                                }
                            } catch (SQLiteException e25) {
                                e = e25;
                                str2 = DbParams.KEY_DATA;
                            }
                        } catch (SQLiteException e26) {
                            e = e26;
                            str2 = DbParams.KEY_DATA;
                            r8 = 0;
                        } catch (Throwable th12) {
                            th = th12;
                            r8 = 0;
                        }
                        zzaw zzawVarH13 = zzpgVar3.h0();
                        obj = zzawVarH13.f31850a;
                        r5 = this.d;
                        zzawVarH13.h();
                        zzawVarH13.g();
                        Preconditions.e(r5);
                        cursorQuery = zzawVarH13.X().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{r5}, null, null, null);
                        if (cursorQuery.moveToFirst()) {
                            Map map18 = Collections.EMPTY_MAP;
                            cursorQuery.close();
                            map2 = map18;
                            str3 = "Failed to merge filter. appId";
                            obj2 = "Database error querying filters. appId";
                            obj = obj;
                            r5 = r5;
                        } else {
                            arrayMap9 = new ArrayMap();
                            r18 = obj;
                            r22 = r5;
                            while (true) {
                                i3 = cursorQuery.getInt(0);
                                com.google.android.gms.internal.measurement.zzii zziiVar13 = (com.google.android.gms.internal.measurement.zzii) ((com.google.android.gms.internal.measurement.zzih) zzpk.R(com.google.android.gms.internal.measurement.zzii.I(), cursorQuery.getBlob(1))).v();
                                Object objValueOf2 = Integer.valueOf(i3);
                                arrayMap9.put(objValueOf2, zziiVar13);
                                str3 = str15;
                                obj2 = objO;
                                obj3 = objValueOf2;
                                r6 = r22;
                                if (!cursorQuery.moveToNext()) {
                                    break;
                                    break;
                                }
                                str15 = str3;
                                objO = obj2;
                                r22 = r22;
                            }
                            cursorQuery.close();
                            obj = obj3;
                            r5 = r6;
                            map2 = arrayMap9;
                        }
                        if (map2.isEmpty()) {
                            str5 = "audience_id";
                            zzicVar = zzicVar5;
                        } else {
                            HashSet<Integer> hashSet4 = new HashSet(map2.keySet());
                            if (z3) {
                                String str115 = this.d;
                                zzawVarH0 = zzpgVar3.h0();
                                str6 = this.d;
                                zzawVarH0.h();
                                zzawVarH0.g();
                                Preconditions.e(str6);
                                arrayMap3 = new ArrayMap();
                                cursorRawQuery = zzawVarH0.X().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str6, str6});
                                if (cursorRawQuery.moveToFirst()) {
                                    do {
                                        numValueOf2 = Integer.valueOf(cursorRawQuery.getInt(0));
                                        arrayList = (List) arrayMap3.get(numValueOf2);
                                        if (arrayList == null) {
                                            arrayList = new ArrayList();
                                            arrayMap3.put(numValueOf2, arrayList);
                                        }
                                        arrayList.add(Integer.valueOf(cursorRawQuery.getInt(1)));
                                    } while (cursorRawQuery.moveToNext());
                                } else {
                                    arrayMap3 = Collections.EMPTY_MAP;
                                }
                                cursorRawQuery.close();
                                r0 = arrayMap3;
                                Preconditions.e(str115);
                                arrayMap4 = new ArrayMap();
                                if (!map2.isEmpty()) {
                                    it2 = map2.keySet().iterator();
                                    while (it2.hasNext()) {
                                        num = (Integer) it2.next();
                                        num.getClass();
                                        zziiVar3 = (com.google.android.gms.internal.measurement.zzii) map2.get(num);
                                        list4 = (List) r0.get(num);
                                        if (list4 != null || list4.isEmpty()) {
                                            r19 = r0;
                                            it3 = it2;
                                            zzicVar2 = zzicVar5;
                                            arrayMap4.put(num, zziiVar3);
                                            r0 = r19;
                                            it2 = it3;
                                            str16 = str16;
                                            zzicVar5 = zzicVar2;
                                        } else {
                                            ?? r113 = r0;
                                            it3 = it2;
                                            List listN = zzpgVar3.k0().N((zzaee) zziiVar3.C(), list4);
                                            if (listN.isEmpty()) {
                                                r0 = r113;
                                                it2 = it3;
                                            } else {
                                                com.google.android.gms.internal.measurement.zzih zzihVar = (com.google.android.gms.internal.measurement.zzih) zziiVar3.r();
                                                zzihVar.z();
                                                zzihVar.l();
                                                ((com.google.android.gms.internal.measurement.zzii) zzihVar.f30406c).M(listN);
                                                List listN2 = zzpgVar3.k0().N((zzaee) zziiVar3.A(), list4);
                                                zzihVar.y();
                                                zzihVar.l();
                                                ((com.google.android.gms.internal.measurement.zzii) zzihVar.f30406c).K(listN2);
                                                ArrayList arrayList6 = new ArrayList();
                                                Iterator it12 = zziiVar3.E().iterator();
                                                while (it12.hasNext()) {
                                                    Iterator it13 = it12;
                                                    com.google.android.gms.internal.measurement.zzhq zzhqVar2 = (com.google.android.gms.internal.measurement.zzhq) it12.next();
                                                    zzic zzicVar11 = zzicVar5;
                                                    if (!list4.contains(Integer.valueOf(zzhqVar2.B()))) {
                                                        arrayList6.add(zzhqVar2);
                                                    }
                                                    it12 = it13;
                                                    zzicVar5 = zzicVar11;
                                                }
                                                zzicVar2 = zzicVar5;
                                                zzihVar.A();
                                                zzihVar.l();
                                                ((com.google.android.gms.internal.measurement.zzii) zzihVar.f30406c).O(arrayList6);
                                                ArrayList arrayList7 = new ArrayList();
                                                for (com.google.android.gms.internal.measurement.zzik zzikVar2 : zziiVar3.G()) {
                                                    if (!list4.contains(Integer.valueOf(zzikVar2.B()))) {
                                                        arrayList7.add(zzikVar2);
                                                    }
                                                }
                                                zzihVar.B();
                                                zzihVar.l();
                                                ((com.google.android.gms.internal.measurement.zzii) zzihVar.f30406c).Q(arrayList7);
                                                arrayMap4.put(num, (com.google.android.gms.internal.measurement.zzii) zzihVar.v());
                                                r19 = r113;
                                                r0 = r19;
                                                it2 = it3;
                                                str16 = str16;
                                                zzicVar5 = zzicVar2;
                                            }
                                        }
                                    }
                                }
                                str4 = str16;
                                zzicVar = zzicVar5;
                                map3 = arrayMap4;
                            } else {
                                str4 = "audience_id";
                                zzicVar = zzicVar5;
                                map3 = map2;
                            }
                            map5 = map2;
                            map4 = map3;
                            while (r16.hasNext()) {
                                num3.getClass();
                                zziiVar = (com.google.android.gms.internal.measurement.zzii) map4.get(num3);
                                bitSet = new BitSet();
                                bitSet2 = new BitSet();
                                arrayMap = new ArrayMap();
                                if (zziiVar != null && zziiVar.F() != 0) {
                                    while (r3.hasNext()) {
                                        if (zzhqVar.A()) {
                                            com.google.android.gms.internal.measurement.zzii zziiVar14 = zziiVar;
                                            Integer numValueOf13 = Integer.valueOf(zzhqVar.B());
                                            if (zzhqVar.C()) {
                                                lValueOf = Long.valueOf(zzhqVar.D());
                                            } else {
                                                lValueOf = null;
                                            }
                                            arrayMap.put(numValueOf13, lValueOf);
                                            zziiVar = zziiVar14;
                                        }
                                    }
                                }
                                zziiVar2 = zziiVar;
                                arrayMap2 = new ArrayMap();
                                if (zziiVar2 != null && zziiVar2.H() != 0) {
                                    it = zziiVar2.G().iterator();
                                    while (it.hasNext()) {
                                        zzikVar = (com.google.android.gms.internal.measurement.zzik) it.next();
                                        if (!zzikVar.A() && zzikVar.D() > 0) {
                                            arrayMap2.put(Integer.valueOf(zzikVar.B()), Long.valueOf(zzikVar.E(zzikVar.D() - 1)));
                                            it = it;
                                            map4 = map4;
                                        }
                                    }
                                }
                                Map map19 = map4;
                                if (zziiVar2 != null) {
                                    i2 = 0;
                                    while (i2 < zziiVar2.B() * 64) {
                                        if (zzpk.L((zzaee) zziiVar2.A(), i2)) {
                                            z4 = zR;
                                            zzicVar.b().n().c("Filter already evaluated. audience ID, filter ID", num3, Integer.valueOf(i2));
                                            bitSet2.set(i2);
                                            if (zzpk.L((zzaee) zziiVar2.C(), i2)) {
                                                bitSet.set(i2);
                                            }
                                            i2++;
                                            zR = z4;
                                        } else {
                                            z4 = zR;
                                        }
                                        arrayMap.remove(Integer.valueOf(i2));
                                        i2++;
                                        zR = z4;
                                    }
                                }
                                boolean z11 = zR;
                                com.google.android.gms.internal.measurement.zzii zziiVar15 = (com.google.android.gms.internal.measurement.zzii) map5.get(num3);
                                if (zR2 && z11 && (list3 = (List) map.get(num3)) != null && this.f31540h != null && this.g != null) {
                                    while (r2.hasNext()) {
                                        int iB6 = zzffVar2.B();
                                        Integer num10 = num3;
                                        jLongValue = this.f31540h.longValue() / 1000;
                                        if (zzffVar2.J()) {
                                            jLongValue = this.g.longValue() / 1000;
                                        }
                                        numValueOf = Integer.valueOf(iB6);
                                        if (arrayMap.containsKey(numValueOf)) {
                                            arrayMap.put(numValueOf, Long.valueOf(jLongValue));
                                        }
                                        if (arrayMap2.containsKey(numValueOf)) {
                                            arrayMap2.put(numValueOf, Long.valueOf(jLongValue));
                                        }
                                        num3 = num10;
                                    }
                                }
                                this.f31539f.put(num3, new zzy(this, this.d, zziiVar15, bitSet, bitSet2, arrayMap, arrayMap2));
                                map = map;
                                zR = z11;
                                zR2 = zR2;
                                str2 = str2;
                                str3 = str3;
                                map5 = map5;
                                map4 = map19;
                            }
                            str5 = str4;
                        }
                        str7 = str2;
                        String str116 = str3;
                        ?? r13 = obj2;
                        str8 = "Skipping failed audience ID";
                        if (!list.isEmpty()) {
                            zzzVar = new zzz(this);
                            arrayMap5 = new ArrayMap();
                            it4 = list.iterator();
                            while (it4.hasNext()) {
                                zzhsVar = (com.google.android.gms.internal.measurement.zzhs) it4.next();
                                zzhsVarA = zzzVar.a(zzhsVar, this.d);
                                if (zzhsVarA != null) {
                                    zzbdVarQ = zzpgVar3.h0().Q(this.d, zzhsVar, zzhsVarA.F());
                                    zzpgVar3.h0().H(str13, zzbdVarQ);
                                    if (!z) {
                                        String str24 = str13;
                                        zzpgVar = zzpgVar3;
                                        j2 = zzbdVarQ.f31594c;
                                        strF = zzhsVarA.F();
                                        map6 = (Map) arrayMap5.get(strF);
                                        if (map6 == null) {
                                            zzaw zzawVarH14 = zzpgVar.h0();
                                            zzic zzicVar12 = zzawVarH14.f31850a;
                                            str9 = this.d;
                                            zzawVarH14.h();
                                            zzawVarH14.g();
                                            Preconditions.e(str9);
                                            Preconditions.e(strF);
                                            arrayMap6 = new ArrayMap();
                                            str10 = str9;
                                            cursorQuery2 = zzawVarH14.X().query("event_filters", new String[]{str5, str7}, "app_id=? AND event_name=?", new String[]{str9, strF}, null, null, null);
                                            if (cursorQuery2.moveToFirst()) {
                                                zzbdVar = zzbdVarQ;
                                                while (true) {
                                                    com.google.android.gms.internal.measurement.zzff zzffVar12 = (com.google.android.gms.internal.measurement.zzff) ((com.google.android.gms.internal.measurement.zzfe) zzpk.R(com.google.android.gms.internal.measurement.zzff.M(), cursorQuery2.getBlob(1))).v();
                                                    numValueOf3 = Integer.valueOf(cursorQuery2.getInt(0));
                                                    list5 = (List) arrayMap6.get(numValueOf3);
                                                    if (list5 == null) {
                                                        cursor2 = cursorQuery2;
                                                        arrayList2 = new ArrayList();
                                                        arrayMap6.put(numValueOf3, arrayList2);
                                                    } else {
                                                        cursor2 = cursorQuery2;
                                                        arrayList2 = list5;
                                                    }
                                                    arrayList2.add(zzffVar12);
                                                    if (!cursor2.moveToNext()) {
                                                        break;
                                                        break;
                                                    }
                                                    cursorQuery2 = cursor2;
                                                }
                                                cursor2.close();
                                                map6 = arrayMap6;
                                            } else {
                                                cursor2 = cursorQuery2;
                                                zzbdVar = zzbdVarQ;
                                                map6 = Collections.EMPTY_MAP;
                                                cursor2.close();
                                            }
                                            arrayMap5.put(strF, map6);
                                        } else {
                                            zzbdVar = zzbdVarQ;
                                        }
                                        it5 = map6.keySet().iterator();
                                        while (it5.hasNext()) {
                                            num2 = (Integer) it5.next();
                                            iIntValue = num2.intValue();
                                            if (this.f31538e.contains(num2)) {
                                                zzicVar.b().n().b(num2, "Skipping failed audience ID");
                                            } else {
                                                it6 = ((List) map6.get(num2)).iterator();
                                                z5 = true;
                                                r4 = arrayMap5;
                                                while (true) {
                                                    if (!it6.hasNext()) {
                                                        map7 = map6;
                                                        it7 = it5;
                                                        r29 = r4;
                                                        j3 = j2;
                                                        break;
                                                    }
                                                    map7 = map6;
                                                    com.google.android.gms.internal.measurement.zzff zzffVar13 = (com.google.android.gms.internal.measurement.zzff) it6.next();
                                                    it7 = it5;
                                                    r210 = r4;
                                                    zzaaVar = new zzaa(this, this.d, iIntValue, zzffVar13);
                                                    Long l13 = this.g;
                                                    Long l14 = this.f31540h;
                                                    iB = zzffVar13.B();
                                                    zzyVar = (zzy) this.f31539f.get(num2);
                                                    if (zzyVar == null) {
                                                        z6 = false;
                                                    } else {
                                                        z6 = zzyVar.d.get(iB);
                                                    }
                                                    j3 = j2;
                                                    zG = zzaaVar.g(l13, l14, zzhsVarA, j3, zzbdVar, z6);
                                                    if (!zG) {
                                                        this.f31538e.add(num2);
                                                        z5 = zG;
                                                        r29 = r210;
                                                        break;
                                                    }
                                                    l(num2).a(zzaaVar);
                                                    z5 = zG;
                                                    j2 = j3;
                                                    map6 = map7;
                                                    it5 = it7;
                                                    r4 = r210;
                                                }
                                                if (!z5) {
                                                    this.f31538e.add(num2);
                                                }
                                                j2 = j3;
                                                map6 = map7;
                                                it5 = it7;
                                                arrayMap5 = r29;
                                            }
                                        }
                                        it4 = it4;
                                        str13 = str24;
                                        zzpgVar3 = zzpgVar;
                                        zzzVar = zzzVar;
                                    }
                                }
                            }
                        }
                        zzpgVar2 = zzpgVar3;
                        if (!z) {
                            return new ArrayList();
                        }
                        if (!list2.isEmpty()) {
                            arrayMap7 = new ArrayMap();
                            it8 = list2.iterator();
                            while (it8.hasNext()) {
                                com.google.android.gms.internal.measurement.zziu zziuVar5 = (com.google.android.gms.internal.measurement.zziu) it8.next();
                                strC = zziuVar5.C();
                                map8 = (Map) arrayMap7.get(strC);
                                if (map8 == null) {
                                    zzaw zzawVarH15 = zzpgVar2.h0();
                                    zzicVar4 = zzawVarH15.f31850a;
                                    str12 = this.d;
                                    zzawVarH15.h();
                                    zzawVarH15.g();
                                    Preconditions.e(str12);
                                    Preconditions.e(strC);
                                    arrayMap8 = new ArrayMap();
                                    cursorQuery3 = zzawVarH15.X().query("property_filters", new String[]{str5, str7}, "app_id=? AND property_name=?", new String[]{str12, strC}, null, null, null);
                                    if (cursorQuery3.moveToFirst()) {
                                        while (true) {
                                            com.google.android.gms.internal.measurement.zzfn zzfnVar6 = (com.google.android.gms.internal.measurement.zzfn) ((com.google.android.gms.internal.measurement.zzfm) zzpk.R(com.google.android.gms.internal.measurement.zzfn.I(), cursorQuery3.getBlob(1))).v();
                                            numValueOf6 = Integer.valueOf(cursorQuery3.getInt(0));
                                            list6 = (List) arrayMap8.get(numValueOf6);
                                            if (list6 == null) {
                                                it9 = it8;
                                                arrayList4 = new ArrayList();
                                                arrayMap8.put(numValueOf6, arrayList4);
                                            } else {
                                                it9 = it8;
                                                arrayList4 = list6;
                                            }
                                            arrayList4.add(zzfnVar6);
                                            if (!cursorQuery3.moveToNext()) {
                                                break;
                                                break;
                                            }
                                            it8 = it9;
                                            zzicVar4 = zzicVar4;
                                        }
                                        cursorQuery3.close();
                                        map8 = arrayMap8;
                                    } else {
                                        it9 = it8;
                                        map8 = Collections.EMPTY_MAP;
                                        cursorQuery3.close();
                                    }
                                    arrayMap7.put(strC, map8);
                                } else {
                                    it9 = it8;
                                }
                                while (r4.hasNext()) {
                                    int iIntValue11 = num5.intValue();
                                    if (this.f31538e.contains(num5)) {
                                        zzicVar.b().n().b(num5, str8);
                                        break;
                                        break;
                                    }
                                    it10 = ((List) map8.get(num5)).iterator();
                                    zG2 = true;
                                    while (true) {
                                        if (it10.hasNext()) {
                                            zzfnVar = (com.google.android.gms.internal.measurement.zzfn) it10.next();
                                            if (Log.isLoggable(zzicVar.b().q(), 2)) {
                                                zzgs zzgsVarN6 = zzicVar.b().n();
                                                if (zzfnVar.A()) {
                                                    numValueOf5 = Integer.valueOf(zzfnVar.B());
                                                } else {
                                                    numValueOf5 = null;
                                                }
                                                zzgsVarN6.d("Evaluating filter. audience, filter, property", num5, numValueOf5, zzicVar.n().c(zzfnVar.C()));
                                                zzicVar.b().n().b(zzpgVar2.k0().I(zzfnVar), "Filter definition");
                                            }
                                            if (zzfnVar.A() || zzfnVar.B() > 256) {
                                                zzgs zzgsVarL6 = zzicVar.b().l();
                                                Object objO7 = zzgu.o(this.d);
                                                if (zzfnVar.A()) {
                                                    numValueOf4 = Integer.valueOf(zzfnVar.B());
                                                } else {
                                                    numValueOf4 = null;
                                                }
                                                zzgsVarL6.c("Invalid property filter ID. appId, id", objO7, String.valueOf(numValueOf4));
                                                this.f31538e.add(num5);
                                                map8 = map8;
                                                str8 = str8;
                                            } else {
                                                zzacVar = new zzac(this, this.d, iIntValue11, zzfnVar);
                                                Long l15 = this.g;
                                                Long l16 = this.f31540h;
                                                int iB7 = zzfnVar.B();
                                                zzy zzyVar6 = (zzy) this.f31539f.get(num5);
                                                zG2 = zzacVar.g(l15, l16, zziuVar5, zzyVar6 == null ? false : zzyVar6.d.get(iB7));
                                                if (zG2) {
                                                    l(num5).a(zzacVar);
                                                    map8 = map8;
                                                    str8 = str8;
                                                } else {
                                                    this.f31538e.add(num5);
                                                }
                                            }
                                        } else {
                                            map8 = map8;
                                            str8 = str8;
                                        }
                                        if (!zG2) {
                                            this.f31538e.add(num5);
                                        }
                                        map8 = map8;
                                        str8 = str8;
                                    }
                                }
                                it8 = it9;
                            }
                        }
                        arrayList3 = new ArrayList();
                        Set<Integer> setKeySet5 = this.f31539f.keySet();
                        setKeySet5.removeAll(this.f31538e);
                        while (r3.hasNext()) {
                            int iIntValue12 = num6.intValue();
                            zzy zzyVar7 = (zzy) this.f31539f.get(num6);
                            Preconditions.h(zzyVar7);
                            com.google.android.gms.internal.measurement.zzhg zzhgVarB5 = zzyVar7.b(iIntValue12);
                            arrayList3.add(zzhgVarB5);
                            zzawVarH1 = zzpgVar2.h0();
                            zzicVar3 = zzawVarH1.f31850a;
                            str11 = this.d;
                            com.google.android.gms.internal.measurement.zzii zziiVarC5 = zzhgVarB5.C();
                            zzawVarH1.h();
                            zzawVarH1.g();
                            Preconditions.e(str11);
                            Preconditions.h(zziiVarC5);
                            byte[] bArrI5 = zziiVarC5.i();
                            contentValues = new ContentValues();
                            contentValues.put("app_id", str11);
                            contentValues.put(str5, num6);
                            contentValues.put("current_results", bArrI5);
                            if (zzawVarH1.X().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                                zzicVar3.b().k().b(zzgu.o(str11), "Failed to insert filter results (got -1). appId");
                            }
                        }
                        return arrayList3;
                    }
                    z3 = z2;
                    str2 = DbParams.KEY_DATA;
                    if (cursorQuery.moveToFirst()) {
                        Map map110 = Collections.EMPTY_MAP;
                        cursorQuery.close();
                        map2 = map110;
                        str3 = "Failed to merge filter. appId";
                        obj2 = "Database error querying filters. appId";
                        obj = obj;
                        r5 = r5;
                    } else {
                        arrayMap9 = new ArrayMap();
                        r18 = obj;
                        r22 = r5;
                        while (true) {
                            i3 = cursorQuery.getInt(0);
                            com.google.android.gms.internal.measurement.zzii zziiVar16 = (com.google.android.gms.internal.measurement.zzii) ((com.google.android.gms.internal.measurement.zzih) zzpk.R(com.google.android.gms.internal.measurement.zzii.I(), cursorQuery.getBlob(1))).v();
                            Object objValueOf3 = Integer.valueOf(i3);
                            arrayMap9.put(objValueOf3, zziiVar16);
                            str3 = str15;
                            obj2 = objO;
                            obj3 = objValueOf3;
                            r6 = r22;
                            if (!cursorQuery.moveToNext()) {
                                break;
                                break;
                            }
                            str15 = str3;
                            objO = obj2;
                            r22 = r22;
                        }
                        cursorQuery.close();
                        obj = obj3;
                        r5 = r6;
                        map2 = arrayMap9;
                    }
                } catch (SQLiteException e27) {
                    e = e27;
                    r18 = obj;
                    r22 = r5;
                }
            } catch (Throwable th13) {
                th = th13;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
            cursorQuery = zzawVarH13.X().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{r5}, null, null, null);
        } catch (SQLiteException e28) {
            e = e28;
            r18 = obj;
            str3 = "Failed to merge filter. appId";
            obj2 = "Database error querying filters. appId";
            r22 = r5;
            cursorQuery = null;
        } catch (Throwable th14) {
            th = th14;
            cursorQuery = null;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
        map = map9;
        zzaw zzawVarH16 = zzpgVar3.h0();
        obj = zzawVarH16.f31850a;
        r5 = this.d;
        zzawVarH16.h();
        zzawVarH16.g();
        Preconditions.e(r5);
        if (map2.isEmpty()) {
            str5 = "audience_id";
            zzicVar = zzicVar5;
        } else {
            HashSet<Integer> hashSet5 = new HashSet(map2.keySet());
            if (z3) {
                String str117 = this.d;
                zzawVarH0 = zzpgVar3.h0();
                str6 = this.d;
                zzawVarH0.h();
                zzawVarH0.g();
                Preconditions.e(str6);
                arrayMap3 = new ArrayMap();
                cursorRawQuery = zzawVarH0.X().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str6, str6});
                if (cursorRawQuery.moveToFirst()) {
                    do {
                        numValueOf2 = Integer.valueOf(cursorRawQuery.getInt(0));
                        arrayList = (List) arrayMap3.get(numValueOf2);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            arrayMap3.put(numValueOf2, arrayList);
                        }
                        arrayList.add(Integer.valueOf(cursorRawQuery.getInt(1)));
                    } while (cursorRawQuery.moveToNext());
                } else {
                    arrayMap3 = Collections.EMPTY_MAP;
                }
                cursorRawQuery.close();
                r0 = arrayMap3;
                Preconditions.e(str117);
                arrayMap4 = new ArrayMap();
                if (!map2.isEmpty()) {
                    it2 = map2.keySet().iterator();
                    while (it2.hasNext()) {
                        num = (Integer) it2.next();
                        num.getClass();
                        zziiVar3 = (com.google.android.gms.internal.measurement.zzii) map2.get(num);
                        list4 = (List) r0.get(num);
                        if (list4 != null) {
                        }
                        r19 = r0;
                        it3 = it2;
                        zzicVar2 = zzicVar5;
                        arrayMap4.put(num, zziiVar3);
                        r0 = r19;
                        it2 = it3;
                        str16 = str16;
                        zzicVar5 = zzicVar2;
                    }
                }
                str4 = str16;
                zzicVar = zzicVar5;
                map3 = arrayMap4;
            } else {
                str4 = "audience_id";
                zzicVar = zzicVar5;
                map3 = map2;
            }
            map5 = map2;
            map4 = map3;
            while (r16.hasNext()) {
                num3.getClass();
                zziiVar = (com.google.android.gms.internal.measurement.zzii) map4.get(num3);
                bitSet = new BitSet();
                bitSet2 = new BitSet();
                arrayMap = new ArrayMap();
                if (zziiVar != null) {
                    while (r3.hasNext()) {
                        if (zzhqVar.A()) {
                            com.google.android.gms.internal.measurement.zzii zziiVar17 = zziiVar;
                            Integer numValueOf14 = Integer.valueOf(zzhqVar.B());
                            if (zzhqVar.C()) {
                                lValueOf = Long.valueOf(zzhqVar.D());
                            } else {
                                lValueOf = null;
                            }
                            arrayMap.put(numValueOf14, lValueOf);
                            zziiVar = zziiVar17;
                        }
                    }
                }
                zziiVar2 = zziiVar;
                arrayMap2 = new ArrayMap();
                if (zziiVar2 != null) {
                    it = zziiVar2.G().iterator();
                    while (it.hasNext()) {
                        zzikVar = (com.google.android.gms.internal.measurement.zzik) it.next();
                        if (!zzikVar.A()) {
                        }
                    }
                }
                Map map111 = map4;
                if (zziiVar2 != null) {
                    i2 = 0;
                    while (i2 < zziiVar2.B() * 64) {
                        if (zzpk.L((zzaee) zziiVar2.A(), i2)) {
                            z4 = zR;
                            zzicVar.b().n().c("Filter already evaluated. audience ID, filter ID", num3, Integer.valueOf(i2));
                            bitSet2.set(i2);
                            if (zzpk.L((zzaee) zziiVar2.C(), i2)) {
                                bitSet.set(i2);
                            }
                            i2++;
                            zR = z4;
                        } else {
                            z4 = zR;
                        }
                        arrayMap.remove(Integer.valueOf(i2));
                        i2++;
                        zR = z4;
                    }
                }
                boolean z12 = zR;
                com.google.android.gms.internal.measurement.zzii zziiVar18 = (com.google.android.gms.internal.measurement.zzii) map5.get(num3);
                if (zR2) {
                    while (r2.hasNext()) {
                        int iB8 = zzffVar2.B();
                        Integer num11 = num3;
                        jLongValue = this.f31540h.longValue() / 1000;
                        if (zzffVar2.J()) {
                            jLongValue = this.g.longValue() / 1000;
                        }
                        numValueOf = Integer.valueOf(iB8);
                        if (arrayMap.containsKey(numValueOf)) {
                            arrayMap.put(numValueOf, Long.valueOf(jLongValue));
                        }
                        if (arrayMap2.containsKey(numValueOf)) {
                            arrayMap2.put(numValueOf, Long.valueOf(jLongValue));
                        }
                        num3 = num11;
                    }
                }
                this.f31539f.put(num3, new zzy(this, this.d, zziiVar18, bitSet, bitSet2, arrayMap, arrayMap2));
                map = map;
                zR = z12;
                zR2 = zR2;
                str2 = str2;
                str3 = str3;
                map5 = map5;
                map4 = map111;
            }
            str5 = str4;
        }
        str7 = str2;
        String str118 = str3;
        ?? r14 = obj2;
        str8 = "Skipping failed audience ID";
        if (!list.isEmpty()) {
            zzzVar = new zzz(this);
            arrayMap5 = new ArrayMap();
            it4 = list.iterator();
            while (it4.hasNext()) {
                zzhsVar = (com.google.android.gms.internal.measurement.zzhs) it4.next();
                zzhsVarA = zzzVar.a(zzhsVar, this.d);
                if (zzhsVarA != null) {
                    zzbdVarQ = zzpgVar3.h0().Q(this.d, zzhsVar, zzhsVarA.F());
                    zzpgVar3.h0().H(str13, zzbdVarQ);
                    if (!z) {
                        String str25 = str13;
                        zzpgVar = zzpgVar3;
                        j2 = zzbdVarQ.f31594c;
                        strF = zzhsVarA.F();
                        map6 = (Map) arrayMap5.get(strF);
                        if (map6 == null) {
                            zzaw zzawVarH17 = zzpgVar.h0();
                            zzic zzicVar13 = zzawVarH17.f31850a;
                            str9 = this.d;
                            zzawVarH17.h();
                            zzawVarH17.g();
                            Preconditions.e(str9);
                            Preconditions.e(strF);
                            arrayMap6 = new ArrayMap();
                            str10 = str9;
                            cursorQuery2 = zzawVarH17.X().query("event_filters", new String[]{str5, str7}, "app_id=? AND event_name=?", new String[]{str9, strF}, null, null, null);
                            if (cursorQuery2.moveToFirst()) {
                                zzbdVar = zzbdVarQ;
                                while (true) {
                                    com.google.android.gms.internal.measurement.zzff zzffVar14 = (com.google.android.gms.internal.measurement.zzff) ((com.google.android.gms.internal.measurement.zzfe) zzpk.R(com.google.android.gms.internal.measurement.zzff.M(), cursorQuery2.getBlob(1))).v();
                                    numValueOf3 = Integer.valueOf(cursorQuery2.getInt(0));
                                    list5 = (List) arrayMap6.get(numValueOf3);
                                    if (list5 == null) {
                                        cursor2 = cursorQuery2;
                                        arrayList2 = new ArrayList();
                                        arrayMap6.put(numValueOf3, arrayList2);
                                    } else {
                                        cursor2 = cursorQuery2;
                                        arrayList2 = list5;
                                    }
                                    arrayList2.add(zzffVar14);
                                    if (!cursor2.moveToNext()) {
                                        break;
                                        break;
                                    }
                                    cursorQuery2 = cursor2;
                                }
                                cursor2.close();
                                map6 = arrayMap6;
                            } else {
                                cursor2 = cursorQuery2;
                                zzbdVar = zzbdVarQ;
                                map6 = Collections.EMPTY_MAP;
                                cursor2.close();
                            }
                            arrayMap5.put(strF, map6);
                        } else {
                            zzbdVar = zzbdVarQ;
                        }
                        it5 = map6.keySet().iterator();
                        while (it5.hasNext()) {
                            num2 = (Integer) it5.next();
                            iIntValue = num2.intValue();
                            if (this.f31538e.contains(num2)) {
                                zzicVar.b().n().b(num2, "Skipping failed audience ID");
                            } else {
                                it6 = ((List) map6.get(num2)).iterator();
                                z5 = true;
                                r4 = arrayMap5;
                                while (true) {
                                    if (!it6.hasNext()) {
                                        map7 = map6;
                                        it7 = it5;
                                        r29 = r4;
                                        j3 = j2;
                                        break;
                                    }
                                    map7 = map6;
                                    com.google.android.gms.internal.measurement.zzff zzffVar15 = (com.google.android.gms.internal.measurement.zzff) it6.next();
                                    it7 = it5;
                                    r210 = r4;
                                    zzaaVar = new zzaa(this, this.d, iIntValue, zzffVar15);
                                    Long l17 = this.g;
                                    Long l18 = this.f31540h;
                                    iB = zzffVar15.B();
                                    zzyVar = (zzy) this.f31539f.get(num2);
                                    if (zzyVar == null) {
                                        z6 = false;
                                    } else {
                                        z6 = zzyVar.d.get(iB);
                                    }
                                    j3 = j2;
                                    zG = zzaaVar.g(l17, l18, zzhsVarA, j3, zzbdVar, z6);
                                    if (!zG) {
                                        this.f31538e.add(num2);
                                        z5 = zG;
                                        r29 = r210;
                                        break;
                                    }
                                    l(num2).a(zzaaVar);
                                    z5 = zG;
                                    j2 = j3;
                                    map6 = map7;
                                    it5 = it7;
                                    r4 = r210;
                                }
                                if (!z5) {
                                    this.f31538e.add(num2);
                                }
                                j2 = j3;
                                map6 = map7;
                                it5 = it7;
                                arrayMap5 = r29;
                            }
                        }
                        it4 = it4;
                        str13 = str25;
                        zzpgVar3 = zzpgVar;
                        zzzVar = zzzVar;
                    }
                }
            }
        }
        zzpgVar2 = zzpgVar3;
        if (!z) {
            return new ArrayList();
        }
        if (!list2.isEmpty()) {
            arrayMap7 = new ArrayMap();
            it8 = list2.iterator();
            while (it8.hasNext()) {
                com.google.android.gms.internal.measurement.zziu zziuVar6 = (com.google.android.gms.internal.measurement.zziu) it8.next();
                strC = zziuVar6.C();
                map8 = (Map) arrayMap7.get(strC);
                if (map8 == null) {
                    zzaw zzawVarH18 = zzpgVar2.h0();
                    zzicVar4 = zzawVarH18.f31850a;
                    str12 = this.d;
                    zzawVarH18.h();
                    zzawVarH18.g();
                    Preconditions.e(str12);
                    Preconditions.e(strC);
                    arrayMap8 = new ArrayMap();
                    cursorQuery3 = zzawVarH18.X().query("property_filters", new String[]{str5, str7}, "app_id=? AND property_name=?", new String[]{str12, strC}, null, null, null);
                    if (cursorQuery3.moveToFirst()) {
                        while (true) {
                            com.google.android.gms.internal.measurement.zzfn zzfnVar7 = (com.google.android.gms.internal.measurement.zzfn) ((com.google.android.gms.internal.measurement.zzfm) zzpk.R(com.google.android.gms.internal.measurement.zzfn.I(), cursorQuery3.getBlob(1))).v();
                            numValueOf6 = Integer.valueOf(cursorQuery3.getInt(0));
                            list6 = (List) arrayMap8.get(numValueOf6);
                            if (list6 == null) {
                                it9 = it8;
                                arrayList4 = new ArrayList();
                                arrayMap8.put(numValueOf6, arrayList4);
                            } else {
                                it9 = it8;
                                arrayList4 = list6;
                            }
                            arrayList4.add(zzfnVar7);
                            if (!cursorQuery3.moveToNext()) {
                                break;
                                break;
                            }
                            it8 = it9;
                            zzicVar4 = zzicVar4;
                        }
                        cursorQuery3.close();
                        map8 = arrayMap8;
                    } else {
                        it9 = it8;
                        map8 = Collections.EMPTY_MAP;
                        cursorQuery3.close();
                    }
                    arrayMap7.put(strC, map8);
                } else {
                    it9 = it8;
                }
                while (r4.hasNext()) {
                    int iIntValue13 = num5.intValue();
                    if (this.f31538e.contains(num5)) {
                        zzicVar.b().n().b(num5, str8);
                        break;
                        break;
                    }
                    it10 = ((List) map8.get(num5)).iterator();
                    zG2 = true;
                    while (true) {
                        if (it10.hasNext()) {
                            zzfnVar = (com.google.android.gms.internal.measurement.zzfn) it10.next();
                            if (Log.isLoggable(zzicVar.b().q(), 2)) {
                                zzgs zzgsVarN7 = zzicVar.b().n();
                                if (zzfnVar.A()) {
                                    numValueOf5 = Integer.valueOf(zzfnVar.B());
                                } else {
                                    numValueOf5 = null;
                                }
                                zzgsVarN7.d("Evaluating filter. audience, filter, property", num5, numValueOf5, zzicVar.n().c(zzfnVar.C()));
                                zzicVar.b().n().b(zzpgVar2.k0().I(zzfnVar), "Filter definition");
                            }
                            if (zzfnVar.A()) {
                            }
                            zzgs zzgsVarL7 = zzicVar.b().l();
                            Object objO8 = zzgu.o(this.d);
                            if (zzfnVar.A()) {
                                numValueOf4 = Integer.valueOf(zzfnVar.B());
                            } else {
                                numValueOf4 = null;
                            }
                            zzgsVarL7.c("Invalid property filter ID. appId, id", objO8, String.valueOf(numValueOf4));
                            this.f31538e.add(num5);
                            map8 = map8;
                            str8 = str8;
                        } else {
                            map8 = map8;
                            str8 = str8;
                        }
                        if (!zG2) {
                            this.f31538e.add(num5);
                        }
                        map8 = map8;
                        str8 = str8;
                        l(num5).a(zzacVar);
                        map8 = map8;
                        str8 = str8;
                    }
                }
                it8 = it9;
            }
        }
        arrayList3 = new ArrayList();
        Set<Integer> setKeySet6 = this.f31539f.keySet();
        setKeySet6.removeAll(this.f31538e);
        while (r3.hasNext()) {
            int iIntValue14 = num6.intValue();
            zzy zzyVar8 = (zzy) this.f31539f.get(num6);
            Preconditions.h(zzyVar8);
            com.google.android.gms.internal.measurement.zzhg zzhgVarB6 = zzyVar8.b(iIntValue14);
            arrayList3.add(zzhgVarB6);
            zzawVarH1 = zzpgVar2.h0();
            zzicVar3 = zzawVarH1.f31850a;
            str11 = this.d;
            com.google.android.gms.internal.measurement.zzii zziiVarC6 = zzhgVarB6.C();
            zzawVarH1.h();
            zzawVarH1.g();
            Preconditions.e(str11);
            Preconditions.h(zziiVarC6);
            byte[] bArrI6 = zziiVarC6.i();
            contentValues = new ContentValues();
            contentValues.put("app_id", str11);
            contentValues.put(str5, num6);
            contentValues.put("current_results", bArrI6);
            if (zzawVarH1.X().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                zzicVar3.b().k().b(zzgu.o(str11), "Failed to insert filter results (got -1). appId");
            }
        }
        return arrayList3;
    }

    public final zzy l(Integer num) {
        if (this.f31539f.containsKey(num)) {
            return (zzy) this.f31539f.get(num);
        }
        zzy zzyVar = new zzy(this, this.d);
        this.f31539f.put(num, zzyVar);
        return zzyVar;
    }
}
