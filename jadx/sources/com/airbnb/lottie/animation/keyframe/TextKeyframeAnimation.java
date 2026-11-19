package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieFrameInfo;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TextKeyframeAnimation extends KeyframeAnimation<DocumentData> {
    public TextKeyframeAnimation(List<Keyframe<DocumentData>> list) {
        super(list);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object g(Keyframe keyframe, float f2) {
        Object obj;
        Object obj2 = keyframe.f22317b;
        LottieValueCallback lottieValueCallback = this.f21886e;
        if (lottieValueCallback == null) {
            return (f2 != 1.0f || (obj = keyframe.f22318c) == null) ? (DocumentData) obj2 : (DocumentData) obj;
        }
        float f3 = keyframe.g;
        Float f4 = keyframe.f22321h;
        float fFloatValue = f4 == null ? Float.MAX_VALUE : f4.floatValue();
        DocumentData documentData = (DocumentData) obj2;
        Object obj3 = keyframe.f22318c;
        return (DocumentData) lottieValueCallback.b(f3, fFloatValue, documentData, obj3 == null ? documentData : (DocumentData) obj3, f2, d(), this.d);
    }

    public final void m(final LottieValueCallback lottieValueCallback) {
        final LottieFrameInfo lottieFrameInfo = new LottieFrameInfo();
        final DocumentData documentData = new DocumentData();
        k(new LottieValueCallback<DocumentData>() { // from class: com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation.1
            @Override // com.airbnb.lottie.value.LottieValueCallback
            public final Object a(LottieFrameInfo lottieFrameInfo2) {
                float f2 = lottieFrameInfo2.f22325a;
                float f3 = lottieFrameInfo2.f22326b;
                String str = ((DocumentData) lottieFrameInfo2.f22327c).f22063a;
                String str2 = ((DocumentData) lottieFrameInfo2.d).f22063a;
                float f4 = lottieFrameInfo2.f22328e;
                float f5 = lottieFrameInfo2.f22329f;
                float f6 = lottieFrameInfo2.g;
                LottieFrameInfo lottieFrameInfo3 = lottieFrameInfo;
                lottieFrameInfo3.f22325a = f2;
                lottieFrameInfo3.f22326b = f3;
                lottieFrameInfo3.f22327c = str;
                lottieFrameInfo3.d = str2;
                lottieFrameInfo3.f22328e = f4;
                lottieFrameInfo3.f22329f = f5;
                lottieFrameInfo3.g = f6;
                String str3 = (String) lottieValueCallback.a(lottieFrameInfo3);
                DocumentData documentData2 = (DocumentData) (lottieFrameInfo2.f22329f == 1.0f ? lottieFrameInfo2.d : lottieFrameInfo2.f22327c);
                String str4 = documentData2.f22064b;
                float f7 = documentData2.f22065c;
                DocumentData.Justification justification = documentData2.d;
                int i2 = documentData2.f22066e;
                float f8 = documentData2.f22067f;
                float f9 = documentData2.g;
                int i3 = documentData2.f22068h;
                int i4 = documentData2.f22069i;
                float f10 = documentData2.f22070j;
                boolean z = documentData2.f22071k;
                PointF pointF = documentData2.l;
                PointF pointF2 = documentData2.m;
                DocumentData documentData3 = documentData;
                documentData3.f22063a = str3;
                documentData3.f22064b = str4;
                documentData3.f22065c = f7;
                documentData3.d = justification;
                documentData3.f22066e = i2;
                documentData3.f22067f = f8;
                documentData3.g = f9;
                documentData3.f22068h = i3;
                documentData3.f22069i = i4;
                documentData3.f22070j = f10;
                documentData3.f22071k = z;
                documentData3.l = pointF;
                documentData3.m = pointF2;
                return documentData3;
            }
        });
    }
}
