package androidx.compose.ui.platform;

import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/platform/ViewConfiguration;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface ViewConfiguration {
    long a();

    long b();

    default float c() {
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    default float d() {
        return 2.0f;
    }

    default long e() {
        Dp.Companion companion = Dp.f11004c;
        return DpKt.a(48.0f, 48.0f);
    }

    default float f() {
        return Float.MAX_VALUE;
    }

    float g();

    default float h() {
        return 16.0f;
    }
}
