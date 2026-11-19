package com.otaliastudios.cameraview.metering;

import android.graphics.PointF;
import android.graphics.RectF;
import com.otaliastudios.cameraview.size.Size;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class MeteringRegions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f39029a;

    public MeteringRegions(ArrayList arrayList) {
        this.f39029a = arrayList;
    }

    public static MeteringRegions a(Size size, PointF pointF) {
        int i2 = size.f39086b;
        float f2 = size.f39087c;
        float f3 = pointF.x;
        float f4 = (i2 * 0.05f) / 2.0f;
        float f5 = pointF.y;
        float f6 = (0.05f * f2) / 2.0f;
        RectF rectF = new RectF(f3 - f4, f5 - f6, f3 + f4, f5 + f6);
        ArrayList<MeteringRegion> arrayList = new ArrayList();
        PointF pointF2 = new PointF(rectF.centerX(), rectF.centerY());
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        arrayList.add(new MeteringRegion(rectF, 1000));
        float f7 = pointF2.x;
        float f8 = (fWidth * 1.5f) / 2.0f;
        float f9 = pointF2.y;
        float f10 = (fHeight * 1.5f) / 2.0f;
        arrayList.add(new MeteringRegion(new RectF(f7 - f8, f9 - f10, f7 + f8, f9 + f10), Math.round(100.0f)));
        ArrayList arrayList2 = new ArrayList();
        for (MeteringRegion meteringRegion : arrayList) {
            meteringRegion.getClass();
            RectF rectF2 = new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, i2, f2);
            RectF rectF3 = new RectF();
            float f11 = rectF2.left;
            RectF rectF4 = meteringRegion.f39027b;
            rectF3.set(Math.max(f11, rectF4.left), Math.max(rectF2.top, rectF4.top), Math.min(rectF2.right, rectF4.right), Math.min(rectF2.bottom, rectF4.bottom));
            arrayList2.add(new MeteringRegion(rectF3, meteringRegion.f39028c));
        }
        return new MeteringRegions(arrayList2);
    }

    public final List b(int i2, MeteringTransform meteringTransform) {
        ArrayList arrayList = new ArrayList();
        ArrayList<MeteringRegion> arrayList2 = this.f39029a;
        Collections.sort(arrayList2);
        for (MeteringRegion meteringRegion : arrayList2) {
            arrayList.add(meteringTransform.a(meteringRegion.f39027b, meteringRegion.f39028c));
        }
        return arrayList.subList(0, Math.min(i2, arrayList.size()));
    }

    public final MeteringRegions c(MeteringTransform meteringTransform) {
        ArrayList arrayList = new ArrayList();
        for (MeteringRegion meteringRegion : this.f39029a) {
            meteringRegion.getClass();
            RectF rectF = new RectF(Float.MAX_VALUE, Float.MAX_VALUE, -3.4028235E38f, -3.4028235E38f);
            PointF pointF = new PointF();
            RectF rectF2 = meteringRegion.f39027b;
            pointF.set(rectF2.left, rectF2.top);
            PointF pointFB = meteringTransform.b(pointF);
            MeteringRegion.a(rectF, pointFB);
            pointFB.set(rectF2.right, rectF2.top);
            PointF pointFB2 = meteringTransform.b(pointFB);
            MeteringRegion.a(rectF, pointFB2);
            pointFB2.set(rectF2.right, rectF2.bottom);
            PointF pointFB3 = meteringTransform.b(pointFB2);
            MeteringRegion.a(rectF, pointFB3);
            pointFB3.set(rectF2.left, rectF2.bottom);
            MeteringRegion.a(rectF, meteringTransform.b(pointFB3));
            arrayList.add(new MeteringRegion(rectF, meteringRegion.f39028c));
        }
        return new MeteringRegions(arrayList);
    }
}
