package androidx.window.layout;

import android.content.Context;
import android.os.Build;
import androidx.window.layout.util.DensityCompatHelper;
import androidx.window.layout.util.WindowMetricsCompatHelper;
import androidx.window.layout.util.WindowMetricsCompatHelperApi30Impl;
import androidx.window.layout.util.WindowMetricsCompatHelperApi34Impl;
import androidx.window.layout.util.WindowMetricsCompatHelperBaseImpl;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/window/layout/WindowMetricsCalculatorCompat;", "Landroidx/window/layout/WindowMetricsCalculator;", "Landroidx/window/layout/util/DensityCompatHelper;", "densityCompatHelper", "<init>", "(Landroidx/window/layout/util/DensityCompatHelper;)V", "window_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class WindowMetricsCalculatorCompat implements WindowMetricsCalculator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DensityCompatHelper f20196b;

    public WindowMetricsCalculatorCompat(DensityCompatHelper densityCompatHelper) {
        densityCompatHelper.getClass();
        this.f20196b = densityCompatHelper;
        CollectionsKt.l(1, 2, 4, 8, 16, 32, 64, 128);
    }

    @Override // androidx.window.layout.WindowMetricsCalculator
    public final WindowMetrics a(Context context) {
        WindowMetricsCompatHelper windowMetricsCompatHelper;
        context.getClass();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 34) {
            windowMetricsCompatHelper = WindowMetricsCompatHelperApi34Impl.f20203a;
        } else {
            windowMetricsCompatHelper = i2 >= 30 ? WindowMetricsCompatHelperApi30Impl.f20202a : WindowMetricsCompatHelperBaseImpl.f20204a;
        }
        return windowMetricsCompatHelper.a(context, this.f20196b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WindowMetricsCalculatorCompat() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ WindowMetricsCalculatorCompat(DensityCompatHelper densityCompatHelper, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? DensityCompatHelper.Companion.a() : densityCompatHelper);
    }
}
