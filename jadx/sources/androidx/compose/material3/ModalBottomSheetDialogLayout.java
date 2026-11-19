package androidx.compose.material3;

import android.content.Context;
import android.view.Window;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.window.DialogWindowProvider;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/material3/ModalBottomSheetDialogLayout;", "Landroidx/compose/ui/platform/AbstractComposeView;", "Landroidx/compose/ui/window/DialogWindowProvider;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroid/view/Window;", "window", "<init>", "(Landroid/content/Context;Landroid/view/Window;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class ModalBottomSheetDialogLayout extends AbstractComposeView implements DialogWindowProvider {
    public static final /* synthetic */ int o = 0;
    public final Window l;
    public final MutableState m;
    public boolean n;

    public ModalBottomSheetDialogLayout(Context context, Window window) {
        super(context, null, 0, 6, null);
        this.l = window;
        ComposableSingletons$ModalBottomSheet_androidKt.f6712a.getClass();
        this.m = SnapshotStateKt.g(ComposableSingletons$ModalBottomSheet_androidKt.f6713b);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void a(Composer composer, final int i2) {
        GapComposer gapComposerH = composer.h(576708319);
        int i3 = (gapComposerH.y(this) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ((Function2) ((SnapshotMutableStateImpl) this.m).getF10755b()).invoke(gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(i2) { // from class: androidx.compose.material3.k
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int i4 = ModalBottomSheetDialogLayout.o;
                    int iA = RecomposeScopeImplKt.a(1);
                    this.f7692b.a((Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    /* JADX INFO: renamed from: getShouldCreateCompositionOnAttachedToWindow, reason: from getter */
    public final boolean getQ() {
        return this.n;
    }

    @Override // androidx.compose.ui.window.DialogWindowProvider
    /* JADX INFO: renamed from: getWindow, reason: from getter */
    public final Window getL() {
        return this.l;
    }
}
