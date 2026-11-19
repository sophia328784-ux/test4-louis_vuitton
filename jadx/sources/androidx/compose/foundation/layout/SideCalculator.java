package androidx.compose.foundation.layout;

import android.graphics.Insets;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bc\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/layout/SideCalculator;", "", "Companion", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
interface SideCalculator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f5041a = Companion.f5042a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/layout/SideCalculator$Companion;", "", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f5042a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final SideCalculator$Companion$LeftSideCalculator$1 f5043b = new SideCalculator$Companion$LeftSideCalculator$1();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final SideCalculator$Companion$TopSideCalculator$1 f5044c = new SideCalculator$Companion$TopSideCalculator$1();
        public static final SideCalculator$Companion$RightSideCalculator$1 d = new SideCalculator$Companion$RightSideCalculator$1();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final SideCalculator$Companion$BottomSideCalculator$1 f5045e = new SideCalculator$Companion$BottomSideCalculator$1();
    }

    default float a(float f2, float f3) {
        float fB = b(f2, f3);
        return fB < Call.Parameters.DEFAULT_CAMERA_ZOOM ? Call.Parameters.DEFAULT_CAMERA_ZOOM : fB;
    }

    float b(float f2, float f3);

    Insets c(Insets insets, int i2);

    default float d(float f2, float f3) {
        float fB = b(f2, f3);
        return fB > Call.Parameters.DEFAULT_CAMERA_ZOOM ? Call.Parameters.DEFAULT_CAMERA_ZOOM : fB;
    }

    int e(Insets insets);

    long f(float f2, long j2);

    long g(long j2);
}
