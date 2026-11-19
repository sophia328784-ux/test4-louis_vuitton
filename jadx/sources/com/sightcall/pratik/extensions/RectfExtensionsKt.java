package com.sightcall.pratik.extensions;

import android.graphics.PointF;
import android.graphics.RectF;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0003\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"center", "Landroid/graphics/PointF;", "Landroid/graphics/RectF;", "scale", "scaleFactor", "", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class RectfExtensionsKt {
    public static final PointF center(RectF rectF) {
        rectF.getClass();
        return new PointF(rectF.centerX(), rectF.centerY());
    }

    public static final RectF scale(RectF rectF, double d) {
        rectF.getClass();
        return new RectF((float) (((double) rectF.left) * d), (float) (((double) rectF.top) * d), (float) (((double) rectF.right) * d), (float) (((double) rectF.bottom) * d));
    }
}
