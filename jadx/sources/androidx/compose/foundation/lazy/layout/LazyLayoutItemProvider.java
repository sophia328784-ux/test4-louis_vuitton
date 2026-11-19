package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.Composer;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface LazyLayoutItemProvider {
    int b();

    default int c(Object obj) {
        return -1;
    }

    default Object d(int i2) {
        return new DefaultLazyKey(i2);
    }

    default Object f(int i2) {
        return null;
    }

    void i(int i2, Object obj, Composer composer, int i3);
}
