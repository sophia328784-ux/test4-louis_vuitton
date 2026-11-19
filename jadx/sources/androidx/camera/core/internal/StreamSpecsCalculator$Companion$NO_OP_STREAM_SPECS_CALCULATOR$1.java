package androidx.camera.core.internal;

import android.util.Range;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraInfoInternal;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/camera/core/internal/StreamSpecsCalculator$Companion$NO_OP_STREAM_SPECS_CALCULATOR$1", "Landroidx/camera/core/internal/StreamSpecsCalculator;", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class StreamSpecsCalculator$Companion$NO_OP_STREAM_SPECS_CALCULATOR$1 implements StreamSpecsCalculator {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.core.internal.StreamSpecsCalculator
    public final StreamSpecQueryResult a(int i2, CameraInfoInternal cameraInfoInternal, ArrayList arrayList, ArrayList arrayList2, CameraConfig cameraConfig, Range range, boolean z) {
        cameraInfoInternal.getClass();
        cameraConfig.getClass();
        range.getClass();
        return new StreamSpecQueryResult(null, 0, 3, 0 == true ? 1 : 0);
    }
}
