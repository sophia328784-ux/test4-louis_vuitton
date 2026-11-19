package com.sightcall.pratik.extensions;

import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0003\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"center", "Landroid/graphics/Point;", "Landroid/graphics/Rect;", "scale", "scaleFactor", "", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class RectExtensionsKt {
    public static final Point center(Rect rect) {
        rect.getClass();
        return new Point(rect.centerX(), rect.centerY());
    }

    public static final Rect scale(Rect rect, double d) {
        rect.getClass();
        RectF rectFScale = RectfExtensionsKt.scale(new RectF(rect), d);
        Rect rect2 = new Rect();
        rectFScale.roundOut(rect2);
        return rect2;
    }
}
