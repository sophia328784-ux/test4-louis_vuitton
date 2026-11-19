package androidx.compose.foundation.lazy;

import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyListLayoutInfoKt {
    public static final int a(LazyListLayoutInfo lazyListLayoutInfo) {
        List listG = lazyListLayoutInfo.g();
        if (listG.isEmpty()) {
            return 0;
        }
        int size = listG.size();
        int size2 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            size2 += ((LazyListItemInfo) listG.get(i2)).getSize();
        }
        return lazyListLayoutInfo.f() + (size2 / listG.size());
    }
}
