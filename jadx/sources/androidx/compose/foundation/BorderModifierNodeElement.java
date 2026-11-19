package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawModifierNode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.unit.Dp;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/BorderModifierNodeElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/BorderModifierNode;", "Landroidx/compose/ui/unit/Dp;", "width", "Landroidx/compose/ui/graphics/Brush;", "brush", "Landroidx/compose/ui/graphics/Shape;", "shape", "<init>", "(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class BorderModifierNodeElement extends ModifierNodeElement<BorderModifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f4152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Brush f4153c;
    public final Shape d;

    public BorderModifierNodeElement(float f2, Brush brush, Shape shape, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4152b = f2;
        this.f4153c = brush;
        this.d = shape;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new BorderModifierNode(this.f4152b, this.f4153c, this.d, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BorderModifierNodeElement)) {
            return false;
        }
        BorderModifierNodeElement borderModifierNodeElement = (BorderModifierNodeElement) obj;
        return Dp.b(this.f4152b, borderModifierNodeElement.f4152b) && Intrinsics.c(this.f4153c, borderModifierNodeElement.f4153c) && Intrinsics.c(this.d, borderModifierNodeElement.d);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        BorderModifierNode borderModifierNode = (BorderModifierNode) node;
        float f2 = borderModifierNode.s;
        CacheDrawModifierNode cacheDrawModifierNode = borderModifierNode.v;
        float f3 = this.f4152b;
        if (!Dp.b(f2, f3)) {
            borderModifierNode.s = f3;
            cacheDrawModifierNode.R0();
        }
        Brush brush = borderModifierNode.t;
        Brush brush2 = this.f4153c;
        if (!Intrinsics.c(brush, brush2)) {
            borderModifierNode.t = brush2;
            cacheDrawModifierNode.R0();
        }
        Shape shape = borderModifierNode.u;
        Shape shape2 = this.d;
        if (Intrinsics.c(shape, shape2)) {
            return;
        }
        borderModifierNode.u = shape2;
        cacheDrawModifierNode.R0();
        SemanticsModifierNodeKt.b(borderModifierNode);
    }

    public final int hashCode() {
        Dp.Companion companion = Dp.f11004c;
        return this.d.hashCode() + ((this.f4153c.hashCode() + (Float.hashCode(this.f4152b) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BorderModifierNodeElement(width=");
        fc.w(this.f4152b, ", brush=", sb);
        sb.append(this.f4153c);
        sb.append(", shape=");
        sb.append(this.d);
        sb.append(')');
        return sb.toString();
    }
}
