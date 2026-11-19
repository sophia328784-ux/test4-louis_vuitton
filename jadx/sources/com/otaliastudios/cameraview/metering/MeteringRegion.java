package com.otaliastudios.cameraview.metering;

import android.graphics.PointF;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes3.dex */
class MeteringRegion implements Comparable<MeteringRegion> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RectF f39027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f39028c;

    public MeteringRegion(RectF rectF, int i2) {
        this.f39027b = rectF;
        this.f39028c = i2;
    }

    public static void a(RectF rectF, PointF pointF) {
        rectF.left = Math.min(rectF.left, pointF.x);
        rectF.top = Math.min(rectF.top, pointF.y);
        rectF.right = Math.max(rectF.right, pointF.x);
        rectF.bottom = Math.max(rectF.bottom, pointF.y);
    }

    @Override // java.lang.Comparable
    public final int compareTo(MeteringRegion meteringRegion) {
        return -Integer.valueOf(this.f39028c).compareTo(Integer.valueOf(meteringRegion.f39028c));
    }
}
