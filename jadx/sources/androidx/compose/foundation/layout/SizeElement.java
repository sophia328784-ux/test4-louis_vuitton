package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BP\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0017\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/foundation/layout/SizeElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/SizeNode;", "Landroidx/compose/ui/unit/Dp;", "minWidth", "minHeight", "maxWidth", "maxHeight", "", "enforceIncoming", "Lkotlin/Function1;", "Landroidx/compose/ui/platform/InspectorInfo;", "", "Lkotlin/ExtensionFunctionType;", "inspectorInfo", "<init>", "(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SizeElement extends ModifierNodeElement<SizeNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f5046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f5047c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f5048e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f5049f;
    public final Function1 g;

    /* JADX WARN: Illegal instructions before constructor call */
    public SizeElement(float f2, float f3, float f4, float f5, boolean z, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            Dp.f11004c.getClass();
            f2 = Dp.f11005e;
        }
        float f6 = f2;
        if ((i2 & 2) != 0) {
            Dp.f11004c.getClass();
            f3 = Dp.f11005e;
        }
        float f7 = f3;
        if ((i2 & 4) != 0) {
            Dp.f11004c.getClass();
            f4 = Dp.f11005e;
        }
        float f8 = f4;
        if ((i2 & 8) != 0) {
            Dp.f11004c.getClass();
            f5 = Dp.f11005e;
        }
        this(f6, f7, f8, f5, z, function1, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new SizeNode(this.f5046b, this.f5047c, this.d, this.f5048e, this.f5049f, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SizeElement)) {
            return false;
        }
        SizeElement sizeElement = (SizeElement) obj;
        return Dp.b(this.f5046b, sizeElement.f5046b) && Dp.b(this.f5047c, sizeElement.f5047c) && Dp.b(this.d, sizeElement.d) && Dp.b(this.f5048e, sizeElement.f5048e) && this.f5049f == sizeElement.f5049f;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        SizeNode sizeNode = (SizeNode) node;
        sizeNode.p = this.f5046b;
        sizeNode.q = this.f5047c;
        sizeNode.r = this.d;
        sizeNode.s = this.f5048e;
        sizeNode.t = this.f5049f;
    }

    public final int hashCode() {
        Dp.Companion companion = Dp.f11004c;
        return Boolean.hashCode(this.f5049f) + pq0.b(pq0.b(pq0.b(Float.hashCode(this.f5046b) * 31, 31, this.f5047c), 31, this.d), 31, this.f5048e);
    }

    public SizeElement(float f2, float f3, float f4, float f5, boolean z, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5046b = f2;
        this.f5047c = f3;
        this.d = f4;
        this.f5048e = f5;
        this.f5049f = z;
        this.g = function1;
    }
}
