package com.otaliastudios.cameraview.engine.metering;

import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.Camera;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.engine.offset.Angles;
import com.otaliastudios.cameraview.engine.offset.Axis;
import com.otaliastudios.cameraview.engine.offset.Reference;
import com.otaliastudios.cameraview.metering.MeteringTransform;
import com.otaliastudios.cameraview.size.Size;

/* JADX INFO: loaded from: classes3.dex */
public class Camera1MeteringTransform implements MeteringTransform<Camera.Area> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CameraLogger f38936c = CameraLogger.a("Camera1MeteringTransform");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f38937a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Size f38938b;

    public Camera1MeteringTransform(Angles angles, Size size) {
        this.f38937a = -angles.c(Reference.SENSOR, Reference.VIEW, Axis.ABSOLUTE);
        this.f38938b = size;
    }

    @Override // com.otaliastudios.cameraview.metering.MeteringTransform
    public final Object a(RectF rectF, int i2) {
        Rect rect = new Rect();
        rectF.round(rect);
        return new Camera.Area(rect, i2);
    }

    @Override // com.otaliastudios.cameraview.metering.MeteringTransform
    public final PointF b(PointF pointF) {
        PointF pointF2 = new PointF();
        float f2 = pointF.x;
        Size size = this.f38938b;
        pointF2.x = ((f2 / size.f39086b) * 2000.0f) - 1000.0f;
        pointF2.y = ((pointF.y / size.f39087c) * 2000.0f) - 1000.0f;
        PointF pointF3 = new PointF();
        double d = (((double) this.f38937a) * 3.141592653589793d) / 180.0d;
        pointF3.x = (float) ((Math.cos(d) * ((double) pointF2.x)) - (Math.sin(d) * ((double) pointF2.y)));
        pointF3.y = (float) ((Math.cos(d) * ((double) pointF2.y)) + (Math.sin(d) * ((double) pointF2.x)));
        f38936c.b(1, "scaled:", pointF2, "rotated:", pointF3);
        return pointF3;
    }
}
