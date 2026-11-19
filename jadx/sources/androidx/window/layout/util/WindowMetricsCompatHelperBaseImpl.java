package androidx.window.layout.util;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Point;
import android.graphics.Rect;
import android.inputmethodservice.InputMethodService;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import androidx.window.core.Bounds;
import androidx.window.layout.WindowMetrics;
import defpackage.md;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/window/layout/util/WindowMetricsCompatHelperBaseImpl;", "Landroidx/window/layout/util/WindowMetricsCompatHelper;", "window_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class WindowMetricsCompatHelperBaseImpl implements WindowMetricsCompatHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final WindowMetricsCompatHelperBaseImpl f20204a = new WindowMetricsCompatHelperBaseImpl();

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public final WindowMetrics a(Context context, DensityCompatHelper densityCompatHelper) {
        context.getClass();
        densityCompatHelper.getClass();
        Context baseContext = context;
        while (true) {
            if (!(baseContext instanceof ContextWrapper)) {
                baseContext = context;
                break;
            }
            if ((baseContext instanceof Activity) || (baseContext instanceof InputMethodService)) {
                break;
            }
            ContextWrapper contextWrapper = (ContextWrapper) baseContext;
            if (contextWrapper.getBaseContext() == null) {
                break;
            }
            baseContext = contextWrapper.getBaseContext();
            baseContext.getClass();
        }
        if (baseContext instanceof Activity) {
            Activity activity = (Activity) baseContext;
            activity.getClass();
            densityCompatHelper.getClass();
            return new WindowMetrics(new Bounds((Build.VERSION.SDK_INT >= 30 ? BoundsHelperApi30Impl.f20199a : BoundsHelperApi29Impl.f20198a).a(activity)), densityCompatHelper.a(activity));
        }
        if (!(baseContext instanceof InputMethodService) && !(baseContext instanceof Application)) {
            md.n("Must provide a UiContext or Application Context");
            return null;
        }
        Object systemService = context.getSystemService("window");
        systemService.getClass();
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        defaultDisplay.getClass();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        return new WindowMetrics(new Rect(0, 0, point.x, point.y), densityCompatHelper.a(context));
    }
}
