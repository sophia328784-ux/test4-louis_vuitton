package com.airbnb.lottie.animation.content;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.model.CubicCurveData;
import com.airbnb.lottie.model.content.RoundedCorners;
import com.airbnb.lottie.model.content.ShapeData;
import com.airbnb.lottie.model.layer.BaseLayer;
import defpackage.tr;
import java.util.ArrayList;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class RoundedCornersContent implements ShapeModifierContent, BaseKeyframeAnimation.AnimationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LottieDrawable f21870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BaseKeyframeAnimation f21871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ShapeData f21872c;

    public RoundedCornersContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, RoundedCorners roundedCorners) {
        this.f21870a = lottieDrawable;
        roundedCorners.getClass();
        BaseKeyframeAnimation baseKeyframeAnimationA = roundedCorners.f22155a.a();
        this.f21871b = baseKeyframeAnimationA;
        baseLayer.h(baseKeyframeAnimationA);
        baseKeyframeAnimationA.a(this);
    }

    public static int e(int i2, int i3) {
        int i4 = i2 / i3;
        if ((i2 ^ i3) < 0 && i4 * i3 != i2) {
            i4--;
        }
        return i2 - (i4 * i3);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public final void a() {
        this.f21870a.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public final void b(List list, List list2) {
    }

    @Override // com.airbnb.lottie.animation.content.ShapeModifierContent
    public final ShapeData c(ShapeData shapeData) {
        ShapeData shapeData2 = shapeData;
        ArrayList arrayList = shapeData2.f22156a;
        if (arrayList.size() > 2) {
            float fFloatValue = ((Float) this.f21871b.f()).floatValue();
            if (fFloatValue != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                ArrayList arrayList2 = shapeData2.f22156a;
                boolean z = shapeData2.f22158c;
                boolean z2 = true;
                int size = arrayList2.size() - 1;
                int i2 = 0;
                while (size >= 0) {
                    CubicCurveData cubicCurveData = (CubicCurveData) arrayList2.get(size);
                    CubicCurveData cubicCurveData2 = (CubicCurveData) arrayList2.get(e(size - 1, arrayList2.size()));
                    PointF pointF = (size != 0 || z) ? cubicCurveData2.f22062c : shapeData2.f22157b;
                    i2 = (((size != 0 || z) ? cubicCurveData2.f22061b : pointF).equals(pointF) && cubicCurveData.f22060a.equals(pointF) && !(!shapeData2.f22158c && (size == 0 || size == arrayList2.size() - 1))) ? i2 + 2 : i2 + 1;
                    size--;
                }
                ShapeData shapeData3 = this.f21872c;
                if (shapeData3 == null || shapeData3.f22156a.size() != i2) {
                    ArrayList arrayList3 = new ArrayList(i2);
                    for (int i3 = 0; i3 < i2; i3++) {
                        arrayList3.add(new CubicCurveData());
                    }
                    this.f21872c = new ShapeData(new PointF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM), false, arrayList3);
                }
                ShapeData shapeData4 = this.f21872c;
                shapeData4.f22158c = z;
                PointF pointF2 = shapeData2.f22157b;
                shapeData4.a(pointF2.x, pointF2.y);
                ArrayList arrayList4 = shapeData4.f22156a;
                boolean z3 = shapeData2.f22158c;
                int i4 = 0;
                int i5 = 0;
                while (i4 < arrayList.size()) {
                    CubicCurveData cubicCurveData3 = (CubicCurveData) arrayList.get(i4);
                    CubicCurveData cubicCurveData4 = (CubicCurveData) arrayList.get(e(i4 - 1, arrayList.size()));
                    CubicCurveData cubicCurveData5 = (CubicCurveData) arrayList.get(e(i4 - 2, arrayList.size()));
                    PointF pointF3 = (i4 != 0 || z3) ? cubicCurveData4.f22062c : shapeData2.f22157b;
                    PointF pointF4 = (i4 != 0 || z3) ? cubicCurveData4.f22061b : pointF3;
                    PointF pointF5 = cubicCurveData3.f22060a;
                    PointF pointF6 = cubicCurveData5.f22062c;
                    boolean z4 = z2;
                    PointF pointF7 = cubicCurveData3.f22062c;
                    boolean z5 = (shapeData2.f22158c || !(i4 == 0 || i4 == arrayList.size() + (-1))) ? false : z4;
                    if (pointF4.equals(pointF3) && pointF5.equals(pointF3) && !z5) {
                        float f2 = pointF3.x;
                        float f3 = f2 - pointF6.x;
                        float f4 = pointF3.y;
                        float f5 = f4 - pointF6.y;
                        float f6 = pointF7.x - f2;
                        float f7 = pointF7.y - f4;
                        float fHypot = (float) Math.hypot(f3, f5);
                        float fHypot2 = (float) Math.hypot(f6, f7);
                        float fMin = Math.min(fFloatValue / fHypot, 0.5f);
                        float fMin2 = Math.min(fFloatValue / fHypot2, 0.5f);
                        float f8 = pointF3.x;
                        float fA = tr.a(pointF6.x, f8, fMin, f8);
                        float f9 = pointF3.y;
                        float fA2 = tr.a(pointF6.y, f9, fMin, f9);
                        float fA3 = tr.a(pointF7.x, f8, fMin2, f8);
                        float fA4 = tr.a(pointF7.y, f9, fMin2, f9);
                        float f10 = fA - ((fA - f8) * 0.5519f);
                        float f11 = fA2 - ((fA2 - f9) * 0.5519f);
                        float f12 = fA3 - ((fA3 - f8) * 0.5519f);
                        float f13 = fA4 - ((fA4 - f9) * 0.5519f);
                        CubicCurveData cubicCurveData6 = (CubicCurveData) arrayList4.get(e(i5 - 1, arrayList4.size()));
                        CubicCurveData cubicCurveData7 = (CubicCurveData) arrayList4.get(i5);
                        cubicCurveData6.f22061b.set(fA, fA2);
                        cubicCurveData6.f22062c.set(fA, fA2);
                        if (i4 == 0) {
                            shapeData4.a(fA, fA2);
                        }
                        cubicCurveData7.f22060a.set(f10, f11);
                        CubicCurveData cubicCurveData8 = (CubicCurveData) arrayList4.get(i5 + 1);
                        cubicCurveData7.f22061b.set(f12, f13);
                        cubicCurveData7.f22062c.set(fA3, fA4);
                        cubicCurveData8.f22060a.set(fA3, fA4);
                        i5 += 2;
                    } else {
                        CubicCurveData cubicCurveData9 = (CubicCurveData) arrayList4.get(e(i5 - 1, arrayList4.size()));
                        CubicCurveData cubicCurveData10 = (CubicCurveData) arrayList4.get(i5);
                        PointF pointF8 = cubicCurveData4.f22061b;
                        cubicCurveData9.f22061b.set(pointF8.x, pointF8.y);
                        PointF pointF9 = cubicCurveData4.f22062c;
                        cubicCurveData9.f22062c.set(pointF9.x, pointF9.y);
                        PointF pointF10 = cubicCurveData3.f22060a;
                        cubicCurveData10.f22060a.set(pointF10.x, pointF10.y);
                        i5++;
                    }
                    i4++;
                    shapeData2 = shapeData;
                    z2 = z4;
                    arrayList = arrayList;
                    fFloatValue = fFloatValue;
                }
                return shapeData4;
            }
        }
        return shapeData2;
    }

    @Override // com.airbnb.lottie.animation.content.ShapeModifierContent
    public final void i(ShapeContent shapeContent) {
        this.f21871b.a(shapeContent);
    }
}
