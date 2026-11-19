package androidx.compose.runtime.composer;

import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RememberObserverHolder;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b`\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/runtime/composer/RememberManager;", "", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface RememberManager {
    void a(Function0 function0);

    void b(ComposeNodeLifecycleCallback composeNodeLifecycleCallback);

    void c(ComposeNodeLifecycleCallback composeNodeLifecycleCallback);

    void d(RecomposeScopeImpl recomposeScopeImpl);

    void e(RecomposeScopeImpl recomposeScopeImpl);

    void f(RecomposeScopeImpl recomposeScopeImpl);

    void g(RememberObserverHolder rememberObserverHolder);

    void h(RememberObserverHolder rememberObserverHolder);
}
