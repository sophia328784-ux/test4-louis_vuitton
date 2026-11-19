package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;", "Landroidx/compose/ui/unit/Dp;", "minWidth", "minHeight", "<init>", "(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class UnspecifiedConstraintsElement extends ModifierNodeElement<UnspecifiedConstraintsNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f5065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f5066c;

    /* JADX WARN: Illegal instructions before constructor call */
    public UnspecifiedConstraintsElement(float f2, float f3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            Dp.f11004c.getClass();
            f2 = Dp.f11005e;
        }
        if ((i2 & 2) != 0) {
            Dp.f11004c.getClass();
            f3 = Dp.f11005e;
        }
        this(f2, f3, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new UnspecifiedConstraintsNode(this.f5065b, this.f5066c, null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof UnspecifiedConstraintsElement)) {
            return false;
        }
        UnspecifiedConstraintsElement unspecifiedConstraintsElement = (UnspecifiedConstraintsElement) obj;
        return Dp.b(this.f5065b, unspecifiedConstraintsElement.f5065b) && Dp.b(this.f5066c, unspecifiedConstraintsElement.f5066c);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        UnspecifiedConstraintsNode unspecifiedConstraintsNode = (UnspecifiedConstraintsNode) node;
        unspecifiedConstraintsNode.p = this.f5065b;
        unspecifiedConstraintsNode.q = this.f5066c;
    }

    public final int hashCode() {
        Dp.Companion companion = Dp.f11004c;
        return Float.hashCode(this.f5066c) + (Float.hashCode(this.f5065b) * 31);
    }

    public UnspecifiedConstraintsElement(float f2, float f3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5065b = f2;
        this.f5066c = f3;
    }
}
