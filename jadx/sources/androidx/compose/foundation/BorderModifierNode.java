package androidx.compose.foundation;

import androidx.compose.ui.draw.CacheDrawModifierNode;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/BorderModifierNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/unit/Dp;", "widthParameter", "Landroidx/compose/ui/graphics/Brush;", "brushParameter", "Landroidx/compose/ui/graphics/Shape;", "shapeParameter", "<init>", "(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BorderModifierNode extends DelegatingNode implements SemanticsModifierNode {
    public BorderCache r;
    public float s;
    public Brush t;
    public Shape u;
    public final CacheDrawModifierNode v;

    public BorderModifierNode(float f2, Brush brush, Shape shape, DefaultConstructorMarker defaultConstructorMarker) {
        this.s = f2;
        this.t = brush;
        this.u = shape;
        CacheDrawModifierNode cacheDrawModifierNodeA = DrawModifierKt.a(new b(this, 0));
        h2(cacheDrawModifierNodeA);
        this.v = cacheDrawModifierNodeA;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean J() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.q(semanticsPropertyReceiver, this.u);
    }
}
