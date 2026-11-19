package com.perfectcorp.uma.countly;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
final class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p f43204a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f43205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f43206c;
    private final WeakReference<d.b> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f43207e;

    public a(String str, p pVar, b bVar, d.b bVar2, boolean z) {
        this.f43205b = str;
        this.f43204a = pVar;
        this.f43206c = bVar;
        this.d = new WeakReference<>(bVar2);
        this.f43207e = z;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x019f */
    /* JADX WARN: Code duplicated, block: B:123:0x027f  */
    /* JADX WARN: Code duplicated, block: B:137:0x01d5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:141:0x0210 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:147:0x01bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:152:0x01ff A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:158:0x0275 A[EDGE_INSN: B:158:0x0275->B:121:0x0275 BREAK  A[LOOP:0: B:2:0x0000->B:161:0x0000], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:159:0x01d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:160:0x0206 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x0130 A[EDGE_INSN: B:164:0x0130->B:59:0x0130 BREAK  A[LOOP:1: B:54:0x0121->B:56:0x0128], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:166:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x0078  */
    /* JADX WARN: Code duplicated, block: B:33:0x0081  */
    /* JADX WARN: Code duplicated, block: B:37:0x009c  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b5 A[Catch: all -> 0x00e6, TryCatch #5 {all -> 0x00e6, blocks: (B:39:0x00af, B:41:0x00b5, B:43:0x00db, B:45:0x00df, B:48:0x00ea, B:50:0x00ee, B:51:0x00f6), top: B:143:0x00af }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00db A[Catch: all -> 0x00e6, TryCatch #5 {all -> 0x00e6, blocks: (B:39:0x00af, B:41:0x00b5, B:43:0x00db, B:45:0x00df, B:48:0x00ea, B:50:0x00ee, B:51:0x00f6), top: B:143:0x00af }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00ee A[Catch: all -> 0x00e6, TryCatch #5 {all -> 0x00e6, blocks: (B:39:0x00af, B:41:0x00b5, B:43:0x00db, B:45:0x00df, B:48:0x00ea, B:50:0x00ee, B:51:0x00f6), top: B:143:0x00af }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0128 A[Catch: all -> 0x012c, LOOP:1: B:54:0x0121->B:56:0x0128, LOOP_END, TryCatch #6 {all -> 0x012c, blocks: (B:53:0x011a, B:54:0x0121, B:56:0x0128, B:59:0x0130, B:61:0x0134, B:68:0x0148, B:71:0x0169, B:73:0x0182), top: B:145:0x011a }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0134 A[Catch: all -> 0x012c, TryCatch #6 {all -> 0x012c, blocks: (B:53:0x011a, B:54:0x0121, B:56:0x0128, B:59:0x0130, B:61:0x0134, B:68:0x0148, B:71:0x0169, B:73:0x0182), top: B:145:0x011a }] */
    /* JADX WARN: Code duplicated, block: B:63:0x013f  */
    /* JADX WARN: Code duplicated, block: B:66:0x0145  */
    /* JADX WARN: Code duplicated, block: B:68:0x0148 A[Catch: all -> 0x012c, TryCatch #6 {all -> 0x012c, blocks: (B:53:0x011a, B:54:0x0121, B:56:0x0128, B:59:0x0130, B:61:0x0134, B:68:0x0148, B:71:0x0169, B:73:0x0182), top: B:145:0x011a }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0166  */
    /* JADX WARN: Code duplicated, block: B:71:0x0169 A[Catch: all -> 0x012c, TryCatch #6 {all -> 0x012c, blocks: (B:53:0x011a, B:54:0x0121, B:56:0x0128, B:59:0x0130, B:61:0x0134, B:68:0x0148, B:71:0x0169, B:73:0x0182), top: B:145:0x011a }] */
    /* JADX WARN: Code duplicated, block: B:77:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:79:0x01a6 A[Catch: all -> 0x019f, TRY_ENTER, TryCatch #14 {, blocks: (B:52:0x010e, B:79:0x01a6, B:80:0x01bb, B:85:0x01d0, B:92:0x01e3, B:94:0x01ed, B:102:0x020f, B:81:0x01bc, B:82:0x01c3), top: B:154:0x010e, inners: #7 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x01dc A[EDGE_INSN: B:91:0x01dc->B:121:0x0275 BREAK  A[LOOP:0: B:2:0x0000->B:161:0x0000]] */
    /* JADX WARN: Code duplicated, block: B:92:0x01e3 A[Catch: all -> 0x019f, TRY_ENTER, TryCatch #14 {, blocks: (B:52:0x010e, B:79:0x01a6, B:80:0x01bb, B:85:0x01d0, B:92:0x01e3, B:94:0x01ed, B:102:0x020f, B:81:0x01bc, B:82:0x01c3), top: B:154:0x010e, inners: #7 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01ed A[Catch: all -> 0x019f, TRY_LEAVE, TryCatch #14 {, blocks: (B:52:0x010e, B:79:0x01a6, B:80:0x01bb, B:85:0x01d0, B:92:0x01e3, B:94:0x01ed, B:102:0x020f, B:81:0x01bc, B:82:0x01c3), top: B:154:0x010e, inners: #7 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:41:0x00b5, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:68:0x0148, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:79:0x01a6, please report this as an issue */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 649
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.perfectcorp.uma.countly.a.run():void");
    }
}
