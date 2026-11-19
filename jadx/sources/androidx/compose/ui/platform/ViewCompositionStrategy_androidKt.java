package androidx.compose.ui.platform;

import androidx.lifecycle.Lifecycle;
import defpackage.k2;
import defpackage.lc0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ViewCompositionStrategy_androidKt {
    public static final Function0 a(AbstractComposeView abstractComposeView, final Lifecycle lifecycle) {
        if (lifecycle.getF13454i().compareTo(Lifecycle.State.DESTROYED) <= 0) {
            lc0.k(abstractComposeView, " to disposeComposition at Lifecycle ON_DESTROY: ", lifecycle, "is already destroyed", "Cannot configure ");
            return null;
        }
        final k2 k2Var = new k2(abstractComposeView, 6);
        lifecycle.a(k2Var);
        return new Function0<Unit>() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy_androidKt$installForLifecycle$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                lifecycle.d(k2Var);
                return Unit.f71739a;
            }
        };
    }
}
