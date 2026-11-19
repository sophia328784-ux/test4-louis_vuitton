package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.content.ContentGroup;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ColorKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.IntegerKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.manager.FontAssetManager;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.MutablePair;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.model.animatable.AnimatableTextRangeSelector;
import com.airbnb.lottie.model.animatable.AnimatableTextStyle;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.model.content.TextRangeUnits;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import defpackage.tr;
import java.text.Bidi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class TextLayer extends BaseLayer {
    public final StringBuilder C;
    public final StringBuilder D;
    public final StringBuilder E;
    public final StringBuilder F;
    public final RectF G;
    public final Matrix H;
    public final Paint I;
    public final Paint J;
    public final HashMap K;
    public final LongSparseArray L;
    public final ArrayList M;
    public final ArrayList N;
    public final TextKeyframeAnimation O;
    public final LottieDrawable P;
    public final LottieComposition Q;
    public final TextRangeUnits R;
    public final ColorKeyframeAnimation S;
    public ValueCallbackKeyframeAnimation T;
    public final ColorKeyframeAnimation U;
    public ValueCallbackKeyframeAnimation V;
    public final FloatKeyframeAnimation W;
    public ValueCallbackKeyframeAnimation X;
    public final FloatKeyframeAnimation Y;
    public ValueCallbackKeyframeAnimation Z;
    public final IntegerKeyframeAnimation a0;
    public ValueCallbackKeyframeAnimation b0;
    public ValueCallbackKeyframeAnimation c0;
    public final IntegerKeyframeAnimation d0;
    public final IntegerKeyframeAnimation e0;
    public final IntegerKeyframeAnimation f0;

    /* JADX INFO: renamed from: com.airbnb.lottie.model.layer.TextLayer$1, reason: invalid class name */
    public class AnonymousClass1 extends Paint {
    }

    /* JADX INFO: renamed from: com.airbnb.lottie.model.layer.TextLayer$2, reason: invalid class name */
    public class AnonymousClass2 extends Paint {
    }

    /* JADX INFO: renamed from: com.airbnb.lottie.model.layer.TextLayer$3, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f22205a;

        static {
            int[] iArr = new int[DocumentData.Justification.values().length];
            f22205a = iArr;
            try {
                iArr[DocumentData.Justification.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22205a[DocumentData.Justification.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22205a[DocumentData.Justification.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class TextSubLine {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f22206a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f22207b;
    }

    public TextLayer(LottieDrawable lottieDrawable, Layer layer) {
        AnimatableTextRangeSelector animatableTextRangeSelector;
        AnimatableTextRangeSelector animatableTextRangeSelector2;
        AnimatableIntegerValue animatableIntegerValue;
        AnimatableTextRangeSelector animatableTextRangeSelector3;
        AnimatableIntegerValue animatableIntegerValue2;
        AnimatableTextRangeSelector animatableTextRangeSelector4;
        AnimatableIntegerValue animatableIntegerValue3;
        AnimatableTextStyle animatableTextStyle;
        AnimatableIntegerValue animatableIntegerValue4;
        AnimatableTextStyle animatableTextStyle2;
        AnimatableFloatValue animatableFloatValue;
        AnimatableTextStyle animatableTextStyle3;
        AnimatableFloatValue animatableFloatValue2;
        AnimatableTextStyle animatableTextStyle4;
        AnimatableColorValue animatableColorValue;
        AnimatableTextStyle animatableTextStyle5;
        AnimatableColorValue animatableColorValue2;
        super(lottieDrawable, layer);
        this.C = new StringBuilder(2);
        this.D = new StringBuilder(0);
        this.E = new StringBuilder(0);
        this.F = new StringBuilder(0);
        this.G = new RectF();
        this.H = new Matrix();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(1);
        anonymousClass1.setStyle(Paint.Style.FILL);
        this.I = anonymousClass1;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(1);
        anonymousClass2.setStyle(Paint.Style.STROKE);
        this.J = anonymousClass2;
        this.K = new HashMap();
        this.L = new LongSparseArray();
        this.M = new ArrayList();
        this.N = new ArrayList();
        this.R = TextRangeUnits.INDEX;
        this.P = lottieDrawable;
        this.Q = layer.f22197b;
        TextKeyframeAnimation textKeyframeAnimationA = layer.q.a();
        this.O = textKeyframeAnimationA;
        textKeyframeAnimationA.a(this);
        h(textKeyframeAnimationA);
        AnimatableTextProperties animatableTextProperties = layer.r;
        if (animatableTextProperties != null && (animatableTextStyle5 = animatableTextProperties.f22091a) != null && (animatableColorValue2 = animatableTextStyle5.f22096a) != null) {
            BaseKeyframeAnimation baseKeyframeAnimationA = animatableColorValue2.a();
            this.S = (ColorKeyframeAnimation) baseKeyframeAnimationA;
            baseKeyframeAnimationA.a(this);
            h(baseKeyframeAnimationA);
        }
        if (animatableTextProperties != null && (animatableTextStyle4 = animatableTextProperties.f22091a) != null && (animatableColorValue = animatableTextStyle4.f22097b) != null) {
            BaseKeyframeAnimation baseKeyframeAnimationA2 = animatableColorValue.a();
            this.U = (ColorKeyframeAnimation) baseKeyframeAnimationA2;
            baseKeyframeAnimationA2.a(this);
            h(baseKeyframeAnimationA2);
        }
        if (animatableTextProperties != null && (animatableTextStyle3 = animatableTextProperties.f22091a) != null && (animatableFloatValue2 = animatableTextStyle3.f22098c) != null) {
            FloatKeyframeAnimation floatKeyframeAnimationA = animatableFloatValue2.a();
            this.W = floatKeyframeAnimationA;
            floatKeyframeAnimationA.a(this);
            h(floatKeyframeAnimationA);
        }
        if (animatableTextProperties != null && (animatableTextStyle2 = animatableTextProperties.f22091a) != null && (animatableFloatValue = animatableTextStyle2.d) != null) {
            FloatKeyframeAnimation floatKeyframeAnimationA2 = animatableFloatValue.a();
            this.Y = floatKeyframeAnimationA2;
            floatKeyframeAnimationA2.a(this);
            h(floatKeyframeAnimationA2);
        }
        if (animatableTextProperties != null && (animatableTextStyle = animatableTextProperties.f22091a) != null && (animatableIntegerValue4 = animatableTextStyle.f22099e) != null) {
            BaseKeyframeAnimation baseKeyframeAnimationA3 = animatableIntegerValue4.a();
            this.a0 = (IntegerKeyframeAnimation) baseKeyframeAnimationA3;
            baseKeyframeAnimationA3.a(this);
            h(baseKeyframeAnimationA3);
        }
        if (animatableTextProperties != null && (animatableTextRangeSelector4 = animatableTextProperties.f22092b) != null && (animatableIntegerValue3 = animatableTextRangeSelector4.f22093a) != null) {
            BaseKeyframeAnimation baseKeyframeAnimationA4 = animatableIntegerValue3.a();
            this.d0 = (IntegerKeyframeAnimation) baseKeyframeAnimationA4;
            baseKeyframeAnimationA4.a(this);
            h(baseKeyframeAnimationA4);
        }
        if (animatableTextProperties != null && (animatableTextRangeSelector3 = animatableTextProperties.f22092b) != null && (animatableIntegerValue2 = animatableTextRangeSelector3.f22094b) != null) {
            BaseKeyframeAnimation baseKeyframeAnimationA5 = animatableIntegerValue2.a();
            this.e0 = (IntegerKeyframeAnimation) baseKeyframeAnimationA5;
            baseKeyframeAnimationA5.a(this);
            h(baseKeyframeAnimationA5);
        }
        if (animatableTextProperties != null && (animatableTextRangeSelector2 = animatableTextProperties.f22092b) != null && (animatableIntegerValue = animatableTextRangeSelector2.f22095c) != null) {
            BaseKeyframeAnimation baseKeyframeAnimationA6 = animatableIntegerValue.a();
            this.f0 = (IntegerKeyframeAnimation) baseKeyframeAnimationA6;
            baseKeyframeAnimationA6.a(this);
            h(baseKeyframeAnimationA6);
        }
        if (animatableTextProperties == null || (animatableTextRangeSelector = animatableTextProperties.f22092b) == null) {
            return;
        }
        this.R = animatableTextRangeSelector.d;
    }

    public static void u(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        canvas.drawText(str, 0, str.length(), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, paint);
    }

    public static void v(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public final void f(RectF rectF, Matrix matrix, boolean z) {
        super.f(rectF, matrix, z);
        LottieComposition lottieComposition = this.Q;
        rectF.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, lottieComposition.f21754k.width(), lottieComposition.f21754k.height());
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.KeyPathElement
    public final void g(LottieValueCallback lottieValueCallback, Object obj) {
        super.g(lottieValueCallback, obj);
        PointF pointF = LottieProperty.f21772a;
        if (obj == 1) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.T;
            if (valueCallbackKeyframeAnimation != null) {
                o(valueCallbackKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.T = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.T = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.a(this);
            h(this.T);
            return;
        }
        if (obj == 2) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation3 = this.V;
            if (valueCallbackKeyframeAnimation3 != null) {
                o(valueCallbackKeyframeAnimation3);
            }
            if (lottieValueCallback == null) {
                this.V = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation4 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.V = valueCallbackKeyframeAnimation4;
            valueCallbackKeyframeAnimation4.a(this);
            h(this.V);
            return;
        }
        if (obj == LottieProperty.q) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation5 = this.X;
            if (valueCallbackKeyframeAnimation5 != null) {
                o(valueCallbackKeyframeAnimation5);
            }
            if (lottieValueCallback == null) {
                this.X = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation6 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.X = valueCallbackKeyframeAnimation6;
            valueCallbackKeyframeAnimation6.a(this);
            h(this.X);
            return;
        }
        if (obj == LottieProperty.r) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation7 = this.Z;
            if (valueCallbackKeyframeAnimation7 != null) {
                o(valueCallbackKeyframeAnimation7);
            }
            if (lottieValueCallback == null) {
                this.Z = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation8 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.Z = valueCallbackKeyframeAnimation8;
            valueCallbackKeyframeAnimation8.a(this);
            h(this.Z);
            return;
        }
        if (obj == LottieProperty.D) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation9 = this.b0;
            if (valueCallbackKeyframeAnimation9 != null) {
                o(valueCallbackKeyframeAnimation9);
            }
            if (lottieValueCallback == null) {
                this.b0 = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation10 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.b0 = valueCallbackKeyframeAnimation10;
            valueCallbackKeyframeAnimation10.a(this);
            h(this.b0);
            return;
        }
        if (obj != LottieProperty.K) {
            if (obj == LottieProperty.M) {
                this.O.m(lottieValueCallback);
                return;
            }
            return;
        }
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation11 = this.c0;
        if (valueCallbackKeyframeAnimation11 != null) {
            o(valueCallbackKeyframeAnimation11);
        }
        if (lottieValueCallback == null) {
            this.c0 = null;
            return;
        }
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation12 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
        this.c0 = valueCallbackKeyframeAnimation12;
        valueCallbackKeyframeAnimation12.a(this);
        h(this.c0);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0356 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:101:0x0358  */
    /* JADX WARN: Code duplicated, block: B:102:0x035b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:103:0x035d  */
    /* JADX WARN: Code duplicated, block: B:104:0x0360  */
    /* JADX WARN: Code duplicated, block: B:108:0x0368  */
    /* JADX WARN: Code duplicated, block: B:127:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:129:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:130:0x03fb  */
    /* JADX WARN: Code duplicated, block: B:134:0x040e  */
    /* JADX WARN: Code duplicated, block: B:136:0x0427  */
    /* JADX WARN: Code duplicated, block: B:138:0x043e  */
    /* JADX WARN: Code duplicated, block: B:140:0x0453 A[LOOP:7: B:139:0x0451->B:140:0x0453, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:143:0x0475  */
    /* JADX WARN: Code duplicated, block: B:145:0x0493  */
    /* JADX WARN: Code duplicated, block: B:146:0x0499  */
    /* JADX WARN: Code duplicated, block: B:149:0x04a7 A[LOOP:9: B:147:0x04a1->B:149:0x04a7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:153:0x04ca  */
    /* JADX WARN: Code duplicated, block: B:157:0x04dc A[LOOP:10: B:155:0x04d6->B:157:0x04dc, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:161:0x04f0  */
    /* JADX WARN: Code duplicated, block: B:164:0x0507  */
    /* JADX WARN: Code duplicated, block: B:167:0x0514  */
    /* JADX WARN: Code duplicated, block: B:170:0x052a A[LOOP:13: B:165:0x050e->B:170:0x052a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:173:0x0542  */
    /* JADX WARN: Code duplicated, block: B:174:0x0549  */
    /* JADX WARN: Code duplicated, block: B:177:0x0563  */
    /* JADX WARN: Code duplicated, block: B:203:0x0530 A[EDGE_INSN: B:203:0x0530->B:171:0x0530 BREAK  A[LOOP:12: B:162:0x0501->B:169:0x0521], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:24:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:25:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:29:0x0106  */
    /* JADX WARN: Code duplicated, block: B:31:0x0119  */
    /* JADX WARN: Code duplicated, block: B:34:0x0125  */
    /* JADX WARN: Code duplicated, block: B:36:0x0141  */
    /* JADX WARN: Code duplicated, block: B:37:0x0153  */
    /* JADX WARN: Code duplicated, block: B:39:0x015e  */
    /* JADX WARN: Code duplicated, block: B:40:0x016f  */
    /* JADX WARN: Code duplicated, block: B:42:0x0186 A[LOOP:4: B:41:0x0184->B:42:0x0186, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:47:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:49:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:50:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:55:0x024f  */
    /* JADX WARN: Code duplicated, block: B:78:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:80:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:81:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:83:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:86:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:88:0x0309 A[PHI: r15
      0x0309: PHI (r15v3 android.graphics.Typeface) = (r15v2 android.graphics.Typeface), (r15v5 android.graphics.Typeface) binds: [B:85:0x02f7, B:87:0x0307] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:89:0x030e  */
    /* JADX WARN: Code duplicated, block: B:91:0x0318  */
    /* JADX WARN: Code duplicated, block: B:92:0x031d  */
    /* JADX WARN: Code duplicated, block: B:94:0x0321  */
    /* JADX WARN: Code duplicated, block: B:95:0x0325  */
    /* JADX WARN: Instruction removed from duplicated block: B:95:0x0325, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final void k(Canvas canvas, Matrix matrix, int i2, DropShadow dropShadow) {
        int i3;
        Typeface typeface;
        FontAssetManager fontAssetManager;
        Typeface typefaceCreateFromAsset;
        MutablePair mutablePair;
        HashMap map;
        HashMap map2;
        Typeface typeface2;
        Typeface typeface3;
        boolean zContains;
        boolean zContains2;
        int i4;
        float fFloatValue;
        float fC;
        List listAsList;
        int size;
        int i5;
        int length;
        int i6;
        PointF pointF;
        float f2;
        float f3;
        int i7;
        List listZ;
        int i8;
        TextSubLine textSubLine;
        int i9;
        String string;
        ArrayList arrayList;
        int length2;
        int i10;
        StringBuilder sb;
        int i11;
        String string2;
        String str;
        int i12;
        ArrayList arrayList2;
        Bidi bidi;
        int runCount;
        byte[] bArr;
        Integer[] numArr;
        int i13;
        StringBuilder sb2;
        int i14;
        int runLevel;
        String strSubstring;
        StringBuilder sb3;
        int length3;
        Canvas canvas2;
        float fFloatValue2;
        float f4;
        int i15;
        int i16;
        PointF pointF2;
        float f5;
        float f6;
        List listZ2;
        int i17;
        TextSubLine textSubLine2;
        String str2;
        int i18;
        float f7;
        LottieComposition lottieComposition;
        FontCharacter fontCharacter;
        HashMap map3;
        List list;
        int size2;
        ArrayList arrayList3;
        int i19;
        List list2;
        int i20;
        Paint paint;
        Paint paint2;
        Path path;
        Paint paint3;
        Paint paint4;
        DocumentData documentData = (DocumentData) this.O.f();
        LottieComposition lottieComposition2 = this.Q;
        Font font = (Font) lottieComposition2.f21750f.get(documentData.f22064b);
        if (font == null) {
            return;
        }
        String str3 = font.f22074c;
        String str4 = font.f22072a;
        canvas.save();
        canvas.concat(matrix);
        t(documentData, i2, 0);
        LottieDrawable lottieDrawable = this.P;
        Map map4 = lottieDrawable.f21765k;
        String str5 = "\n";
        FloatKeyframeAnimation floatKeyframeAnimation = this.Y;
        int i21 = 0;
        Paint paint5 = this.I;
        Paint paint6 = this.J;
        if (map4 == null) {
            i3 = 2;
            if (lottieDrawable.f21758b.f21751h.e() > 0) {
                ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.b0;
                float fFloatValue3 = valueCallbackKeyframeAnimation != null ? ((Float) valueCallbackKeyframeAnimation.f()).floatValue() : documentData.f22065c;
                Object obj = Utils.f22314e.get();
                float f8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                float[] fArr = (float[]) obj;
                fArr[0] = 0.0f;
                fArr[1] = 0.0f;
                float f9 = Utils.f22315f;
                fArr[2] = f9;
                fArr[3] = f9;
                float f10 = fFloatValue3 / 100.0f;
                matrix.mapPoints(fArr);
                Paint paint7 = paint5;
                LottieDrawable lottieDrawable2 = lottieDrawable;
                LottieComposition lottieComposition3 = lottieComposition2;
                String str6 = str3;
                Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1]);
                List listAsList2 = Arrays.asList(documentData.f22063a.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll("\n", "\r").split("\r"));
                int size3 = listAsList2.size();
                float f11 = documentData.f22066e / 10.0f;
                ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = this.Z;
                if (valueCallbackKeyframeAnimation2 != null) {
                    fFloatValue2 = ((Float) valueCallbackKeyframeAnimation2.f()).floatValue();
                } else {
                    if (floatKeyframeAnimation != null) {
                        fFloatValue2 = ((Float) floatKeyframeAnimation.f()).floatValue();
                    }
                    f4 = f11;
                    i15 = 0;
                    i16 = -1;
                    while (i15 < size3) {
                        String str7 = (String) listAsList2.get(i15);
                        pointF2 = documentData.m;
                        if (pointF2 == null) {
                            f5 = f8;
                        } else {
                            f5 = pointF2.x;
                        }
                        f6 = f10;
                        i17 = i21;
                        for (listZ2 = z(str7, f5, font, f6, f4, true); i17 < listZ2.size(); listZ2 = listZ2) {
                            textSubLine2 = (TextSubLine) listZ2.get(i17);
                            i16++;
                            canvas.save();
                            if (y(canvas, documentData, i16, textSubLine2.f22207b)) {
                                str2 = textSubLine2.f22206a;
                                i18 = i21;
                                while (i18 < str2.length()) {
                                    List list3 = listAsList2;
                                    String str8 = str6;
                                    int i22 = i17;
                                    f7 = f4;
                                    lottieComposition = lottieComposition3;
                                    fontCharacter = (FontCharacter) lottieComposition.f21751h.b(FontCharacter.a(str2.charAt(i18), str4, str8));
                                    if (fontCharacter == null) {
                                        lottieComposition3 = lottieComposition;
                                        str2 = str2;
                                        size3 = size3;
                                        i15 = i15;
                                        i18 = i18;
                                        paint = paint6;
                                        lottieDrawable2 = lottieDrawable2;
                                        paint2 = paint7;
                                    } else {
                                        t(documentData, i2, i18);
                                        map3 = this.K;
                                        if (map3.containsKey(fontCharacter)) {
                                            list2 = (List) map3.get(fontCharacter);
                                        } else {
                                            list = fontCharacter.f22075a;
                                            size2 = list.size();
                                            arrayList3 = new ArrayList(size2);
                                            i19 = i21;
                                            while (i19 < size2) {
                                                arrayList3.add(new ContentGroup(lottieDrawable2, this, (ShapeGroup) list.get(i19), lottieComposition));
                                                size2 = size2;
                                                i19++;
                                                list = list;
                                            }
                                            map3.put(fontCharacter, arrayList3);
                                            list2 = arrayList3;
                                        }
                                        i20 = i21;
                                        while (i20 < list2.size()) {
                                            path = ((ContentGroup) list2.get(i20)).getPath();
                                            LottieComposition lottieComposition4 = lottieComposition;
                                            path.computeBounds(this.G, i21);
                                            Matrix matrix2 = this.H;
                                            matrix2.reset();
                                            List list4 = list2;
                                            matrix2.preTranslate(f8, (-documentData.g) * Utils.c());
                                            matrix2.preScale(f6, f6);
                                            path.transform(matrix2);
                                            if (documentData.f22071k) {
                                                paint4 = paint7;
                                                v(path, paint4, canvas);
                                                paint3 = paint6;
                                                v(path, paint3, canvas);
                                            } else {
                                                paint3 = paint6;
                                                paint4 = paint7;
                                                v(path, paint3, canvas);
                                                v(path, paint4, canvas);
                                            }
                                            i20++;
                                            paint6 = paint3;
                                            paint7 = paint4;
                                            list2 = list4;
                                            lottieComposition = lottieComposition4;
                                            i21 = 0;
                                            f8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        }
                                        lottieComposition3 = lottieComposition;
                                        paint = paint6;
                                        paint2 = paint7;
                                        canvas.translate((Utils.c() * ((float) fontCharacter.f22077c) * f6) + f7, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    }
                                    f4 = f7;
                                    paint6 = paint;
                                    str6 = str8;
                                    paint7 = paint2;
                                    lottieDrawable2 = lottieDrawable2;
                                    i17 = i22;
                                    listAsList2 = list3;
                                    str2 = str2;
                                    i15 = i15;
                                    size3 = size3;
                                    i21 = 0;
                                    f8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    i18++;
                                }
                            }
                            int i23 = i17;
                            float f12 = f4;
                            List list5 = listAsList2;
                            int i24 = size3;
                            int i25 = i15;
                            Paint paint8 = paint6;
                            LottieDrawable lottieDrawable3 = lottieDrawable2;
                            Paint paint9 = paint7;
                            String str9 = str6;
                            canvas.restore();
                            f4 = f12;
                            paint6 = paint8;
                            str6 = str9;
                            paint7 = paint9;
                            lottieDrawable2 = lottieDrawable3;
                            listAsList2 = list5;
                            i15 = i25;
                            size3 = i24;
                            i21 = 0;
                            f8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            i17 = i23 + 1;
                        }
                        f10 = f6;
                        listAsList2 = listAsList2;
                        i21 = 0;
                        f8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        i15++;
                    }
                    canvas2 = canvas;
                }
                f11 += fFloatValue2;
                f4 = f11;
                i15 = 0;
                i16 = -1;
                while (i15 < size3) {
                    String str10 = (String) listAsList2.get(i15);
                    pointF2 = documentData.m;
                    if (pointF2 == null) {
                        f5 = f8;
                    } else {
                        f5 = pointF2.x;
                    }
                    f6 = f10;
                    i17 = i21;
                    while (i17 < listZ2.size()) {
                        textSubLine2 = (TextSubLine) listZ2.get(i17);
                        i16++;
                        canvas.save();
                        if (y(canvas, documentData, i16, textSubLine2.f22207b)) {
                            str2 = textSubLine2.f22206a;
                            i18 = i21;
                            while (i18 < str2.length()) {
                                List list6 = listAsList2;
                                String str11 = str6;
                                int i26 = i17;
                                f7 = f4;
                                lottieComposition = lottieComposition3;
                                fontCharacter = (FontCharacter) lottieComposition.f21751h.b(FontCharacter.a(str2.charAt(i18), str4, str11));
                                if (fontCharacter == null) {
                                    lottieComposition3 = lottieComposition;
                                    str2 = str2;
                                    size3 = size3;
                                    i15 = i15;
                                    i18 = i18;
                                    paint = paint6;
                                    lottieDrawable2 = lottieDrawable2;
                                    paint2 = paint7;
                                } else {
                                    t(documentData, i2, i18);
                                    map3 = this.K;
                                    if (map3.containsKey(fontCharacter)) {
                                        list2 = (List) map3.get(fontCharacter);
                                    } else {
                                        list = fontCharacter.f22075a;
                                        size2 = list.size();
                                        arrayList3 = new ArrayList(size2);
                                        i19 = i21;
                                        while (i19 < size2) {
                                            arrayList3.add(new ContentGroup(lottieDrawable2, this, (ShapeGroup) list.get(i19), lottieComposition));
                                            size2 = size2;
                                            i19++;
                                            list = list;
                                        }
                                        map3.put(fontCharacter, arrayList3);
                                        list2 = arrayList3;
                                    }
                                    i20 = i21;
                                    while (i20 < list2.size()) {
                                        path = ((ContentGroup) list2.get(i20)).getPath();
                                        LottieComposition lottieComposition5 = lottieComposition;
                                        path.computeBounds(this.G, i21);
                                        Matrix matrix3 = this.H;
                                        matrix3.reset();
                                        List list7 = list2;
                                        matrix3.preTranslate(f8, (-documentData.g) * Utils.c());
                                        matrix3.preScale(f6, f6);
                                        path.transform(matrix3);
                                        if (documentData.f22071k) {
                                            paint4 = paint7;
                                            v(path, paint4, canvas);
                                            paint3 = paint6;
                                            v(path, paint3, canvas);
                                        } else {
                                            paint3 = paint6;
                                            paint4 = paint7;
                                            v(path, paint3, canvas);
                                            v(path, paint4, canvas);
                                        }
                                        i20++;
                                        paint6 = paint3;
                                        paint7 = paint4;
                                        list2 = list7;
                                        lottieComposition = lottieComposition5;
                                        i21 = 0;
                                        f8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    }
                                    lottieComposition3 = lottieComposition;
                                    paint = paint6;
                                    paint2 = paint7;
                                    canvas.translate((Utils.c() * ((float) fontCharacter.f22077c) * f6) + f7, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                }
                                f4 = f7;
                                paint6 = paint;
                                str6 = str11;
                                paint7 = paint2;
                                lottieDrawable2 = lottieDrawable2;
                                i17 = i26;
                                listAsList2 = list6;
                                str2 = str2;
                                i15 = i15;
                                size3 = size3;
                                i21 = 0;
                                f8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                i18++;
                            }
                        }
                        int i27 = i17;
                        float f13 = f4;
                        List list8 = listAsList2;
                        int i28 = size3;
                        int i29 = i15;
                        Paint paint10 = paint6;
                        LottieDrawable lottieDrawable4 = lottieDrawable2;
                        Paint paint11 = paint7;
                        String str12 = str6;
                        canvas.restore();
                        f4 = f13;
                        paint6 = paint10;
                        str6 = str12;
                        paint7 = paint11;
                        lottieDrawable2 = lottieDrawable4;
                        listAsList2 = list8;
                        i15 = i29;
                        size3 = i28;
                        i21 = 0;
                        f8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        i17 = i27 + 1;
                    }
                    f10 = f6;
                    listAsList2 = listAsList2;
                    i21 = 0;
                    f8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    i15++;
                }
                canvas2 = canvas;
            }
            canvas2.restore();
        }
        i3 = 2;
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation3 = this.c0;
        if (valueCallbackKeyframeAnimation3 == null || (typefaceCreateFromAsset = (Typeface) valueCallbackKeyframeAnimation3.f()) == null) {
            Map map5 = lottieDrawable.f21765k;
            if (map5 == null) {
                typeface = null;
                if (lottieDrawable.getCallback() == null) {
                    fontAssetManager = null;
                } else {
                    if (lottieDrawable.f21764j == null) {
                        lottieDrawable.f21764j = new FontAssetManager(lottieDrawable.getCallback(), null);
                    }
                    fontAssetManager = lottieDrawable.f21764j;
                }
                if (fontAssetManager != null) {
                    mutablePair = fontAssetManager.f22052a;
                    mutablePair.f22086a = str4;
                    mutablePair.f22087b = str3;
                    map = fontAssetManager.f22053b;
                    typeface = (Typeface) map.get(mutablePair);
                    if (typeface != null) {
                        str5 = "\n";
                        typefaceCreateFromAsset = typeface;
                    } else {
                        map2 = fontAssetManager.f22054c;
                        typeface2 = (Typeface) map2.get(str4);
                        if (typeface2 != null) {
                            typefaceCreateFromAsset = typeface2;
                        } else {
                            typeface3 = font.d;
                            if (typeface3 != null) {
                                typefaceCreateFromAsset = typeface3;
                            } else {
                                typefaceCreateFromAsset = Typeface.createFromAsset(fontAssetManager.d, "fonts/" + str4 + fontAssetManager.f22055e);
                                map2.put(str4, typefaceCreateFromAsset);
                            }
                        }
                        zContains = str3.contains("Italic");
                        zContains2 = str3.contains("Bold");
                        if (!zContains && zContains2) {
                            i4 = 3;
                        } else if (zContains) {
                            i4 = i3;
                        } else if (zContains2) {
                            i4 = 1;
                        } else {
                            i4 = 0;
                        }
                        if (typefaceCreateFromAsset.getStyle() != i4) {
                            typefaceCreateFromAsset = Typeface.create(typefaceCreateFromAsset, i4);
                        }
                        map.put(mutablePair, typefaceCreateFromAsset);
                    }
                } else {
                    str5 = "\n";
                    typefaceCreateFromAsset = typeface;
                }
            } else {
                if (map5.containsKey(str4)) {
                    typefaceCreateFromAsset = (Typeface) map5.get(str4);
                } else {
                    String str13 = font.f22073b;
                    if (map5.containsKey(str13)) {
                        typefaceCreateFromAsset = (Typeface) map5.get(str13);
                    } else {
                        String strH = tr.h(str4, "-", str3);
                        if (map5.containsKey(strH)) {
                            typefaceCreateFromAsset = (Typeface) map5.get(strH);
                        } else {
                            typeface = null;
                            if (lottieDrawable.getCallback() == null) {
                                fontAssetManager = null;
                            } else {
                                if (lottieDrawable.f21764j == null) {
                                    lottieDrawable.f21764j = new FontAssetManager(lottieDrawable.getCallback(), null);
                                }
                                fontAssetManager = lottieDrawable.f21764j;
                            }
                            if (fontAssetManager != null) {
                                mutablePair = fontAssetManager.f22052a;
                                mutablePair.f22086a = str4;
                                mutablePair.f22087b = str3;
                                map = fontAssetManager.f22053b;
                                typeface = (Typeface) map.get(mutablePair);
                                if (typeface != null) {
                                    str5 = "\n";
                                    typefaceCreateFromAsset = typeface;
                                } else {
                                    map2 = fontAssetManager.f22054c;
                                    typeface2 = (Typeface) map2.get(str4);
                                    if (typeface2 != null) {
                                        typefaceCreateFromAsset = typeface2;
                                    } else {
                                        typeface3 = font.d;
                                        if (typeface3 != null) {
                                            typefaceCreateFromAsset = typeface3;
                                        } else {
                                            typefaceCreateFromAsset = Typeface.createFromAsset(fontAssetManager.d, "fonts/" + str4 + fontAssetManager.f22055e);
                                            map2.put(str4, typefaceCreateFromAsset);
                                        }
                                    }
                                    zContains = str3.contains("Italic");
                                    zContains2 = str3.contains("Bold");
                                    if (!zContains) {
                                        if (zContains) {
                                            i4 = i3;
                                        } else if (zContains2) {
                                            i4 = 1;
                                        } else {
                                            i4 = 0;
                                        }
                                    } else if (zContains) {
                                        i4 = i3;
                                    } else if (zContains2) {
                                        i4 = 1;
                                    } else {
                                        i4 = 0;
                                    }
                                    if (typefaceCreateFromAsset.getStyle() != i4) {
                                        typefaceCreateFromAsset = Typeface.create(typefaceCreateFromAsset, i4);
                                    }
                                    map.put(mutablePair, typefaceCreateFromAsset);
                                }
                            } else {
                                str5 = "\n";
                                typefaceCreateFromAsset = typeface;
                            }
                        }
                    }
                }
                str5 = "\n";
            }
            if (typefaceCreateFromAsset == null) {
                typefaceCreateFromAsset = font.d;
            }
        } else {
            str5 = "\n";
        }
        if (typefaceCreateFromAsset != null) {
            String str14 = documentData.f22063a;
            paint5.setTypeface(typefaceCreateFromAsset);
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation4 = this.b0;
            float fFloatValue4 = valueCallbackKeyframeAnimation4 != null ? ((Float) valueCallbackKeyframeAnimation4.f()).floatValue() : documentData.f22065c;
            paint5.setTextSize(Utils.c() * fFloatValue4);
            paint6.setTypeface(paint5.getTypeface());
            paint6.setTextSize(paint5.getTextSize());
            float f14 = documentData.f22066e / 10.0f;
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation5 = this.Z;
            if (valueCallbackKeyframeAnimation5 != null) {
                fFloatValue = ((Float) valueCallbackKeyframeAnimation5.f()).floatValue();
            } else {
                if (floatKeyframeAnimation != null) {
                    fFloatValue = ((Float) floatKeyframeAnimation.f()).floatValue();
                }
                fC = ((Utils.c() * f14) * fFloatValue4) / 100.0f;
                listAsList = Arrays.asList(str14.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll(str5, "\r").split("\r"));
                size = listAsList.size();
                i5 = 0;
                length = 0;
                i6 = -1;
                while (i5 < size) {
                    String str15 = (String) listAsList.get(i5);
                    pointF = documentData.m;
                    if (pointF == null) {
                        f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    } else {
                        f2 = pointF.x;
                    }
                    f3 = fC;
                    i7 = i3;
                    i8 = 0;
                    for (listZ = z(str15, f2, font, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, false); i8 < listZ.size(); listZ = listZ) {
                        textSubLine = (TextSubLine) listZ.get(i8);
                        i6++;
                        canvas.save();
                        if (y(canvas, documentData, i6, paint5.measureText(textSubLine.f22206a))) {
                            string = textSubLine.f22206a;
                            if (Bidi.requiresBidi(string.toCharArray(), 0, string.length())) {
                                bidi = new Bidi(string, -2);
                                runCount = bidi.getRunCount();
                                bArr = new byte[runCount];
                                numArr = new Integer[runCount];
                                i13 = 0;
                                while (i13 < runCount) {
                                    bArr[i13] = (byte) bidi.getRunLevel(i13);
                                    numArr[i13] = Integer.valueOf(i13);
                                    i13++;
                                    size = size;
                                }
                                i9 = size;
                                Bidi.reorderVisually(bArr, 0, numArr, 0, runCount);
                                sb2 = this.E;
                                sb2.setLength(0);
                                i14 = 0;
                                while (i14 < runCount) {
                                    int iIntValue = numArr[i14].intValue();
                                    int i30 = runCount;
                                    int runStart = bidi.getRunStart(iIntValue);
                                    Integer[] numArr2 = numArr;
                                    int runLimit = bidi.getRunLimit(iIntValue);
                                    runLevel = bidi.getRunLevel(iIntValue);
                                    strSubstring = string.substring(runStart, runLimit);
                                    if ((runLevel & 1) == 0) {
                                        sb2.append(strSubstring);
                                    } else {
                                        sb3 = this.F;
                                        length3 = 0;
                                        sb3.setLength(0);
                                        while (length3 < strSubstring.length()) {
                                            String strS = s(length3, strSubstring);
                                            sb3.insert(0, strS);
                                            length3 += strS.length();
                                            strSubstring = strSubstring;
                                        }
                                        sb2.append((CharSequence) sb3);
                                    }
                                    i14++;
                                    runCount = i30;
                                    numArr = numArr2;
                                    bidi = bidi;
                                }
                                string = sb2.toString();
                            } else {
                                i9 = size;
                            }
                            arrayList = this.M;
                            arrayList.clear();
                            length2 = 0;
                            while (length2 < string.length()) {
                                String strS2 = s(length2, string);
                                arrayList.add(strS2);
                                length2 += strS2.length();
                            }
                            i10 = 0;
                            while (i10 < arrayList.size()) {
                                sb = this.D;
                                sb.setLength(0);
                                sb.append((String) arrayList.get(i10));
                                i11 = i10 + 1;
                                while (i11 < arrayList.size()) {
                                    str = (String) arrayList.get(i11);
                                    i12 = 0;
                                    while (true) {
                                        if (i12 < str.length()) {
                                            break;
                                        }
                                        arrayList2 = arrayList;
                                        if (Character.getDirectionality(str.codePointAt(i12)) == 2) {
                                            break;
                                        }
                                        i12++;
                                        arrayList = arrayList2;
                                    }
                                    sb.insert(0, str);
                                    i11++;
                                    arrayList = arrayList2;
                                }
                                ArrayList arrayList4 = arrayList;
                                string2 = sb.toString();
                                t(documentData, i2, i10 + length);
                                if (documentData.f22071k) {
                                    u(string2, paint5, canvas);
                                    u(string2, paint6, canvas);
                                } else {
                                    u(string2, paint6, canvas);
                                    u(string2, paint5, canvas);
                                }
                                canvas.translate(paint5.measureText(string2) + f3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                i10 = i11;
                                arrayList = arrayList4;
                            }
                        } else {
                            f3 = f3;
                            listAsList = listAsList;
                            i9 = size;
                        }
                        length += textSubLine.f22206a.length();
                        canvas.restore();
                        i8++;
                        font = font;
                        i7 = 2;
                        f3 = f3;
                        listAsList = listAsList;
                        size = i9;
                    }
                    i5++;
                    font = font;
                    i3 = i7;
                    fC = f3;
                    size = size;
                }
            }
            f14 += fFloatValue;
            fC = ((Utils.c() * f14) * fFloatValue4) / 100.0f;
            listAsList = Arrays.asList(str14.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll(str5, "\r").split("\r"));
            size = listAsList.size();
            i5 = 0;
            length = 0;
            i6 = -1;
            while (i5 < size) {
                String str16 = (String) listAsList.get(i5);
                pointF = documentData.m;
                if (pointF == null) {
                    f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                } else {
                    f2 = pointF.x;
                }
                f3 = fC;
                i7 = i3;
                i8 = 0;
                while (i8 < listZ.size()) {
                    textSubLine = (TextSubLine) listZ.get(i8);
                    i6++;
                    canvas.save();
                    if (y(canvas, documentData, i6, paint5.measureText(textSubLine.f22206a))) {
                        string = textSubLine.f22206a;
                        if (Bidi.requiresBidi(string.toCharArray(), 0, string.length())) {
                            bidi = new Bidi(string, -2);
                            runCount = bidi.getRunCount();
                            bArr = new byte[runCount];
                            numArr = new Integer[runCount];
                            i13 = 0;
                            while (i13 < runCount) {
                                bArr[i13] = (byte) bidi.getRunLevel(i13);
                                numArr[i13] = Integer.valueOf(i13);
                                i13++;
                                size = size;
                            }
                            i9 = size;
                            Bidi.reorderVisually(bArr, 0, numArr, 0, runCount);
                            sb2 = this.E;
                            sb2.setLength(0);
                            i14 = 0;
                            while (i14 < runCount) {
                                int iIntValue2 = numArr[i14].intValue();
                                int i31 = runCount;
                                int runStart2 = bidi.getRunStart(iIntValue2);
                                Integer[] numArr3 = numArr;
                                int runLimit2 = bidi.getRunLimit(iIntValue2);
                                runLevel = bidi.getRunLevel(iIntValue2);
                                strSubstring = string.substring(runStart2, runLimit2);
                                if ((runLevel & 1) == 0) {
                                    sb2.append(strSubstring);
                                } else {
                                    sb3 = this.F;
                                    length3 = 0;
                                    sb3.setLength(0);
                                    while (length3 < strSubstring.length()) {
                                        String strS3 = s(length3, strSubstring);
                                        sb3.insert(0, strS3);
                                        length3 += strS3.length();
                                        strSubstring = strSubstring;
                                    }
                                    sb2.append((CharSequence) sb3);
                                }
                                i14++;
                                runCount = i31;
                                numArr = numArr3;
                                bidi = bidi;
                            }
                            string = sb2.toString();
                        } else {
                            i9 = size;
                        }
                        arrayList = this.M;
                        arrayList.clear();
                        length2 = 0;
                        while (length2 < string.length()) {
                            String strS4 = s(length2, string);
                            arrayList.add(strS4);
                            length2 += strS4.length();
                        }
                        i10 = 0;
                        while (i10 < arrayList.size()) {
                            sb = this.D;
                            sb.setLength(0);
                            sb.append((String) arrayList.get(i10));
                            i11 = i10 + 1;
                            while (i11 < arrayList.size()) {
                                str = (String) arrayList.get(i11);
                                i12 = 0;
                                while (true) {
                                    if (i12 < str.length()) {
                                        break;
                                        break;
                                    }
                                    arrayList2 = arrayList;
                                    if (Character.getDirectionality(str.codePointAt(i12)) == 2) {
                                        break;
                                    }
                                    i12++;
                                    arrayList = arrayList2;
                                }
                                sb.insert(0, str);
                                i11++;
                                arrayList = arrayList2;
                            }
                            ArrayList arrayList5 = arrayList;
                            string2 = sb.toString();
                            t(documentData, i2, i10 + length);
                            if (documentData.f22071k) {
                                u(string2, paint5, canvas);
                                u(string2, paint6, canvas);
                            } else {
                                u(string2, paint6, canvas);
                                u(string2, paint5, canvas);
                            }
                            canvas.translate(paint5.measureText(string2) + f3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            i10 = i11;
                            arrayList = arrayList5;
                        }
                    } else {
                        f3 = f3;
                        listAsList = listAsList;
                        i9 = size;
                    }
                    length += textSubLine.f22206a.length();
                    canvas.restore();
                    i8++;
                    font = font;
                    i7 = 2;
                    f3 = f3;
                    listAsList = listAsList;
                    size = i9;
                }
                i5++;
                font = font;
                i3 = i7;
                fC = f3;
                size = size;
            }
        }
        canvas2 = canvas;
        canvas2.restore();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final String s(int i2, String str) {
        int iCodePointAt = str.codePointAt(i2);
        int iCharCount = Character.charCount(iCodePointAt) + i2;
        while (iCharCount < str.length()) {
            int iCodePointAt2 = str.codePointAt(iCharCount);
            if (Character.getType(iCodePointAt2) != 16 && Character.getType(iCodePointAt2) != 27 && Character.getType(iCodePointAt2) != 6 && Character.getType(iCodePointAt2) != 28 && Character.getType(iCodePointAt2) != 8 && Character.getType(iCodePointAt2) != 19) {
                break;
            }
            iCharCount += Character.charCount(iCodePointAt2);
            iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
        }
        long j2 = iCodePointAt;
        LongSparseArray longSparseArray = this.L;
        if (longSparseArray.c(j2) >= 0) {
            return (String) longSparseArray.b(j2);
        }
        StringBuilder sb = this.C;
        sb.setLength(0);
        while (i2 < iCharCount) {
            int iCodePointAt3 = str.codePointAt(i2);
            sb.appendCodePoint(iCodePointAt3);
            i2 += Character.charCount(iCodePointAt3);
        }
        String string = sb.toString();
        longSparseArray.e(j2, string);
        return string;
    }

    public final void t(DocumentData documentData, int i2, int i3) {
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.T;
        Paint paint = this.I;
        if (valueCallbackKeyframeAnimation != null) {
            paint.setColor(((Integer) valueCallbackKeyframeAnimation.f()).intValue());
        } else {
            ColorKeyframeAnimation colorKeyframeAnimation = this.S;
            if (colorKeyframeAnimation == null || !x(i3)) {
                paint.setColor(documentData.f22068h);
            } else {
                paint.setColor(((Integer) colorKeyframeAnimation.f()).intValue());
            }
        }
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = this.V;
        Paint paint2 = this.J;
        if (valueCallbackKeyframeAnimation2 != null) {
            paint2.setColor(((Integer) valueCallbackKeyframeAnimation2.f()).intValue());
        } else {
            ColorKeyframeAnimation colorKeyframeAnimation2 = this.U;
            if (colorKeyframeAnimation2 == null || !x(i3)) {
                paint2.setColor(documentData.f22069i);
            } else {
                paint2.setColor(((Integer) colorKeyframeAnimation2.f()).intValue());
            }
        }
        BaseKeyframeAnimation baseKeyframeAnimation = this.w.p;
        int iIntValue = 100;
        int iIntValue2 = baseKeyframeAnimation == null ? 100 : ((Integer) baseKeyframeAnimation.f()).intValue();
        IntegerKeyframeAnimation integerKeyframeAnimation = this.a0;
        if (integerKeyframeAnimation != null && x(i3)) {
            iIntValue = ((Integer) integerKeyframeAnimation.f()).intValue();
        }
        int iRound = Math.round((((iIntValue / 100.0f) * ((iIntValue2 * 255.0f) / 100.0f)) * i2) / 255.0f);
        paint.setAlpha(iRound);
        paint2.setAlpha(iRound);
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation3 = this.X;
        if (valueCallbackKeyframeAnimation3 != null) {
            paint2.setStrokeWidth(((Float) valueCallbackKeyframeAnimation3.f()).floatValue());
            return;
        }
        FloatKeyframeAnimation floatKeyframeAnimation = this.W;
        if (floatKeyframeAnimation == null || !x(i3)) {
            paint2.setStrokeWidth(Utils.c() * documentData.f22070j);
        } else {
            paint2.setStrokeWidth(((Float) floatKeyframeAnimation.f()).floatValue());
        }
    }

    public final TextSubLine w(int i2) {
        ArrayList arrayList = this.N;
        for (int size = arrayList.size(); size < i2; size++) {
            TextSubLine textSubLine = new TextSubLine();
            textSubLine.f22206a = "";
            textSubLine.f22207b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            arrayList.add(textSubLine);
        }
        return (TextSubLine) arrayList.get(i2 - 1);
    }

    public final boolean x(int i2) {
        IntegerKeyframeAnimation integerKeyframeAnimation;
        int length = ((DocumentData) this.O.f()).f22063a.length();
        IntegerKeyframeAnimation integerKeyframeAnimation2 = this.d0;
        if (integerKeyframeAnimation2 == null || (integerKeyframeAnimation = this.e0) == null) {
            return true;
        }
        int iMin = Math.min(((Integer) integerKeyframeAnimation2.f()).intValue(), ((Integer) integerKeyframeAnimation.f()).intValue());
        int iMax = Math.max(((Integer) integerKeyframeAnimation2.f()).intValue(), ((Integer) integerKeyframeAnimation.f()).intValue());
        IntegerKeyframeAnimation integerKeyframeAnimation3 = this.f0;
        if (integerKeyframeAnimation3 != null) {
            int iIntValue = ((Integer) integerKeyframeAnimation3.f()).intValue();
            iMin += iIntValue;
            iMax += iIntValue;
        }
        if (this.R == TextRangeUnits.INDEX) {
            return i2 >= iMin && i2 < iMax;
        }
        float f2 = (i2 / length) * 100.0f;
        return f2 >= ((float) iMin) && f2 < ((float) iMax);
    }

    public final boolean y(Canvas canvas, DocumentData documentData, int i2, float f2) {
        PointF pointF = documentData.l;
        PointF pointF2 = documentData.m;
        float fC = Utils.c();
        float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float f4 = (i2 * documentData.f22067f * fC) + (pointF == null ? 0.0f : (documentData.f22067f * fC) + pointF.y);
        if (this.P.t && pointF2 != null && pointF != null && f4 >= pointF.y + pointF2.y + documentData.f22065c) {
            return false;
        }
        float f5 = pointF == null ? 0.0f : pointF.x;
        if (pointF2 != null) {
            f3 = pointF2.x;
        }
        int i3 = AnonymousClass3.f22205a[documentData.d.ordinal()];
        if (i3 == 1) {
            canvas.translate(f5, f4);
            return true;
        }
        if (i3 == 2) {
            canvas.translate((f5 + f3) - f2, f4);
            return true;
        }
        if (i3 != 3) {
            return true;
        }
        canvas.translate(((f3 / 2.0f) + f5) - (f2 / 2.0f), f4);
        return true;
    }

    public final List z(String str, float f2, Font font, float f3, float f4, boolean z) {
        float fMeasureText;
        int i2 = 0;
        int i3 = 0;
        boolean z2 = false;
        int i4 = 0;
        float f5 = 0.0f;
        float f6 = 0.0f;
        float f7 = 0.0f;
        for (int i5 = 0; i5 < str.length(); i5++) {
            char cCharAt = str.charAt(i5);
            if (z) {
                FontCharacter fontCharacter = (FontCharacter) this.Q.f21751h.b(FontCharacter.a(cCharAt, font.f22072a, font.f22074c));
                if (fontCharacter != null) {
                    fMeasureText = (Utils.c() * ((float) fontCharacter.f22077c) * f3) + f4;
                }
            } else {
                fMeasureText = this.I.measureText(str.substring(i5, i5 + 1)) + f4;
            }
            if (cCharAt == ' ') {
                z2 = true;
                f7 = fMeasureText;
            } else if (z2) {
                z2 = false;
                i4 = i5;
                f6 = fMeasureText;
            } else {
                f6 += fMeasureText;
            }
            f5 += fMeasureText;
            if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM && f5 >= f2 && cCharAt != ' ') {
                i2++;
                TextSubLine textSubLineW = w(i2);
                if (i4 == i3) {
                    String strSubstring = str.substring(i3, i5);
                    String strTrim = strSubstring.trim();
                    float length = (f5 - fMeasureText) - ((strTrim.length() - strSubstring.length()) * f7);
                    textSubLineW.f22206a = strTrim;
                    textSubLineW.f22207b = length;
                    i3 = i5;
                    i4 = i3;
                    f5 = fMeasureText;
                    f6 = f5;
                } else {
                    String strSubstring2 = str.substring(i3, i4 - 1);
                    String strTrim2 = strSubstring2.trim();
                    float length2 = ((f5 - f6) - ((strSubstring2.length() - strTrim2.length()) * f7)) - f7;
                    textSubLineW.f22206a = strTrim2;
                    textSubLineW.f22207b = length2;
                    f5 = f6;
                    i3 = i4;
                }
            }
        }
        if (f5 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            i2++;
            TextSubLine textSubLineW2 = w(i2);
            textSubLineW2.f22206a = str.substring(i3);
            textSubLineW2.f22207b = f5;
        }
        return this.N.subList(0, i2);
    }
}
