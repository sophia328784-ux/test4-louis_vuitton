package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/layout/LayoutModifier;", "Landroidx/compose/ui/Modifier$Element;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface LayoutModifier extends Modifier.Element {
    MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2);

    default int f(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return e(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getF9421c()), new MeasuringIntrinsics$DefaultIntrinsicMeasurable(intrinsicMeasurable, MeasuringIntrinsics$IntrinsicMinMax.Min, MeasuringIntrinsics$IntrinsicWidthHeight.Width), ConstraintsKt.b(0, 0, 0, i2, 7)).getF9726a();
    }

    default int u(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return e(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getF9421c()), new MeasuringIntrinsics$DefaultIntrinsicMeasurable(intrinsicMeasurable, MeasuringIntrinsics$IntrinsicMinMax.Min, MeasuringIntrinsics$IntrinsicWidthHeight.Height), ConstraintsKt.b(0, i2, 0, 0, 13)).getF9727b();
    }

    default int y(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return e(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getF9421c()), new MeasuringIntrinsics$DefaultIntrinsicMeasurable(intrinsicMeasurable, MeasuringIntrinsics$IntrinsicMinMax.Max, MeasuringIntrinsics$IntrinsicWidthHeight.Width), ConstraintsKt.b(0, 0, 0, i2, 7)).getF9726a();
    }

    default int z(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return e(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getF9421c()), new MeasuringIntrinsics$DefaultIntrinsicMeasurable(intrinsicMeasurable, MeasuringIntrinsics$IntrinsicMinMax.Max, MeasuringIntrinsics$IntrinsicWidthHeight.Height), ConstraintsKt.b(0, i2, 0, 0, 13)).getF9727b();
    }
}
