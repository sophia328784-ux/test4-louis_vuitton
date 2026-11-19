package com.iceteck.silicompressorr;

import android.content.Context;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class SiliCompressor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile SiliCompressor f35746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Context f35747b;

    /* JADX INFO: loaded from: classes3.dex */
    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f35748a;

        public Builder(Context context) {
            if (context != null) {
                this.f35748a = context.getApplicationContext();
            } else {
                md.n("Context must not be null.");
                throw null;
            }
        }
    }

    public SiliCompressor(Context context) {
        f35747b = context;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:105:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:107:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:111:0x01ff A[Catch: all -> 0x0186, Exception -> 0x0205, TRY_LEAVE, TryCatch #6 {all -> 0x0186, blocks: (B:51:0x00d0, B:53:0x00d9, B:57:0x0102, B:59:0x0118, B:60:0x0124, B:64:0x0136, B:65:0x0143, B:66:0x0148, B:68:0x014e, B:73:0x0160, B:75:0x0166, B:77:0x016c, B:79:0x0177, B:85:0x0195, B:91:0x01ad, B:93:0x01b5, B:100:0x01db, B:167:0x02dc, B:175:0x02ef, B:177:0x02f9, B:181:0x0300, B:183:0x0305, B:184:0x0308, B:187:0x0324, B:189:0x032a, B:186:0x0321, B:190:0x032e, B:191:0x0344, B:109:0x01f8, B:111:0x01ff, B:116:0x020d, B:118:0x0213, B:120:0x0218, B:124:0x021f, B:126:0x0225, B:128:0x0229, B:132:0x0236, B:136:0x024f, B:138:0x0253, B:140:0x0259, B:142:0x025f, B:144:0x0265, B:146:0x0275, B:154:0x02a5, B:157:0x02ad, B:158:0x02b7, B:159:0x02bc, B:164:0x02c7, B:212:0x03b0, B:213:0x03b7, B:215:0x03bc, B:219:0x03c5, B:221:0x03ca, B:223:0x03d2, B:226:0x03e0, B:152:0x0292, B:192:0x0345, B:193:0x0362, B:194:0x0363, B:195:0x037b, B:63:0x0131), top: B:280:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x020b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:116:0x020d A[Catch: all -> 0x0186, Exception -> 0x028e, TRY_ENTER, TryCatch #0 {Exception -> 0x028e, blocks: (B:100:0x01db, B:116:0x020d, B:118:0x0213, B:120:0x0218, B:132:0x0236, B:136:0x024f, B:138:0x0253, B:140:0x0259, B:142:0x025f, B:144:0x0265), top: B:270:0x01db }] */
    /* JADX WARN: Code duplicated, block: B:118:0x0213 A[Catch: all -> 0x0186, Exception -> 0x028e, TryCatch #0 {Exception -> 0x028e, blocks: (B:100:0x01db, B:116:0x020d, B:118:0x0213, B:120:0x0218, B:132:0x0236, B:136:0x024f, B:138:0x0253, B:140:0x0259, B:142:0x025f, B:144:0x0265), top: B:270:0x01db }] */
    /* JADX WARN: Code duplicated, block: B:120:0x0218 A[Catch: all -> 0x0186, Exception -> 0x028e, TRY_LEAVE, TryCatch #0 {Exception -> 0x028e, blocks: (B:100:0x01db, B:116:0x020d, B:118:0x0213, B:120:0x0218, B:132:0x0236, B:136:0x024f, B:138:0x0253, B:140:0x0259, B:142:0x025f, B:144:0x0265), top: B:270:0x01db }] */
    /* JADX WARN: Code duplicated, block: B:123:0x021e  */
    /* JADX WARN: Code duplicated, block: B:129:0x022b  */
    /* JADX WARN: Code duplicated, block: B:130:0x0233  */
    /* JADX WARN: Code duplicated, block: B:132:0x0236 A[Catch: all -> 0x0186, Exception -> 0x028e, TRY_ENTER, TryCatch #0 {Exception -> 0x028e, blocks: (B:100:0x01db, B:116:0x020d, B:118:0x0213, B:120:0x0218, B:132:0x0236, B:136:0x024f, B:138:0x0253, B:140:0x0259, B:142:0x025f, B:144:0x0265), top: B:270:0x01db }] */
    /* JADX WARN: Code duplicated, block: B:169:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:170:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:172:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:173:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:175:0x02ef A[Catch: all -> 0x0186, Exception -> 0x0289, TryCatch #6 {all -> 0x0186, blocks: (B:51:0x00d0, B:53:0x00d9, B:57:0x0102, B:59:0x0118, B:60:0x0124, B:64:0x0136, B:65:0x0143, B:66:0x0148, B:68:0x014e, B:73:0x0160, B:75:0x0166, B:77:0x016c, B:79:0x0177, B:85:0x0195, B:91:0x01ad, B:93:0x01b5, B:100:0x01db, B:167:0x02dc, B:175:0x02ef, B:177:0x02f9, B:181:0x0300, B:183:0x0305, B:184:0x0308, B:187:0x0324, B:189:0x032a, B:186:0x0321, B:190:0x032e, B:191:0x0344, B:109:0x01f8, B:111:0x01ff, B:116:0x020d, B:118:0x0213, B:120:0x0218, B:124:0x021f, B:126:0x0225, B:128:0x0229, B:132:0x0236, B:136:0x024f, B:138:0x0253, B:140:0x0259, B:142:0x025f, B:144:0x0265, B:146:0x0275, B:154:0x02a5, B:157:0x02ad, B:158:0x02b7, B:159:0x02bc, B:164:0x02c7, B:212:0x03b0, B:213:0x03b7, B:215:0x03bc, B:219:0x03c5, B:221:0x03ca, B:223:0x03d2, B:226:0x03e0, B:152:0x0292, B:192:0x0345, B:193:0x0362, B:194:0x0363, B:195:0x037b, B:63:0x0131), top: B:280:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:176:0x02f7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:177:0x02f9 A[Catch: all -> 0x0186, Exception -> 0x0289, TryCatch #6 {all -> 0x0186, blocks: (B:51:0x00d0, B:53:0x00d9, B:57:0x0102, B:59:0x0118, B:60:0x0124, B:64:0x0136, B:65:0x0143, B:66:0x0148, B:68:0x014e, B:73:0x0160, B:75:0x0166, B:77:0x016c, B:79:0x0177, B:85:0x0195, B:91:0x01ad, B:93:0x01b5, B:100:0x01db, B:167:0x02dc, B:175:0x02ef, B:177:0x02f9, B:181:0x0300, B:183:0x0305, B:184:0x0308, B:187:0x0324, B:189:0x032a, B:186:0x0321, B:190:0x032e, B:191:0x0344, B:109:0x01f8, B:111:0x01ff, B:116:0x020d, B:118:0x0213, B:120:0x0218, B:124:0x021f, B:126:0x0225, B:128:0x0229, B:132:0x0236, B:136:0x024f, B:138:0x0253, B:140:0x0259, B:142:0x025f, B:144:0x0265, B:146:0x0275, B:154:0x02a5, B:157:0x02ad, B:158:0x02b7, B:159:0x02bc, B:164:0x02c7, B:212:0x03b0, B:213:0x03b7, B:215:0x03bc, B:219:0x03c5, B:221:0x03ca, B:223:0x03d2, B:226:0x03e0, B:152:0x0292, B:192:0x0345, B:193:0x0362, B:194:0x0363, B:195:0x037b, B:63:0x0131), top: B:280:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:179:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:180:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:189:0x032a A[Catch: all -> 0x0186, Exception -> 0x0289, TryCatch #6 {all -> 0x0186, blocks: (B:51:0x00d0, B:53:0x00d9, B:57:0x0102, B:59:0x0118, B:60:0x0124, B:64:0x0136, B:65:0x0143, B:66:0x0148, B:68:0x014e, B:73:0x0160, B:75:0x0166, B:77:0x016c, B:79:0x0177, B:85:0x0195, B:91:0x01ad, B:93:0x01b5, B:100:0x01db, B:167:0x02dc, B:175:0x02ef, B:177:0x02f9, B:181:0x0300, B:183:0x0305, B:184:0x0308, B:187:0x0324, B:189:0x032a, B:186:0x0321, B:190:0x032e, B:191:0x0344, B:109:0x01f8, B:111:0x01ff, B:116:0x020d, B:118:0x0213, B:120:0x0218, B:124:0x021f, B:126:0x0225, B:128:0x0229, B:132:0x0236, B:136:0x024f, B:138:0x0253, B:140:0x0259, B:142:0x025f, B:144:0x0265, B:146:0x0275, B:154:0x02a5, B:157:0x02ad, B:158:0x02b7, B:159:0x02bc, B:164:0x02c7, B:212:0x03b0, B:213:0x03b7, B:215:0x03bc, B:219:0x03c5, B:221:0x03ca, B:223:0x03d2, B:226:0x03e0, B:152:0x0292, B:192:0x0345, B:193:0x0362, B:194:0x0363, B:195:0x037b, B:63:0x0131), top: B:280:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:281:0x02dc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:289:0x0305 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:301:0x01f8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:314:0x032e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:316:0x02ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:320:0x02ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x008e  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:133:0x024a
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:162)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public static java.lang.String a(android.net.Uri r24, java.lang.String r25, int r26, int r27, int r28) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1108
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iceteck.silicompressorr.SiliCompressor.a(android.net.Uri, java.lang.String, int, int, int):java.lang.String");
    }
}
