package androidx.compose.foundation.gestures.snapping;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001:\u0002\u0002\u0003ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/gestures/snapping/SnapPosition;", "", "Center", "Start", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface SnapPosition {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/gestures/snapping/SnapPosition$Center;", "Landroidx/compose/foundation/gestures/snapping/SnapPosition;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Center implements SnapPosition {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Center f4876a = new Center();

        @Override // androidx.compose.foundation.gestures.snapping.SnapPosition
        public final int d(int i2, int i3, int i4, int i5) {
            return (((i2 - i4) - i5) / 2) - (i3 / 2);
        }

        public final String toString() {
            return "Center";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;", "Landroidx/compose/foundation/gestures/snapping/SnapPosition;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Start implements SnapPosition {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Start f4877a = new Start();

        @Override // androidx.compose.foundation.gestures.snapping.SnapPosition
        public final int d(int i2, int i3, int i4, int i5) {
            return 0;
        }

        public final String toString() {
            return "Start";
        }
    }

    int d(int i2, int i3, int i4, int i5);
}
