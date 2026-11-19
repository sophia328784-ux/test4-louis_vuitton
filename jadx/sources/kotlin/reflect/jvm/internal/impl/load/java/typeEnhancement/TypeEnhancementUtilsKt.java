package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TypeEnhancementUtilsKt {
    public static final Object a(Set set, Enum r2, Enum r3, Enum r4, boolean z) {
        Set setB0;
        Enum r1;
        if (!z) {
            if (r4 != null && (setB0 = CollectionsKt.B0(SetsKt.g(set, r4))) != null) {
                set = setB0;
            }
            return CollectionsKt.i0(set);
        }
        if (set.contains(r2)) {
            r1 = r2;
        } else {
            r1 = set.contains(r3) ? r3 : null;
        }
        if (Intrinsics.c(r1, r2) && Intrinsics.c(r4, r3)) {
            return null;
        }
        return r4 == null ? r1 : r4;
    }
}
