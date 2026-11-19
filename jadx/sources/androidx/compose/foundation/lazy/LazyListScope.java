package androidx.compose.foundation.lazy;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import defpackage.d3;
import defpackage.k0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes.dex */
@LazyScopeMarker
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/lazy/LazyListScope;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface LazyListScope {
    static /* synthetic */ void f(LazyListScope lazyListScope, String str, Function3 function3, int i2) {
        if ((i2 & 1) != 0) {
            str = null;
        }
        lazyListScope.g(str, function3);
    }

    static /* synthetic */ void j(LazyListScope lazyListScope, int i2, k0 k0Var, com.vuitton.android.presentation.screen.plp.components.subcomponents.a aVar, Function4 function4, int i3) {
        if ((i3 & 2) != 0) {
            k0Var = null;
        }
        Function1 function1 = aVar;
        if ((i3 & 4) != 0) {
            function1 = LazyListScope$items$1.f5225b;
        }
        lazyListScope.h(i2, k0Var, function1, function4);
    }

    default void a(Function4 function4) {
        g(null, new ComposableLambdaImpl(1691919627, true, new d3(function4, 27)));
    }

    default void g(Object obj, Function3 function3) {
        throw new IllegalStateException("The method is not implemented");
    }

    default void h(int i2, Function1 function1, Function1 function2, Function4 function4) {
        throw new IllegalStateException("The method is not implemented");
    }
}
