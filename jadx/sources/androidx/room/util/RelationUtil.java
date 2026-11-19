package androidx.room.util;

import androidx.collection.ArrayMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 0, 0}, xi = 48)
public abstract class RelationUtil {
    public static final void a(ArrayMap arrayMap, Function1 function1) {
        arrayMap.getClass();
        ArrayMap arrayMap2 = new ArrayMap(999);
        int i2 = arrayMap.d;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            arrayMap2.put(arrayMap.g(i3), arrayMap.k(i3));
            i3++;
            i4++;
            if (i4 == 999) {
                function1.invoke(arrayMap2);
                arrayMap2.clear();
                i4 = 0;
            }
        }
        if (i4 > 0) {
            function1.invoke(arrayMap2);
        }
    }
}
