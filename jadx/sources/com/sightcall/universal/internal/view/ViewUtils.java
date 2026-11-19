package com.sightcall.universal.internal.view;

import android.graphics.RectF;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.sightcall.universal.R;
import defpackage.md;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class ViewUtils {
    public static final float MAX_INT = Integer.parseInt("FFFF", 16);
    public static final float MAX_IN_BOUNDS = Integer.parseInt("FFFE", 16);
    public static final int MINIMUM_TIME_INTERVAL_FOR_POINTER = 30;

    public static void addPaddingTakenByFitSystemWindows(final View view, final View view2) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sightcall.universal.internal.view.ViewUtils.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                view2.setPadding(view.getPaddingLeft() + view2.getPaddingLeft(), view.getPaddingTop() + view2.getPaddingTop(), view.getPaddingRight() + view2.getPaddingRight(), view.getPaddingBottom() + view2.getPaddingBottom());
            }
        });
    }

    public static void addViewSilently(WindowManager windowManager, View view, WindowManager.LayoutParams layoutParams) {
        try {
            windowManager.addView(view, layoutParams);
        } catch (Exception unused) {
        }
    }

    public static void applyThumbnailEffects(View view, boolean z) {
        if (view.getResources().getBoolean(R.bool.universal_thumbnail_outline)) {
            if (z && !(view.getOutlineProvider() instanceof RoundRectOutlineProvider)) {
                view.setOutlineProvider(new RoundRectOutlineProvider());
            }
            view.setClipToOutline(z);
        }
        if (view.getResources().getBoolean(R.bool.universal_thumbnail_elevation)) {
            view.setElevation(z ? view.getResources().getDimensionPixelSize(R.dimen.universal_thumbnail_elevation) : Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
    }

    public static int floatPercentToIntPercent(float f2) {
        return (int) (f2 * MAX_INT);
    }

    public static int floatPercentToIntPercentBounded(float f2, boolean z) {
        float f3;
        if (f2 == -1.0f) {
            f3 = MAX_INT;
        } else {
            float f4 = MAX_IN_BOUNDS;
            if (z) {
                f2 = 1.0f - f2;
            }
            f3 = f2 * f4;
        }
        return (int) f3;
    }

    public static float intPercentBoundedToFloatPixel(int i2, int i3, boolean z) {
        float f2 = i2 / MAX_IN_BOUNDS;
        if (f2 > 1.0f) {
            return -1.0f;
        }
        if (z) {
            f2 = 1.0f - f2;
        }
        return f2 * i3;
    }

    public static float intPercentToFloatPercent(int i2) {
        return i2 / MAX_INT;
    }

    public static int remap(int i2, int i3, int i4, int i5, int i6) {
        return (int) ((((i2 - i3) * (i6 - i5)) / (i4 - i3)) + i5);
    }

    public static void remapLocalCoordinates(float[] fArr, float f2, float f3, RectF rectF) {
        if (fArr == null || fArr.length < 2) {
            md.n("coordinates must be an array of two floats");
            return;
        }
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        if (fWidth == Call.Parameters.DEFAULT_CAMERA_ZOOM || fHeight == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            fArr[1] = -1.0f;
            fArr[0] = -1.0f;
        } else {
            fArr[0] = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(1.0f, (f2 - rectF.left) / fWidth));
            fArr[1] = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(1.0f, (f3 - rectF.top) / fHeight));
        }
    }

    public static void remapRemoteCoordinates(float[] fArr, float f2, float f3, RectF rectF) {
        if (fArr == null || fArr.length < 2) {
            md.n("coordinates must be an array of two floats");
            return;
        }
        fArr[0] = (rectF.width() * f2) + rectF.left;
        fArr[1] = (rectF.height() * f3) + rectF.top;
    }

    public static void removeViewSilently(WindowManager windowManager, View view, boolean z) {
        try {
            if (z) {
                windowManager.removeViewImmediate(view);
            } else {
                windowManager.removeView(view);
            }
        } catch (Exception unused) {
        }
    }

    public static float remap(float f2, float f3, float f4, float f5, float f6) {
        return (((f2 - f3) * (f6 - f5)) / (f4 - f3)) + f5;
    }

    public static void remapRemoteCoordinates(float[] fArr, float f2, float f3, int i2, int i3) {
        if (fArr != null && fArr.length >= 2) {
            fArr[0] = f2 * i2;
            fArr[1] = f3 * i3;
        } else {
            md.n("coordinates must be an array of two floats");
        }
    }
}
