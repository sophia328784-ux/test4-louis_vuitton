package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class WindowInsetsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FixedIntInsets f5085a = new FixedIntInsets(0, 0, 0, 0);

    public static final WindowInsets a() {
        return new FixedIntInsets(0, 0, 0, 0);
    }

    public static WindowInsets b(int i2, int i3) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return new FixedIntInsets(0, i2, 0, 0);
    }

    public static final WindowInsets c(float f2, float f3) {
        return new FixedDpInsets(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, null);
    }

    public static WindowInsets d(float f2, int i2) {
        if ((i2 & 1) != 0) {
            Dp.Companion companion = Dp.f11004c;
        }
        Dp.Companion companion2 = Dp.f11004c;
        if ((i2 & 8) != 0) {
            f2 = 0.0f;
        }
        return c(Call.Parameters.DEFAULT_CAMERA_ZOOM, f2);
    }

    public static final PaddingValues e(WindowInsets windowInsets, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return new InsetsPaddingValues(windowInsets, (Density) composer.k(CompositionLocalsKt.f10031h));
    }

    public static final PaddingValues f(WindowInsets windowInsets, SubcomposeMeasureScope subcomposeMeasureScope) {
        return new InsetsPaddingValues(windowInsets, subcomposeMeasureScope);
    }

    public static final WindowInsets g(WindowInsets windowInsets, WindowInsets windowInsets2) {
        return new ExcludeInsets(windowInsets, windowInsets2);
    }

    public static final WindowInsets h(WindowInsets windowInsets, int i2) {
        return new LimitInsets(windowInsets, i2, null);
    }

    public static final WindowInsets i(AndroidWindowInsets androidWindowInsets, AndroidWindowInsets androidWindowInsets2) {
        return new UnionInsets(androidWindowInsets, androidWindowInsets2);
    }
}
