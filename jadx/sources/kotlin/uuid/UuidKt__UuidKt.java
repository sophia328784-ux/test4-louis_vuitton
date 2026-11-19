package kotlin.uuid;

import defpackage.fc;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 5, mv = {2, 4, 0}, xi = 49, xs = "kotlin/uuid/UuidKt")
class UuidKt__UuidKt extends UuidKt__UuidJVMKt {
    public static final void b(int i2, String str, String str2) {
        str.getClass();
        StringBuilder sbR = fc.r(i2, "Expected ", str2, " at index ", ", but was '");
        sbR.append(str.charAt(i2));
        sbR.append('\'');
        throw new IllegalArgumentException(sbR.toString());
    }
}
