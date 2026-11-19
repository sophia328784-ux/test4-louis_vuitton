package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B5\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Lkotlin/Function0;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;", "itemProviderLambda", "Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;", "state", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "", "userScrollEnabled", "reverseScrolling", "<init>", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZ)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class LazyLayoutSemanticsModifierNode extends Modifier.Node implements SemanticsModifierNode {
    public Function0 p;
    public LazyLayoutSemanticState q;
    public Orientation r;
    public boolean s;
    public boolean t;
    public ScrollAxisRange u;
    public final e v = new e(this, 0);
    public e w;

    public LazyLayoutSemanticsModifierNode(Function0<? extends LazyLayoutItemProvider> function0, LazyLayoutSemanticState lazyLayoutSemanticState, Orientation orientation, boolean z, boolean z2) {
        this.p = function0;
        this.q = lazyLayoutSemanticState;
        this.r = orientation;
        this.s = z;
        this.t = z2;
        h2();
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.v(semanticsPropertyReceiver, true);
        semanticsPropertyReceiver.a(SemanticsProperties.N, this.v);
        Orientation orientation = this.r;
        Orientation orientation2 = Orientation.Vertical;
        ScrollAxisRange scrollAxisRange = this.u;
        if (orientation == orientation2) {
            if (scrollAxisRange == null) {
                Intrinsics.h("scrollAxisRange");
                throw null;
            }
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.w;
            KProperty kProperty = SemanticsPropertiesKt.f10359a[13];
            semanticsPropertyKey.getClass();
            semanticsPropertyReceiver.a(semanticsPropertyKey, scrollAxisRange);
        } else {
            if (scrollAxisRange == null) {
                Intrinsics.h("scrollAxisRange");
                throw null;
            }
            SemanticsPropertiesKt.l(semanticsPropertyReceiver, scrollAxisRange);
        }
        e eVar = this.w;
        if (eVar != null) {
            semanticsPropertyReceiver.a(SemanticsActions.f10306f, new AccessibilityAction(null, eVar));
        }
        SemanticsPropertiesKt.b(semanticsPropertyReceiver, new f(this, 2));
        SemanticsPropertiesKt.f(semanticsPropertyReceiver, this.q.d());
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    public final void h2() {
        this.u = new ScrollAxisRange(new f(this, 0), new f(this, 1), this.t);
        this.w = this.s ? new e(this, 1) : null;
    }
}
