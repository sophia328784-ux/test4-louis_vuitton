package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
@LazyGridScopeMarker
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\bw\u0018\u00002\u00020\u0001\u0082\u0001\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridScope;", "", "Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface LazyGridScope {
    static /* synthetic */ void c(LazyGridScope lazyGridScope, String str, Function1 function1, Function3 function3, int i2) {
        if ((i2 & 1) != 0) {
            str = null;
        }
        if ((i2 & 2) != 0) {
            function1 = null;
        }
        lazyGridScope.b(str, function1, function3);
    }

    void b(Object obj, Function1 function1, Function3 function3);

    void d(int i2, Function1 function1, ComposableLambdaImpl composableLambdaImpl);
}
