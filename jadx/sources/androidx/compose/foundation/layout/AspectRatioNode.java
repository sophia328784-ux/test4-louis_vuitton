package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import defpackage.a2;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/layout/AspectRatioNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "", "aspectRatio", "", "matchHeightConstraintsFirst", "<init>", "(FZ)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class AspectRatioNode extends Modifier.Node implements LayoutModifierNode {
    public float p;
    public boolean q;

    public AspectRatioNode(float f2, boolean z) {
        this.p = f2;
        this.q = z;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00ca  */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        long jH2;
        int i2 = 1;
        if (this.q) {
            jH2 = h2(j2, true);
            IntSize.f11020b.getClass();
            if (IntSize.b(jH2, 0L)) {
                jH2 = i2(j2, true);
                if (IntSize.b(jH2, 0L)) {
                    jH2 = j2(j2, true);
                    if (IntSize.b(jH2, 0L)) {
                        jH2 = k2(j2, true);
                        if (IntSize.b(jH2, 0L)) {
                            jH2 = h2(j2, false);
                            if (IntSize.b(jH2, 0L)) {
                                jH2 = i2(j2, false);
                                if (IntSize.b(jH2, 0L)) {
                                    jH2 = j2(j2, false);
                                    if (IntSize.b(jH2, 0L)) {
                                        jH2 = k2(j2, false);
                                        if (IntSize.b(jH2, 0L)) {
                                            IntSize.f11020b.getClass();
                                            jH2 = 0;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else {
            jH2 = i2(j2, true);
            IntSize.f11020b.getClass();
            if (IntSize.b(jH2, 0L)) {
                jH2 = h2(j2, true);
                if (IntSize.b(jH2, 0L)) {
                    jH2 = k2(j2, true);
                    if (IntSize.b(jH2, 0L)) {
                        jH2 = j2(j2, true);
                        if (IntSize.b(jH2, 0L)) {
                            jH2 = i2(j2, false);
                            if (IntSize.b(jH2, 0L)) {
                                jH2 = h2(j2, false);
                                if (IntSize.b(jH2, 0L)) {
                                    jH2 = k2(j2, false);
                                    if (IntSize.b(jH2, 0L)) {
                                        jH2 = j2(j2, false);
                                        if (IntSize.b(jH2, 0L)) {
                                            IntSize.f11020b.getClass();
                                            jH2 = 0;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        IntSize.f11020b.getClass();
        if (!IntSize.b(jH2, 0L)) {
            Constraints.Companion companion = Constraints.f10998b;
            int i3 = (int) (BodyPartID.bodyIdMax & jH2);
            companion.getClass();
            j2 = Constraints.Companion.c((int) (jH2 >> 32), i3);
        }
        Placeable placeableT = measurable.T(j2);
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new a2(placeableT, i2));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int f(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return i2 != Integer.MAX_VALUE ? Math.round(i2 * this.p) : intrinsicMeasurable.M(i2);
    }

    public final long h2(long j2, boolean z) {
        int iRound;
        int iG = Constraints.g(j2);
        if (iG == Integer.MAX_VALUE || (iRound = Math.round(iG * this.p)) <= 0 || (z && !AspectRatioKt.b(iRound, iG, j2))) {
            IntSize.f11020b.getClass();
            return 0L;
        }
        long j3 = (((long) iRound) << 32) | (((long) iG) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        return j3;
    }

    public final long i2(long j2, boolean z) {
        int iRound;
        int iH = Constraints.h(j2);
        if (iH == Integer.MAX_VALUE || (iRound = Math.round(iH / this.p)) <= 0 || (z && !AspectRatioKt.b(iH, iRound, j2))) {
            IntSize.f11020b.getClass();
            return 0L;
        }
        long j3 = (((long) iH) << 32) | (((long) iRound) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        return j3;
    }

    public final long j2(long j2, boolean z) {
        int i2 = Constraints.i(j2);
        int iRound = Math.round(i2 * this.p);
        if (iRound <= 0 || (z && !AspectRatioKt.b(iRound, i2, j2))) {
            IntSize.f11020b.getClass();
            return 0L;
        }
        long j3 = (((long) iRound) << 32) | (((long) i2) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        return j3;
    }

    public final long k2(long j2, boolean z) {
        int iJ = Constraints.j(j2);
        int iRound = Math.round(iJ / this.p);
        if (iRound <= 0 || (z && !AspectRatioKt.b(iJ, iRound, j2))) {
            IntSize.f11020b.getClass();
            return 0L;
        }
        long j3 = (((long) iJ) << 32) | (((long) iRound) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        return j3;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int u(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return i2 != Integer.MAX_VALUE ? Math.round(i2 / this.p) : intrinsicMeasurable.H(i2);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int y(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return i2 != Integer.MAX_VALUE ? Math.round(i2 * this.p) : intrinsicMeasurable.S(i2);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int z(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return i2 != Integer.MAX_VALUE ? Math.round(i2 / this.p) : intrinsicMeasurable.l(i2);
    }
}
