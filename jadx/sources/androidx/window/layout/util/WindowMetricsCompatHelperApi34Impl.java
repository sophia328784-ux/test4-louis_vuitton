package androidx.window.layout.util;

import android.content.Context;
import android.graphics.Rect;
import android.view.WindowManager;
import androidx.window.layout.WindowMetrics;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/window/layout/util/WindowMetricsCompatHelperApi34Impl;", "Landroidx/window/layout/util/WindowMetricsCompatHelper;", "window_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class WindowMetricsCompatHelperApi34Impl implements WindowMetricsCompatHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final WindowMetricsCompatHelperApi34Impl f20203a = new WindowMetricsCompatHelperApi34Impl();

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public final WindowMetrics a(Context context, DensityCompatHelper densityCompatHelper) {
        context.getClass();
        densityCompatHelper.getClass();
        WindowManager windowManager = context.isUiContext() ? (WindowManager) context.getSystemService(WindowManager.class) : (WindowManager) context.getApplicationContext().getSystemService(WindowManager.class);
        Rect bounds = windowManager.getCurrentWindowMetrics().getBounds();
        bounds.getClass();
        return new WindowMetrics(bounds, windowManager.getCurrentWindowMetrics().getDensity());
    }
}
