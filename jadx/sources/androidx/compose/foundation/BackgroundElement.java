package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BF\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0017\u0010\u000f\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/compose/foundation/BackgroundElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/BackgroundNode;", "Landroidx/compose/ui/graphics/Color;", "color", "Landroidx/compose/ui/graphics/Brush;", "brush", "", "alpha", "Landroidx/compose/ui/graphics/Shape;", "shape", "Lkotlin/Function1;", "Landroidx/compose/ui/platform/InspectorInfo;", "", "Lkotlin/ExtensionFunctionType;", "inspectorInfo", "<init>", "(JLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class BackgroundElement extends ModifierNodeElement<BackgroundNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f4145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Brush f4146c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Shape f4147e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Function1 f4148f;

    /* JADX WARN: Illegal instructions before constructor call */
    public BackgroundElement(long j2, Brush brush, float f2, Shape shape, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            Color.f8866b.getClass();
            j2 = Color.f8871i;
        }
        this(j2, (i2 & 2) != 0 ? null : brush, f2, shape, function1, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new BackgroundNode(this.f4145b, this.f4146c, this.d, this.f4147e, null);
    }

    public final boolean equals(Object obj) {
        BackgroundElement backgroundElement = obj instanceof BackgroundElement ? (BackgroundElement) obj : null;
        return backgroundElement != null && Color.c(this.f4145b, backgroundElement.f4145b) && Intrinsics.c(this.f4146c, backgroundElement.f4146c) && this.d == backgroundElement.d && Intrinsics.c(this.f4147e, backgroundElement.f4147e);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        BackgroundNode backgroundNode = (BackgroundNode) node;
        backgroundNode.p = this.f4145b;
        backgroundNode.q = this.f4146c;
        backgroundNode.r = this.d;
        Shape shape = backgroundNode.s;
        Shape shape2 = this.f4147e;
        if (!Intrinsics.c(shape, shape2)) {
            backgroundNode.s = shape2;
            SemanticsModifierNodeKt.b(backgroundNode);
        }
        DrawModifierNodeKt.a(backgroundNode);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        int iHashCode = Long.hashCode(this.f4145b) * 31;
        Brush brush = this.f4146c;
        return this.f4147e.hashCode() + pq0.b((iHashCode + (brush != null ? brush.hashCode() : 0)) * 31, 31, this.d);
    }

    public BackgroundElement(long j2, Brush brush, float f2, Shape shape, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4145b = j2;
        this.f4146c = brush;
        this.d = f2;
        this.f4147e = shape;
        this.f4148f = function1;
    }
}
