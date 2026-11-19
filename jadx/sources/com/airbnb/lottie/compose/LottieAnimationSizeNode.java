package com.airbnb.lottie.compose;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/LayoutModifierNode;", "", "width", "height", "<init>", "(II)V", "lottie-compose_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LottieAnimationSizeNode extends Modifier.Node implements LayoutModifierNode {
    public int p;
    public int q;

    public LottieAnimationSizeNode(int i2, int i3) {
        this.p = i2;
        this.q = i3;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        long jA;
        measurable.getClass();
        long jD = ConstraintsKt.d(j2, IntSizeKt.a(this.p, this.q));
        if (Constraints.g(j2) == Integer.MAX_VALUE && Constraints.h(j2) != Integer.MAX_VALUE) {
            IntSize.Companion companion = IntSize.f11020b;
            int i2 = (int) (jD >> 32);
            int i3 = (this.q * i2) / this.p;
            jA = ConstraintsKt.a(i2, i2, i3, i3);
        } else if (Constraints.h(j2) != Integer.MAX_VALUE || Constraints.g(j2) == Integer.MAX_VALUE) {
            IntSize.Companion companion2 = IntSize.f11020b;
            int i4 = (int) (jD >> 32);
            int i5 = (int) (jD & BodyPartID.bodyIdMax);
            jA = ConstraintsKt.a(i4, i4, i5, i5);
        } else {
            IntSize.Companion companion3 = IntSize.f11020b;
            int i6 = (int) (jD & BodyPartID.bodyIdMax);
            int i7 = (this.p * i6) / this.q;
            jA = ConstraintsKt.a(i7, i7, i6, i6);
        }
        final Placeable placeableT = measurable.T(jA);
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: com.airbnb.lottie.compose.LottieAnimationSizeNode$measure$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                placementScope.getClass();
                Placeable.PlacementScope.y(placementScope, placeableT, 0, 0);
                return Unit.f71739a;
            }
        });
    }
}
