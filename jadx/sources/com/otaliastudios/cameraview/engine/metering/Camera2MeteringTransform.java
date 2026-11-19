package com.otaliastudios.cameraview.engine.metering;

import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.engine.offset.Angles;
import com.otaliastudios.cameraview.engine.offset.Axis;
import com.otaliastudios.cameraview.engine.offset.Reference;
import com.otaliastudios.cameraview.metering.MeteringTransform;
import com.otaliastudios.cameraview.size.AspectRatio;
import com.otaliastudios.cameraview.size.Size;
import defpackage.md;
import defpackage.pq0;
import java.util.HashMap;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
public class Camera2MeteringTransform implements MeteringTransform<MeteringRectangle> {
    public static final CameraLogger g = CameraLogger.a("Camera2MeteringTransform");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Angles f38939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Size f38940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Size f38941c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CameraCharacteristics f38942e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CaptureRequest.Builder f38943f;

    public Camera2MeteringTransform(Angles angles, Size size, Size size2, boolean z, CameraCharacteristics cameraCharacteristics, CaptureRequest.Builder builder) {
        this.f38939a = angles;
        this.f38940b = size;
        this.f38941c = size2;
        this.d = z;
        this.f38942e = cameraCharacteristics;
        this.f38943f = builder;
    }

    @Override // com.otaliastudios.cameraview.metering.MeteringTransform
    public final Object a(RectF rectF, int i2) {
        Rect rect = new Rect();
        rectF.round(rect);
        return new MeteringRectangle(rect, i2);
    }

    @Override // com.otaliastudios.cameraview.metering.MeteringTransform
    public final PointF b(PointF pointF) {
        PointF pointF2 = new PointF(pointF.x, pointF.y);
        Size size = this.f38940b;
        int iRound = size.f39086b;
        int iRound2 = size.f39087c;
        HashMap map = AspectRatio.d;
        Size sizeA = this.f38941c;
        int i2 = sizeA.f39086b;
        int i3 = sizeA.f39087c;
        AspectRatio aspectRatioA = AspectRatio.a(i2, i3);
        int i4 = size.f39086b;
        AspectRatio aspectRatioA2 = AspectRatio.a(i4, iRound2);
        if (this.d) {
            if (aspectRatioA.c() > aspectRatioA2.c()) {
                float fC = aspectRatioA.c() / aspectRatioA2.c();
                float f2 = i4;
                pointF2.x = (((fC - 1.0f) * f2) / 2.0f) + pointF2.x;
                iRound = Math.round(f2 * fC);
            } else {
                float fC2 = aspectRatioA2.c() / aspectRatioA.c();
                float f3 = iRound2;
                pointF2.y = (((fC2 - 1.0f) * f3) / 2.0f) + pointF2.y;
                iRound2 = Math.round(f3 * fC2);
            }
        }
        Size size2 = new Size(iRound, iRound2);
        float f4 = pointF2.x;
        int i5 = sizeA.f39086b;
        pointF2.x = (i5 / size2.f39086b) * f4;
        float f5 = i3;
        pointF2.y = (f5 / size2.f39087c) * pointF2.y;
        int iC = this.f38939a.c(Reference.SENSOR, Reference.VIEW, Axis.ABSOLUTE);
        boolean z = iC % Sink.ORIENTATION_180 != 0;
        float f6 = pointF2.x;
        float f7 = pointF2.y;
        if (iC == 0) {
            pointF2.x = f6;
            pointF2.y = f7;
        } else if (iC == 90) {
            pointF2.x = f7;
            pointF2.y = i5 - f6;
        } else if (iC == 180) {
            pointF2.x = i5 - f6;
            pointF2.y = f5 - f7;
        } else {
            if (iC != 270) {
                md.k(pq0.k(iC, "Unexpected angle "));
                return null;
            }
            pointF2.x = f5 - f7;
            pointF2.y = f6;
        }
        if (z) {
            sizeA = sizeA.a();
        }
        int i6 = sizeA.f39087c;
        int i7 = sizeA.f39086b;
        CaptureRequest.Key key = CaptureRequest.SCALER_CROP_REGION;
        CaptureRequest.Builder builder = this.f38943f;
        Rect rect = (Rect) builder.get(key);
        int iWidth = rect == null ? i7 : rect.width();
        int iHeight = rect == null ? i6 : rect.height();
        pointF2.x = ((iWidth - i7) / 2.0f) + pointF2.x;
        pointF2.y = ((iHeight - i6) / 2.0f) + pointF2.y;
        Size size3 = new Size(iWidth, iHeight);
        Rect rect2 = (Rect) builder.get(key);
        pointF2.x += rect2 == null ? 0.0f : rect2.left;
        pointF2.y += rect2 == null ? 0.0f : rect2.top;
        Rect rect3 = (Rect) this.f38942e.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        if (rect3 == null) {
            rect3 = new Rect(0, 0, size3.f39086b, size3.f39087c);
        }
        Size size4 = new Size(rect3.width(), rect3.height());
        CameraLogger cameraLogger = g;
        cameraLogger.b(1, "input:", pointF, "output (before clipping):", pointF2);
        if (pointF2.x < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            pointF2.x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        if (pointF2.y < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            pointF2.y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        float f8 = pointF2.x;
        float f9 = size4.f39086b;
        if (f8 > f9) {
            pointF2.x = f9;
        }
        float f10 = pointF2.y;
        float f11 = size4.f39087c;
        if (f10 > f11) {
            pointF2.y = f11;
        }
        cameraLogger.b(1, "input:", pointF, "output (after clipping):", pointF2);
        return pointF2;
    }
}
