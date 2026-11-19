package androidx.compose.foundation;

import android.view.View;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0099\u0001\u0012\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u0012\u001b\b\u0002\u0010\b\u001a\u0015\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003¢\u0006\u0002\b\u0006\u0012\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0010\u001a\u00020\t\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u000e\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Landroidx/compose/foundation/MagnifierElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/MagnifierNode;", "Lkotlin/Function1;", "Landroidx/compose/ui/unit/Density;", "Landroidx/compose/ui/geometry/Offset;", "Lkotlin/ExtensionFunctionType;", "sourceCenter", "magnifierCenter", "Landroidx/compose/ui/unit/DpSize;", "", "onSizeChanged", "", "zoom", "", "useTextDefault", "size", "Landroidx/compose/ui/unit/Dp;", "cornerRadius", "elevation", "clippingEnabled", "Landroidx/compose/foundation/PlatformMagnifierFactory;", "platformMagnifierFactory", "<init>", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MagnifierElement extends ModifierNodeElement<MagnifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f4235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f4236c;
    public final Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f4237e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f4238f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f4239h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f4240i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f4241j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final PlatformMagnifierFactory f4242k;

    /* JADX WARN: Illegal instructions before constructor call */
    public MagnifierElement(Function1 function1, Function1 function2, Function1 function3, float f2, boolean z, long j2, float f3, float f4, boolean z2, PlatformMagnifierFactory platformMagnifierFactory, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        function2 = (i2 & 2) != 0 ? null : function2;
        function3 = (i2 & 4) != 0 ? null : function3;
        f2 = (i2 & 8) != 0 ? Float.NaN : f2;
        z = (i2 & 16) != 0 ? false : z;
        if ((i2 & 32) != 0) {
            DpSize.f11009b.getClass();
            j2 = DpSize.f11010c;
        }
        if ((i2 & 64) != 0) {
            Dp.f11004c.getClass();
            f3 = Dp.f11005e;
        }
        if ((i2 & 128) != 0) {
            Dp.f11004c.getClass();
            f4 = Dp.f11005e;
        }
        this(function1, function2, function3, f2, z, j2, f3, f4, (i2 & 256) != 0 ? true : z2, platformMagnifierFactory, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new MagnifierNode(this.f4235b, this.f4236c, this.d, this.f4237e, this.f4238f, this.g, this.f4239h, this.f4240i, this.f4241j, this.f4242k, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MagnifierElement) {
            MagnifierElement magnifierElement = (MagnifierElement) obj;
            if (this.f4235b == magnifierElement.f4235b && this.f4236c == magnifierElement.f4236c && this.f4237e == magnifierElement.f4237e && this.f4238f == magnifierElement.f4238f) {
                long j2 = magnifierElement.g;
                DpSize.Companion companion = DpSize.f11009b;
                if (this.g == j2 && Dp.b(this.f4239h, magnifierElement.f4239h) && Dp.b(this.f4240i, magnifierElement.f4240i) && this.f4241j == magnifierElement.f4241j && this.d == magnifierElement.d && Intrinsics.c(this.f4242k, magnifierElement.f4242k)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        MagnifierNode magnifierNode = (MagnifierNode) node;
        float f2 = magnifierNode.s;
        long j2 = magnifierNode.u;
        float f3 = magnifierNode.v;
        boolean z = magnifierNode.t;
        float f4 = magnifierNode.w;
        boolean z2 = magnifierNode.x;
        PlatformMagnifierFactory platformMagnifierFactory = magnifierNode.y;
        View view = magnifierNode.z;
        Density density = magnifierNode.A;
        magnifierNode.p = this.f4235b;
        magnifierNode.q = this.f4236c;
        float f5 = this.f4237e;
        magnifierNode.s = f5;
        boolean z3 = this.f4238f;
        magnifierNode.t = z3;
        long j3 = this.g;
        magnifierNode.u = j3;
        float f6 = this.f4239h;
        magnifierNode.v = f6;
        float f7 = this.f4240i;
        magnifierNode.w = f7;
        boolean z4 = this.f4241j;
        magnifierNode.x = z4;
        magnifierNode.r = this.d;
        PlatformMagnifierFactory platformMagnifierFactory2 = this.f4242k;
        magnifierNode.y = platformMagnifierFactory2;
        View viewA = DelegatableNode_androidKt.a(magnifierNode);
        Density density2 = DelegatableNodeKt.f(magnifierNode).A;
        if (magnifierNode.B != null) {
            SemanticsPropertyKey semanticsPropertyKey = Magnifier_androidKt.f4245a;
            if ((!Float.isNaN(f5) || !Float.isNaN(f2)) && f5 != f2) {
                platformMagnifierFactory2.getClass();
            }
            DpSize.Companion companion = DpSize.f11009b;
            if (j3 != j2 || !Dp.b(f6, f3) || !Dp.b(f7, f4) || z3 != z || z4 != z2 || !Intrinsics.c(platformMagnifierFactory2, platformMagnifierFactory) || !viewA.equals(view) || !Intrinsics.c(density2, density)) {
                magnifierNode.i2();
            }
        }
        magnifierNode.j2();
    }

    public final int hashCode() {
        int iHashCode = this.f4235b.hashCode() * 31;
        Function1 function1 = this.f4236c;
        int iB = o60.b(pq0.b((iHashCode + (function1 != null ? function1.hashCode() : 0)) * 31, 31, this.f4237e), 31, this.f4238f);
        DpSize.Companion companion = DpSize.f11009b;
        int iA = fc.a(iB, 31, this.g);
        Dp.Companion companion2 = Dp.f11004c;
        int iB2 = o60.b(pq0.b(pq0.b(iA, 31, this.f4239h), 31, this.f4240i), 31, this.f4241j);
        Function1 function2 = this.d;
        return this.f4242k.hashCode() + ((iB2 + (function2 != null ? function2.hashCode() : 0)) * 31);
    }

    public MagnifierElement(Function1 function1, Function1 function2, Function1 function3, float f2, boolean z, long j2, float f3, float f4, boolean z2, PlatformMagnifierFactory platformMagnifierFactory, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4235b = function1;
        this.f4236c = function2;
        this.d = function3;
        this.f4237e = f2;
        this.f4238f = z;
        this.g = j2;
        this.f4239h = f3;
        this.f4240i = f4;
        this.f4241j = z2;
        this.f4242k = platformMagnifierFactory;
    }
}
