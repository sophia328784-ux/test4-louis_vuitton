package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class RowColumnImplKt {
    public static final RowColumnParentData a(IntrinsicMeasurable intrinsicMeasurable) {
        Object objE = intrinsicMeasurable.e();
        if (objE instanceof RowColumnParentData) {
            return (RowColumnParentData) objE;
        }
        return null;
    }

    public static final float b(RowColumnParentData rowColumnParentData) {
        return rowColumnParentData != null ? rowColumnParentData.f5034a : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }
}
