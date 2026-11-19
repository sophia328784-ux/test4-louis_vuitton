package androidx.camera.core.internal;

import android.util.Range;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraInfoInternal;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/camera/core/internal/StreamSpecsCalculator;", "", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface StreamSpecsCalculator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StreamSpecsCalculator$Companion$NO_OP_STREAM_SPECS_CALCULATOR$1 f2488a = new StreamSpecsCalculator$Companion$NO_OP_STREAM_SPECS_CALCULATOR$1();

    StreamSpecQueryResult a(int i2, CameraInfoInternal cameraInfoInternal, ArrayList arrayList, ArrayList arrayList2, CameraConfig cameraConfig, Range range, boolean z);
}
