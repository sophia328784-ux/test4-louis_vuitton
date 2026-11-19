package androidx.window.layout.util;

import android.app.Activity;
import android.graphics.Rect;
import android.view.WindowManager;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/window/layout/util/BoundsHelperApi30Impl;", "Landroidx/window/layout/util/BoundsHelper;", "window_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class BoundsHelperApi30Impl implements BoundsHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BoundsHelperApi30Impl f20199a = new BoundsHelperApi30Impl();

    @Override // androidx.window.layout.util.BoundsHelper
    public final Rect a(Activity activity) {
        activity.getClass();
        Rect bounds = ((WindowManager) activity.getSystemService(WindowManager.class)).getCurrentWindowMetrics().getBounds();
        bounds.getClass();
        return bounds;
    }
}
