package kotlin.reflect.jvm.internal.impl.utils;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CollectionsKt {
    public static final List a(ArrayList arrayList) {
        arrayList.getClass();
        int size = arrayList.size();
        if (size == 0) {
            return EmptyList.f71768b;
        }
        if (size == 1) {
            return kotlin.collections.CollectionsKt.O(kotlin.collections.CollectionsKt.B(arrayList));
        }
        arrayList.trimToSize();
        return arrayList;
    }
}
