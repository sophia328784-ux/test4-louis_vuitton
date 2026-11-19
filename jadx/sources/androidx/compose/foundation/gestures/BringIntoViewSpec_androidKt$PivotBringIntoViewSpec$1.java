package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1", "Landroidx/compose/foundation/gestures/BringIntoViewSpec;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1 implements BringIntoViewSpec {
    @Override // androidx.compose.foundation.gestures.BringIntoViewSpec
    public final float a(float f2, float f3, float f4) {
        float fAbs = Math.abs((f3 + f2) - f2);
        boolean z = fAbs <= f4;
        float f5 = (0.3f * f4) - (Call.Parameters.DEFAULT_CAMERA_ZOOM * fAbs);
        float f6 = f4 - f5;
        if (z && f6 < fAbs) {
            f5 = f4 - fAbs;
        }
        return f2 - f5;
    }
}
