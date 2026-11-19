package androidx.compose.foundation;

import androidx.compose.foundation.ScrollNode;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import defpackage.zd;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u001f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/ScrollNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/foundation/ScrollState;", "state", "", "reverseScrolling", "isVertical", "<init>", "(Landroidx/compose/foundation/ScrollState;ZZ)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ScrollNode extends Modifier.Node implements LayoutModifierNode, SemanticsModifierNode {
    public ScrollState p;
    public boolean q;
    public boolean r;

    public ScrollNode(ScrollState scrollState, boolean z, boolean z2) {
        this.p = scrollState;
        this.q = z;
        this.r = z2;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        final int i2 = 1;
        SemanticsPropertiesKt.v(semanticsPropertyReceiver, true);
        final int i3 = 0;
        ScrollAxisRange scrollAxisRange = new ScrollAxisRange(new Function0(this) { // from class: gu0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ScrollNode f69493c;

            {
                this.f69493c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int iF;
                int i4 = i3;
                ScrollNode scrollNode = this.f69493c;
                switch (i4) {
                    case 0:
                        iF = ((SnapshotMutableIntStateImpl) scrollNode.p.f4290a).f();
                        break;
                    default:
                        iF = scrollNode.p.g();
                        break;
                }
                return Float.valueOf(iF);
            }
        }, new Function0(this) { // from class: gu0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ScrollNode f69493c;

            {
                this.f69493c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int iF;
                int i4 = i2;
                ScrollNode scrollNode = this.f69493c;
                switch (i4) {
                    case 0:
                        iF = ((SnapshotMutableIntStateImpl) scrollNode.p.f4290a).f();
                        break;
                    default:
                        iF = scrollNode.p.g();
                        break;
                }
                return Float.valueOf(iF);
            }
        }, this.q);
        if (!this.r) {
            SemanticsPropertiesKt.l(semanticsPropertyReceiver, scrollAxisRange);
            return;
        }
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.w;
        KProperty kProperty = SemanticsPropertiesKt.f10359a[13];
        semanticsPropertyKey.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey, scrollAxisRange);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        CheckScrollableContainerConstraintsKt.a(j2, this.r ? Orientation.Vertical : Orientation.Horizontal);
        Placeable placeableT = measurable.T(Constraints.a(j2, 0, this.r ? Constraints.h(j2) : Integer.MAX_VALUE, 0, this.r ? Integer.MAX_VALUE : Constraints.g(j2), 5));
        int i2 = placeableT.f9548b;
        int iH = Constraints.h(j2);
        if (i2 > iH) {
            i2 = iH;
        }
        int i3 = placeableT.f9549c;
        int iG = Constraints.g(j2);
        if (i3 > iG) {
            i3 = iG;
        }
        int i4 = placeableT.f9549c - i3;
        int i5 = placeableT.f9548b - i2;
        if (!this.r) {
            i4 = i5;
        }
        ScrollState scrollState = this.p;
        MutableIntState mutableIntState = scrollState.f4293e;
        MutableIntState mutableIntState2 = scrollState.f4290a;
        ((SnapshotMutableIntStateImpl) mutableIntState).i(i4);
        Snapshot.f8462e.getClass();
        Snapshot snapshotA = Snapshot.Companion.a();
        Function1 f8547i = snapshotA != null ? snapshotA.getF8547i() : null;
        Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
        try {
            if (((SnapshotMutableIntStateImpl) mutableIntState2).f() > i4) {
                ((SnapshotMutableIntStateImpl) mutableIntState2).i(i4);
            }
            Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
            ((SnapshotMutableIntStateImpl) this.p.f4291b).i(this.r ? i3 : i2);
            ((SnapshotMutableIntStateImpl) this.p.f4292c).i(this.r ? placeableT.f9549c : placeableT.f9548b);
            return measureScope.V0(i2, i3, MapsKt.c(), new zd(this, i4, placeableT, 15));
        } catch (Throwable th) {
            Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
            throw th;
        }
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int f(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        if (this.r) {
            i2 = Integer.MAX_VALUE;
        }
        return intrinsicMeasurable.M(i2);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int u(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        if (!this.r) {
            i2 = Integer.MAX_VALUE;
        }
        return intrinsicMeasurable.H(i2);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int y(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        if (this.r) {
            i2 = Integer.MAX_VALUE;
        }
        return intrinsicMeasurable.S(i2);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int z(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        if (!this.r) {
            i2 = Integer.MAX_VALUE;
        }
        return intrinsicMeasurable.l(i2);
    }
}
