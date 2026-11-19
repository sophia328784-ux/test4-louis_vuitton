package androidx.constraintlayout.compose;

import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/constraintlayout/compose/HorizontalAnchorable;", "", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface HorizontalAnchorable {
    static void a(HorizontalAnchorable horizontalAnchorable, ConstraintLayoutBaseScope.HorizontalAnchor horizontalAnchor, float f2, int i2) {
        if ((i2 & 2) != 0) {
            Dp.Companion companion = Dp.f11004c;
            f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        Dp.Companion companion2 = Dp.f11004c;
        horizontalAnchorable.b(horizontalAnchor, f2);
    }

    void b(ConstraintLayoutBaseScope.HorizontalAnchor horizontalAnchor, float f2);
}
