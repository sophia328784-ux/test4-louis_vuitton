package com.google.android.material.elevation;

import android.content.Context;
import android.graphics.Color;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.resources.MaterialAttributes;
import com.vuitton.android.R;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class ElevationOverlayProvider {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f32609f = (int) Math.round(5.1000000000000005d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f32610a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f32611b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f32612c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f32613e;

    public ElevationOverlayProvider(Context context) {
        this(MaterialAttributes.b(context, R.attr.elevationOverlayEnabled, false), MaterialColors.c(context, R.attr.elevationOverlayColor, 0), MaterialColors.c(context, R.attr.elevationOverlayAccentColor, 0), MaterialColors.c(context, R.attr.colorSurface, 0), context.getResources().getDisplayMetrics().density);
    }

    public final int a(float f2, int i2) {
        int i3;
        if (!this.f32610a || ColorUtils.e(i2, 255) != this.d) {
            return i2;
        }
        float f3 = this.f32613e;
        float fMin = (f3 <= Call.Parameters.DEFAULT_CAMERA_ZOOM || f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) ? 0.0f : Math.min(((((float) Math.log1p(f2 / f3)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        int iAlpha = Color.alpha(i2);
        int iG = MaterialColors.g(ColorUtils.e(i2, 255), this.f32611b, fMin);
        if (fMin > Call.Parameters.DEFAULT_CAMERA_ZOOM && (i3 = this.f32612c) != 0) {
            iG = ColorUtils.c(ColorUtils.e(i3, f32609f), iG);
        }
        return ColorUtils.e(iG, iAlpha);
    }

    public ElevationOverlayProvider(boolean z, int i2, int i3, int i4, float f2) {
        this.f32610a = z;
        this.f32611b = i2;
        this.f32612c = i3;
        this.d = i4;
        this.f32613e = f2;
    }
}
