package com.sightcall.pratik.extensions;

import android.graphics.Point;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\u0004"}, d2 = {"distanceFrom", "", "Landroid/graphics/Point;", "other", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class PointExtensionsKt {
    public static final double distanceFrom(Point point, Point point2) {
        point.getClass();
        point2.getClass();
        return Math.abs(Math.hypot(point.x - point2.x, point.y - point2.y));
    }
}
