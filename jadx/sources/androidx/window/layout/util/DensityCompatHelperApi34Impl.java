package androidx.window.layout.util;

import android.content.Context;
import android.view.WindowManager;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/window/layout/util/DensityCompatHelperApi34Impl;", "Landroidx/window/layout/util/DensityCompatHelper;", "window_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class DensityCompatHelperApi34Impl implements DensityCompatHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DensityCompatHelperApi34Impl f20200a = new DensityCompatHelperApi34Impl();

    @Override // androidx.window.layout.util.DensityCompatHelper
    public final float a(Context context) {
        context.getClass();
        return ((WindowManager) context.getSystemService(WindowManager.class)).getCurrentWindowMetrics().getDensity();
    }
}
