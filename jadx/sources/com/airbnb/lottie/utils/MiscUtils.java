package com.airbnb.lottie.utils;

import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.animation.content.KeyPathElementContent;
import com.airbnb.lottie.model.CubicCurveData;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.ShapeData;
import defpackage.tr;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MiscUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PointF f22298a = new PointF();

    public static PointF a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static float b(float f2, float f3, float f4) {
        return Math.max(f3, Math.min(f4, f2));
    }

    public static int c(int i2) {
        return Math.max(0, Math.min(255, i2));
    }

    public static int d(float f2, float f3) {
        int i2 = (int) f2;
        int i3 = (int) f3;
        int i4 = i2 / i3;
        int i5 = i2 % i3;
        if (!((i2 ^ i3) >= 0) && i5 != 0) {
            i4--;
        }
        return i2 - (i3 * i4);
    }

    public static void e(ShapeData shapeData, Path path) {
        Path path2;
        path.reset();
        PointF pointF = shapeData.f22157b;
        ArrayList arrayList = shapeData.f22156a;
        path.moveTo(pointF.x, pointF.y);
        float f2 = pointF.x;
        float f3 = pointF.y;
        PointF pointF2 = f22298a;
        pointF2.set(f2, f3);
        int i2 = 0;
        while (i2 < arrayList.size()) {
            CubicCurveData cubicCurveData = (CubicCurveData) arrayList.get(i2);
            PointF pointF3 = cubicCurveData.f22060a;
            PointF pointF4 = cubicCurveData.f22061b;
            PointF pointF5 = cubicCurveData.f22062c;
            if (pointF3.equals(pointF2) && pointF4.equals(pointF5)) {
                path.lineTo(pointF5.x, pointF5.y);
                path2 = path;
            } else {
                path2 = path;
                path2.cubicTo(pointF3.x, pointF3.y, pointF4.x, pointF4.y, pointF5.x, pointF5.y);
            }
            pointF2.set(pointF5.x, pointF5.y);
            i2++;
            path = path2;
        }
        Path path3 = path;
        if (shapeData.f22158c) {
            path3.close();
        }
    }

    public static float f(float f2, float f3, float f4) {
        return tr.a(f3, f2, f4, f2);
    }

    public static void g(KeyPath keyPath, int i2, ArrayList arrayList, KeyPath keyPath2, KeyPathElementContent keyPathElementContent) {
        if (keyPath.a(i2, keyPathElementContent.getName())) {
            String name = keyPathElementContent.getName();
            KeyPath keyPath3 = new KeyPath(keyPath2);
            keyPath3.f22080a.add(name);
            KeyPath keyPath4 = new KeyPath(keyPath3);
            keyPath4.f22081b = keyPathElementContent;
            arrayList.add(keyPath4);
        }
    }
}
