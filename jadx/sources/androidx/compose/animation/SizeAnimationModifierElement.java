package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BW\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00128\u0010\u000e\u001a4\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r\u0018\u00010\b¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/animation/SizeAnimationModifierElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/animation/SizeAnimationModifierNode;", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "Landroidx/compose/ui/unit/IntSize;", "animationSpec", "Landroidx/compose/ui/Alignment;", "alignment", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "initialValue", "targetValue", "", "finishedListener", "<init>", "(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function2;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SizeAnimationModifierElement extends ModifierNodeElement<SizeAnimationModifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FiniteAnimationSpec f3723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Alignment f3724c;
    public final Function2 d;

    public SizeAnimationModifierElement(FiniteAnimationSpec<IntSize> finiteAnimationSpec, Alignment alignment, Function2<? super IntSize, ? super IntSize, Unit> function2) {
        this.f3723b = finiteAnimationSpec;
        this.f3724c = alignment;
        this.d = function2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new SizeAnimationModifierNode(this.f3723b, this.f3724c, this.d);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SizeAnimationModifierElement)) {
            return false;
        }
        SizeAnimationModifierElement sizeAnimationModifierElement = (SizeAnimationModifierElement) obj;
        return Intrinsics.c(sizeAnimationModifierElement.f3723b, this.f3723b) && sizeAnimationModifierElement.d == this.d && Intrinsics.c(sizeAnimationModifierElement.f3724c, this.f3724c);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        SizeAnimationModifierNode sizeAnimationModifierNode = (SizeAnimationModifierNode) node;
        sizeAnimationModifierNode.p = this.f3723b;
        sizeAnimationModifierNode.r = this.d;
        sizeAnimationModifierNode.q = this.f3724c;
    }

    public final int hashCode() {
        int iHashCode = (this.f3724c.hashCode() + (this.f3723b.hashCode() * 31)) * 31;
        Function2 function2 = this.d;
        return iHashCode + (function2 != null ? function2.hashCode() : 0);
    }
}
