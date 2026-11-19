package com.dynatrace.android.lifecycle.activitytracking;

import android.app.Activity;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.dynatrace.android.lifecycle.activitytracking.metrics.ScreenMetrics;
import com.dynatrace.android.lifecycle.activitytracking.metrics.ScreenMetricsCollector;
import com.dynatrace.android.lifecycle.activitytracking.metrics.ScreenMetricsUtility;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityScreenMetricsCollector implements ScreenMetricsCollector {

    @FunctionalInterface
    public interface DisplayAccessor {
    }

    public static ScreenMetrics b(Display display, int i2) {
        ScreenMetrics.Builder builder = new ScreenMetrics.Builder();
        int i3 = ScreenMetricsUtility.f27666a;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        display.getRealMetrics(displayMetrics);
        builder.d = displayMetrics.density;
        builder.f27665c = displayMetrics.densityDpi;
        Point point = new Point();
        display.getRealSize(point);
        int rotation = display.getRotation();
        boolean z = false;
        if (i2 != 2 ? !(i2 != 1 || (rotation != 1 && rotation != 3)) : !(rotation != 0 && rotation != 2)) {
            z = true;
        }
        int i4 = point.x;
        int i5 = point.y;
        if (z) {
            builder.f27663a = Math.max(i4, i5);
            builder.f27664b = Math.min(point.x, point.y);
        } else {
            builder.f27663a = Math.min(i4, i5);
            builder.f27664b = Math.max(point.x, point.y);
        }
        return new ScreenMetrics(builder);
    }

    @Override // com.dynatrace.android.lifecycle.activitytracking.metrics.ScreenMetricsCollector
    public final ScreenMetrics a(Activity activity) {
        WindowManager windowManager = (WindowManager) activity.getSystemService("window");
        Configuration configuration = activity.getResources().getConfiguration();
        int i2 = configuration.orientation;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 <= 29) {
            return b(windowManager.getDefaultDisplay(), i2);
        }
        ScreenMetrics.Builder builder = new ScreenMetrics.Builder();
        Display display = i3 >= 30 ? activity.getDisplay() : null;
        int rotation = display != null ? display.getRotation() : 0;
        Rect bounds = windowManager.getMaximumWindowMetrics().getBounds();
        if (i2 != 2 ? !(i2 == 1 && (rotation == 1 || rotation == 3)) : !(rotation == 0 || rotation == 2)) {
            builder.f27663a = Math.min(bounds.width(), bounds.height());
            builder.f27664b = Math.max(bounds.width(), bounds.height());
        } else {
            builder.f27663a = Math.max(bounds.width(), bounds.height());
            builder.f27664b = Math.min(bounds.width(), bounds.height());
        }
        int i4 = configuration.densityDpi;
        builder.d = i4 / 160.0f;
        builder.f27665c = i4;
        return new ScreenMetrics(builder);
    }
}
