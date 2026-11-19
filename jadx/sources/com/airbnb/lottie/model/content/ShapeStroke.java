package com.airbnb.lottie.model.content;

import android.graphics.Paint;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.StrokeContent;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ShapeStroke implements ContentModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f22170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnimatableFloatValue f22171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f22172c;
    public final AnimatableColorValue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnimatableIntegerValue f22173e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnimatableFloatValue f22174f;
    public final LineCapType g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LineJoinType f22175h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f22176i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f22177j;

    /* JADX INFO: renamed from: com.airbnb.lottie.model.content.ShapeStroke$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f22178a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f22179b;

        static {
            int[] iArr = new int[LineJoinType.values().length];
            f22179b = iArr;
            try {
                iArr[LineJoinType.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22179b[LineJoinType.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22179b[LineJoinType.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[LineCapType.values().length];
            f22178a = iArr2;
            try {
                iArr2[LineCapType.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f22178a[LineCapType.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f22178a[LineCapType.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class LineCapType {
        private static final /* synthetic */ LineCapType[] $VALUES;
        public static final LineCapType BUTT;
        public static final LineCapType ROUND;
        public static final LineCapType UNKNOWN;

        static {
            LineCapType lineCapType = new LineCapType("BUTT", 0);
            BUTT = lineCapType;
            LineCapType lineCapType2 = new LineCapType("ROUND", 1);
            ROUND = lineCapType2;
            LineCapType lineCapType3 = new LineCapType("UNKNOWN", 2);
            UNKNOWN = lineCapType3;
            $VALUES = new LineCapType[]{lineCapType, lineCapType2, lineCapType3};
        }

        public static LineCapType valueOf(String str) {
            return (LineCapType) Enum.valueOf(LineCapType.class, str);
        }

        public static LineCapType[] values() {
            return (LineCapType[]) $VALUES.clone();
        }

        public final Paint.Cap a() {
            int i2 = AnonymousClass1.f22178a[ordinal()];
            if (i2 != 1) {
                return i2 != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND;
            }
            return Paint.Cap.BUTT;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class LineJoinType {
        private static final /* synthetic */ LineJoinType[] $VALUES;
        public static final LineJoinType BEVEL;
        public static final LineJoinType MITER;
        public static final LineJoinType ROUND;

        static {
            LineJoinType lineJoinType = new LineJoinType("MITER", 0);
            MITER = lineJoinType;
            LineJoinType lineJoinType2 = new LineJoinType("ROUND", 1);
            ROUND = lineJoinType2;
            LineJoinType lineJoinType3 = new LineJoinType("BEVEL", 2);
            BEVEL = lineJoinType3;
            $VALUES = new LineJoinType[]{lineJoinType, lineJoinType2, lineJoinType3};
        }

        public static LineJoinType valueOf(String str) {
            return (LineJoinType) Enum.valueOf(LineJoinType.class, str);
        }

        public static LineJoinType[] values() {
            return (LineJoinType[]) $VALUES.clone();
        }

        public final Paint.Join a() {
            int i2 = AnonymousClass1.f22179b[ordinal()];
            if (i2 == 1) {
                return Paint.Join.BEVEL;
            }
            if (i2 == 2) {
                return Paint.Join.MITER;
            }
            if (i2 != 3) {
                return null;
            }
            return Paint.Join.ROUND;
        }
    }

    public ShapeStroke(String str, AnimatableFloatValue animatableFloatValue, List<AnimatableFloatValue> list, AnimatableColorValue animatableColorValue, AnimatableIntegerValue animatableIntegerValue, AnimatableFloatValue animatableFloatValue2, LineCapType lineCapType, LineJoinType lineJoinType, float f2, boolean z) {
        this.f22170a = str;
        this.f22171b = animatableFloatValue;
        this.f22172c = list;
        this.d = animatableColorValue;
        this.f22173e = animatableIntegerValue;
        this.f22174f = animatableFloatValue2;
        this.g = lineCapType;
        this.f22175h = lineJoinType;
        this.f22176i = f2;
        this.f22177j = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public final Content a(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new StrokeContent(lottieDrawable, baseLayer, this);
    }
}
