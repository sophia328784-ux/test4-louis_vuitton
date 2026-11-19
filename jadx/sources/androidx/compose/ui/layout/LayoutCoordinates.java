package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/layout/LayoutCoordinates;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface LayoutCoordinates {
    static long f0(LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2, int i2) {
        Offset.f8806b.getClass();
        return layoutCoordinates.u(layoutCoordinates2, 0L, (i2 & 4) != 0);
    }

    long B(long j2);

    default void C(LayoutCoordinates layoutCoordinates, float[] fArr) {
        InlineClassHelperKt.f("transformFrom is not implemented on this LayoutCoordinates");
    }

    long I(long j2);

    default void K(float[] fArr) {
        throw new UnsupportedOperationException("transformToScreen is not implemented on this LayoutCoordinates");
    }

    Rect L(LayoutCoordinates layoutCoordinates, boolean z);

    long a();

    boolean c();

    LayoutCoordinates d0();

    default long f(long j2) {
        Offset.f8806b.getClass();
        return Offset.d;
    }

    default long h(long j2) {
        Offset.f8806b.getClass();
        return Offset.d;
    }

    long h0(long j2);

    default long u(LayoutCoordinates layoutCoordinates, long j2, boolean z) {
        throw new UnsupportedOperationException("localPositionOf is not implemented on this LayoutCoordinates");
    }

    long y(LayoutCoordinates layoutCoordinates, long j2);
}
