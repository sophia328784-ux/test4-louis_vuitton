package androidx.compose.foundation.lazy.layout;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyLayoutItemProviderKt {
    public static final int a(int i2, LazyLayoutItemProvider lazyLayoutItemProvider, Object obj) {
        int iC;
        return (obj == null || lazyLayoutItemProvider.b() == 0 || (i2 < lazyLayoutItemProvider.b() && obj.equals(lazyLayoutItemProvider.d(i2))) || (iC = lazyLayoutItemProvider.c(obj)) == -1) ? i2 : iC;
    }
}
