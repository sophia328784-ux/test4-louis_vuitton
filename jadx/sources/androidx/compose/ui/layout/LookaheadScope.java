package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/layout/LookaheadScope;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface LookaheadScope {
    default long c(LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2) {
        int i2 = LookaheadScopeKt.f9523a;
        LayoutCoordinates layoutCoordinatesY = y(layoutCoordinates);
        LayoutCoordinates layoutCoordinatesY2 = y(layoutCoordinates2);
        if (layoutCoordinatesY instanceof LookaheadLayoutCoordinates) {
            return ((LookaheadLayoutCoordinates) layoutCoordinatesY).u(layoutCoordinatesY2, 0L, true);
        }
        if (!(layoutCoordinatesY2 instanceof LookaheadLayoutCoordinates)) {
            return layoutCoordinatesY.u(layoutCoordinatesY, 0L, true);
        }
        long jU = ((LookaheadLayoutCoordinates) layoutCoordinatesY2).u(layoutCoordinatesY, 0L, true) ^ (-9223372034707292160L);
        Offset.Companion companion = Offset.f8806b;
        return jU;
    }

    LayoutCoordinates y(LayoutCoordinates layoutCoordinates);
}
