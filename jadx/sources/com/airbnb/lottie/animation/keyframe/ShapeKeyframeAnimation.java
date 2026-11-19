package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.animation.content.ShapeModifierContent;
import com.airbnb.lottie.model.CubicCurveData;
import com.airbnb.lottie.model.content.ShapeData;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ShapeKeyframeAnimation extends BaseKeyframeAnimation<ShapeData, Path> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ShapeData f21910i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Path f21911j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Path f21912k;
    public Path l;
    public ArrayList m;

    public ShapeKeyframeAnimation(List<Keyframe<ShapeData>> list) {
        super(list);
        this.f21910i = new ShapeData();
        this.f21911j = new Path();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object g(Keyframe keyframe, float f2) {
        ShapeData shapeDataC;
        ShapeData shapeData = (ShapeData) keyframe.f22317b;
        ShapeData shapeData2 = (ShapeData) keyframe.f22318c;
        ShapeData shapeData3 = shapeData2 == null ? shapeData : shapeData2;
        ShapeData shapeData4 = this.f21910i;
        ArrayList arrayList = shapeData4.f22156a;
        if (shapeData4.f22157b == null) {
            shapeData4.f22157b = new PointF();
        }
        boolean z = shapeData.f22158c;
        ArrayList arrayList2 = shapeData.f22156a;
        boolean z2 = true;
        shapeData4.f22158c = z || shapeData3.f22158c;
        int size = arrayList2.size();
        ArrayList arrayList3 = shapeData3.f22156a;
        if (size != arrayList3.size()) {
            Logger.a("Curves must have the same number of control points. Shape 1: " + arrayList2.size() + "\tShape 2: " + arrayList3.size());
        }
        int iMin = Math.min(arrayList2.size(), arrayList3.size());
        if (arrayList.size() < iMin) {
            for (int size2 = arrayList.size(); size2 < iMin; size2++) {
                arrayList.add(new CubicCurveData());
            }
        } else if (arrayList.size() > iMin) {
            for (int size3 = arrayList.size() - 1; size3 >= iMin; size3--) {
                arrayList.remove(arrayList.size() - 1);
            }
        }
        PointF pointF = shapeData.f22157b;
        PointF pointF2 = shapeData3.f22157b;
        shapeData4.a(MiscUtils.f(pointF.x, pointF2.x, f2), MiscUtils.f(pointF.y, pointF2.y, f2));
        int size4 = arrayList.size() - 1;
        while (size4 >= 0) {
            CubicCurveData cubicCurveData = (CubicCurveData) arrayList2.get(size4);
            CubicCurveData cubicCurveData2 = (CubicCurveData) arrayList3.get(size4);
            PointF pointF3 = cubicCurveData.f22060a;
            PointF pointF4 = cubicCurveData.f22061b;
            PointF pointF5 = cubicCurveData.f22062c;
            PointF pointF6 = cubicCurveData2.f22060a;
            boolean z3 = z2;
            PointF pointF7 = cubicCurveData2.f22061b;
            PointF pointF8 = cubicCurveData2.f22062c;
            ((CubicCurveData) arrayList.get(size4)).f22060a.set(MiscUtils.f(pointF3.x, pointF6.x, f2), MiscUtils.f(pointF3.y, pointF6.y, f2));
            ((CubicCurveData) arrayList.get(size4)).f22061b.set(MiscUtils.f(pointF4.x, pointF7.x, f2), MiscUtils.f(pointF4.y, pointF7.y, f2));
            ((CubicCurveData) arrayList.get(size4)).f22062c.set(MiscUtils.f(pointF5.x, pointF8.x, f2), MiscUtils.f(pointF5.y, pointF8.y, f2));
            size4--;
            z2 = z3;
            arrayList2 = arrayList2;
            shapeData4 = shapeData4;
            arrayList3 = arrayList3;
        }
        ShapeData shapeData5 = shapeData4;
        ArrayList arrayList4 = this.m;
        if (arrayList4 != null) {
            shapeDataC = shapeData5;
            for (int size5 = arrayList4.size() - 1; size5 >= 0; size5--) {
                shapeDataC = ((ShapeModifierContent) this.m.get(size5)).c(shapeDataC);
            }
        } else {
            shapeDataC = shapeData5;
        }
        Path path = this.f21911j;
        MiscUtils.e(shapeDataC, path);
        if (this.f21886e == null) {
            return path;
        }
        if (this.f21912k == null) {
            this.f21912k = new Path();
            this.l = new Path();
        }
        MiscUtils.e(shapeData, this.f21912k);
        if (shapeData2 != null) {
            MiscUtils.e(shapeData2, this.l);
        }
        LottieValueCallback lottieValueCallback = this.f21886e;
        float f3 = keyframe.g;
        float fFloatValue = keyframe.f22321h.floatValue();
        Path path2 = this.f21912k;
        return (Path) lottieValueCallback.b(f3, fFloatValue, path2, shapeData2 == null ? path2 : this.l, f2, e(), this.d);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final boolean l() {
        ArrayList arrayList = this.m;
        return (arrayList == null || arrayList.isEmpty()) ? false : true;
    }
}
