package androidx.compose.foundation.layout;

import android.view.View;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.core.view.ViewCompat;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B \u0012\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/layout/SystemInsetsPaddingModifierNode;", "Landroidx/compose/foundation/layout/InsetsPaddingModifierNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/WindowInsetsHolder;", "Landroidx/compose/foundation/layout/WindowInsets;", "Lkotlin/ExtensionFunctionType;", "insetsGetter", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SystemInsetsPaddingModifierNode extends InsetsPaddingModifierNode implements LayoutModifierNode {
    public Function1 s;
    public WindowInsetsHolder t;

    public SystemInsetsPaddingModifierNode(Function1<? super WindowInsetsHolder, ? extends WindowInsets> function1) {
        super(WindowInsetsKt.f5085a);
        this.s = function1;
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode, androidx.compose.ui.Modifier.Node
    public final void Z1() {
        View viewA = DelegatableNode_androidKt.a(this);
        WindowInsetsHolder.y.getClass();
        WindowInsetsHolder windowInsetsHolderD = WindowInsetsHolder.Companion.d(viewA);
        windowInsetsHolderD.a(viewA);
        WindowInsets windowInsets = (WindowInsets) this.s.invoke(windowInsetsHolderD);
        if (!Intrinsics.c(windowInsets, this.r)) {
            this.r = windowInsets;
            i2();
        }
        this.t = windowInsetsHolderD;
        super.Z1();
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode, androidx.compose.ui.Modifier.Node
    public final void a2() {
        View viewA = DelegatableNode_androidKt.a(this);
        WindowInsetsHolder windowInsetsHolder = this.t;
        if (windowInsetsHolder != null) {
            int i2 = windowInsetsHolder.w - 1;
            windowInsetsHolder.w = i2;
            if (i2 == 0) {
                ViewCompat.x(viewA, null);
                ViewCompat.A(viewA, null);
                viewA.removeOnAttachStateChangeListener(windowInsetsHolder.x);
            }
        }
        super.a2();
    }
}
