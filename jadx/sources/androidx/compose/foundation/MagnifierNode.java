package androidx.compose.foundation;

import android.view.View;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.jb0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u009b\u0001\u0012\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\t\u0012\u001b\b\u0002\u0010\u000b\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006¢\u0006\u0002\b\t\u0012\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0013\u001a\u00020\f\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Landroidx/compose/foundation/MagnifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/node/ObserverModifierNode;", "Lkotlin/Function1;", "Landroidx/compose/ui/unit/Density;", "Landroidx/compose/ui/geometry/Offset;", "Lkotlin/ExtensionFunctionType;", "sourceCenter", "magnifierCenter", "Landroidx/compose/ui/unit/DpSize;", "", "onSizeChanged", "", "zoom", "", "useTextDefault", "size", "Landroidx/compose/ui/unit/Dp;", "cornerRadius", "elevation", "clippingEnabled", "Landroidx/compose/foundation/PlatformMagnifierFactory;", "platformMagnifierFactory", "<init>", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MagnifierNode extends Modifier.Node implements GlobalPositionAwareModifierNode, DrawModifierNode, SemanticsModifierNode, ObserverModifierNode {
    public Density A;
    public PlatformMagnifier B;
    public final MutableState C;
    public State D;
    public long E;
    public IntSize F;
    public BufferedChannel G;
    public Function1 p;
    public Function1 q;
    public Function1 r;
    public float s;
    public boolean t;
    public long u;
    public float v;
    public float w;
    public boolean x;
    public PlatformMagnifierFactory y;
    public View z;

    /* JADX WARN: Illegal instructions before constructor call */
    public MagnifierNode(Function1 function1, Function1 function2, Function1 function3, float f2, boolean z, long j2, float f3, float f4, boolean z2, PlatformMagnifierFactory platformMagnifierFactory, int i2, DefaultConstructorMarker defaultConstructorMarker) {
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
        z2 = (i2 & 256) != 0 ? true : z2;
        if ((i2 & 512) != 0) {
            SemanticsPropertyKey semanticsPropertyKey = Magnifier_androidKt.f4245a;
            platformMagnifierFactory = PlatformMagnifierFactoryApi29Impl.f4287a;
        }
        this(function1, function2, function3, f2, z, j2, f3, f4, z2, platformMagnifierFactory, null);
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public final void F(NodeCoordinator nodeCoordinator) {
        ((SnapshotMutableStateImpl) this.C).setValue(nodeCoordinator);
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        semanticsPropertyReceiver.a(Magnifier_androidKt.f4245a, new jb0(this, 1));
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        y0();
        this.G = ChannelKt.a(0, 7, null);
        BuildersKt.c(V1(), null, CoroutineStart.UNDISPATCHED, new MagnifierNode$onAttach$1(this, null), 1);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        PlatformMagnifier platformMagnifier = this.B;
        if (platformMagnifier != null) {
            platformMagnifier.dismiss();
        }
        this.B = null;
    }

    public final long h2() {
        if (this.D == null) {
            this.D = SnapshotStateKt.e(new jb0(this, 2));
        }
        State state = this.D;
        if (state != null) {
            return ((Offset) state.getF10755b()).f8808a;
        }
        Offset.f8806b.getClass();
        return Offset.d;
    }

    public final void i2() {
        PlatformMagnifier platformMagnifier = this.B;
        if (platformMagnifier != null) {
            platformMagnifier.dismiss();
        }
        View viewA = this.z;
        if (viewA == null) {
            viewA = DelegatableNode_androidKt.a(this);
        }
        View view = viewA;
        this.z = view;
        Density density = this.A;
        if (density == null) {
            density = DelegatableNodeKt.f(this).A;
        }
        Density density2 = density;
        this.A = density2;
        this.B = this.y.a(view, this.t, this.u, this.v, this.w, this.x, density2, this.s);
        k2();
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        layoutNodeDrawScope.R1();
        BufferedChannel bufferedChannel = this.G;
        if (bufferedChannel != null) {
            bufferedChannel.b(Unit.f71739a);
            ChannelResult.Companion companion = ChannelResult.f74759b;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x005f  */
    public final void j2() {
        long jF;
        Density density = this.A;
        if (density == null) {
            density = DelegatableNodeKt.f(this).A;
            this.A = density;
        }
        long j2 = ((Offset) this.p.invoke(density)).f8808a;
        if ((j2 & 9223372034707292159L) == 9205357640488583168L || (h2() & 9223372034707292159L) == 9205357640488583168L) {
            Offset.f8806b.getClass();
            this.E = Offset.d;
            PlatformMagnifier platformMagnifier = this.B;
            if (platformMagnifier != null) {
                platformMagnifier.dismiss();
                return;
            }
            return;
        }
        this.E = Offset.f(h2(), j2);
        Function1 function1 = this.q;
        if (function1 != null) {
            long j3 = ((Offset) function1.invoke(density)).f8808a;
            Offset offset = new Offset(j3);
            if ((j3 & 9223372034707292159L) == 9205357640488583168L) {
                offset = null;
            }
            if (offset != null) {
                jF = Offset.f(h2(), offset.f8808a);
            } else {
                Offset.f8806b.getClass();
                jF = Offset.d;
            }
        } else {
            Offset.f8806b.getClass();
            jF = Offset.d;
        }
        long j4 = jF;
        if (this.B == null) {
            i2();
        }
        PlatformMagnifier platformMagnifier2 = this.B;
        if (platformMagnifier2 != null) {
            platformMagnifier2.b(this.E, j4, this.s);
        }
        k2();
    }

    public final void k2() {
        Density density;
        PlatformMagnifier platformMagnifier = this.B;
        if (platformMagnifier == null || (density = this.A) == null || IntSize.a(platformMagnifier.a(), this.F)) {
            return;
        }
        Function1 function1 = this.r;
        if (function1 != null) {
            function1.invoke(new DpSize(density.R(IntSizeKt.d(platformMagnifier.a()))));
        }
        this.F = new IntSize(platformMagnifier.a());
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void y0() {
        ObserverModifierNodeKt.a(this, new jb0(this, 0));
    }

    public MagnifierNode(Function1 function1, Function1 function2, Function1 function3, float f2, boolean z, long j2, float f3, float f4, boolean z2, PlatformMagnifierFactory platformMagnifierFactory, DefaultConstructorMarker defaultConstructorMarker) {
        this.p = function1;
        this.q = function2;
        this.r = function3;
        this.s = f2;
        this.t = z;
        this.u = j2;
        this.v = f3;
        this.w = f4;
        this.x = z2;
        this.y = platformMagnifierFactory;
        this.C = SnapshotStateKt.f(null, SnapshotStateKt.h());
        Offset.f8806b.getClass();
        this.E = Offset.d;
    }
}
