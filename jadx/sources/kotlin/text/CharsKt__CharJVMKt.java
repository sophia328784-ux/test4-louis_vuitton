package kotlin.text;

import defpackage.bm;
import defpackage.fc;
import kotlin.IgnorableReturnValue;
import kotlin.Metadata;
import kotlin.ranges.IntRange;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0004\u001a\u0017\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0001¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"", "radix", "checkRadix", "(I)I", "kotlin-stdlib"}, k = 5, mv = {2, 4, 0}, xi = 49, xs = "kotlin/text/CharsKt")
public class CharsKt__CharJVMKt {
    @IgnorableReturnValue
    public static int checkRadix(int i2) {
        if (2 <= i2 && i2 < 37) {
            return i2;
        }
        bm.e(new IntRange(2, 36), fc.q(i2, "radix ", " was not in valid range "));
        return 0;
    }
}
