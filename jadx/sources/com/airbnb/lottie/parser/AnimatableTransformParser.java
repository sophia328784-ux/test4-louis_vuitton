package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePathValue;
import com.airbnb.lottie.model.animatable.AnimatableScaleValue;
import com.airbnb.lottie.model.animatable.AnimatableSplitDimensionPathValue;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.ScaleXY;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class AnimatableTransformParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JsonReader.Options f22212a = JsonReader.Options.a("a", "p", NBSSpanMetricUnit.Second, "rz", "r", "o", "so", "eo", "sk", "sa", "rx", "ry");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final JsonReader.Options f22213b = JsonReader.Options.a("k");

    public static void a(AnimatableFloatValue animatableFloatValue, LottieComposition lottieComposition) {
        Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (animatableFloatValue.b().isEmpty()) {
            animatableFloatValue.b().add(new Keyframe(lottieComposition, fValueOf, fValueOf, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Float.valueOf(lottieComposition.m)));
        } else if (((Keyframe) animatableFloatValue.b().get(0)).f22317b == null) {
            animatableFloatValue.b().set(0, new Keyframe(lottieComposition, fValueOf, fValueOf, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Float.valueOf(lottieComposition.m)));
        }
    }

    public static boolean b(AnimatableFloatValue animatableFloatValue) {
        if (animatableFloatValue != null) {
            return animatableFloatValue.isStatic() && ((Float) ((Keyframe) animatableFloatValue.b().get(0)).f22317b).floatValue() == Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0121  */
    public static AnimatableTransform c(JsonReader jsonReader, LottieComposition lottieComposition) {
        AnimatableScaleValue animatableScaleValue;
        boolean z = jsonReader.w() == JsonReader.Token.BEGIN_OBJECT;
        if (z) {
            jsonReader.j();
        }
        AnimatablePathValue animatablePathValueA = null;
        AnimatableValue animatableValueB = null;
        AnimatableFloatValue animatableFloatValueB = null;
        AnimatableScaleValue animatableScaleValue2 = null;
        AnimatableFloatValue animatableFloatValueB2 = null;
        AnimatableFloatValue animatableFloatValueB3 = null;
        AnimatableFloatValue animatableFloatValueB4 = null;
        AnimatableFloatValue animatableFloatValueB5 = null;
        AnimatableFloatValue animatableFloatValueB6 = null;
        AnimatableIntegerValue animatableIntegerValueC = null;
        AnimatableFloatValue animatableFloatValueB7 = null;
        AnimatableFloatValue animatableFloatValueB8 = null;
        while (jsonReader.o()) {
            switch (jsonReader.z(f22212a)) {
                case 0:
                    jsonReader.j();
                    while (jsonReader.o()) {
                        if (jsonReader.z(f22213b) != 0) {
                            jsonReader.B();
                            jsonReader.C();
                        } else {
                            animatablePathValueA = AnimatablePathValueParser.a(jsonReader, lottieComposition);
                        }
                    }
                    jsonReader.m();
                    break;
                case 1:
                    animatableValueB = AnimatablePathValueParser.b(jsonReader, lottieComposition);
                    break;
                case 2:
                    animatableScaleValue2 = new AnimatableScaleValue(KeyframesParser.a(jsonReader, lottieComposition, 1.0f, ScaleXYParser.f22261a, false));
                    break;
                case 3:
                    animatableFloatValueB6 = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                    a(animatableFloatValueB6, lottieComposition);
                    break;
                case 4:
                    animatableFloatValueB = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                    a(animatableFloatValueB, lottieComposition);
                    break;
                case 5:
                    animatableIntegerValueC = AnimatableValueParser.c(jsonReader, lottieComposition);
                    break;
                case 6:
                    animatableFloatValueB7 = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                    break;
                case 7:
                    animatableFloatValueB8 = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                    break;
                case 8:
                    animatableFloatValueB2 = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                    break;
                case 9:
                    animatableFloatValueB3 = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                    break;
                case 10:
                    animatableFloatValueB4 = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                    a(animatableFloatValueB4, lottieComposition);
                    break;
                case 11:
                    animatableFloatValueB5 = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                    a(animatableFloatValueB5, lottieComposition);
                    break;
                default:
                    jsonReader.B();
                    jsonReader.C();
                    break;
            }
        }
        if (z) {
            jsonReader.m();
        }
        if (animatablePathValueA == null || (animatablePathValueA.isStatic() && ((PointF) ((Keyframe) animatablePathValueA.f22088a.get(0)).f22317b).equals(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM))) {
            animatablePathValueA = null;
        }
        AnimatableValue animatableValue = (animatableValueB == null || (!(animatableValueB instanceof AnimatableSplitDimensionPathValue) && animatableValueB.isStatic() && ((PointF) ((Keyframe) animatableValueB.b().get(0)).f22317b).equals(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM))) ? null : animatableValueB;
        AnimatableFloatValue animatableFloatValue = b(animatableFloatValueB) ? null : animatableFloatValueB;
        if (animatableScaleValue2 == null) {
            animatableScaleValue = null;
        } else {
            if (animatableScaleValue2.isStatic()) {
                ScaleXY scaleXY = (ScaleXY) ((Keyframe) animatableScaleValue2.b().get(0)).f22317b;
                if (scaleXY.f22332a == 1.0f && scaleXY.f22333b == 1.0f) {
                    animatableScaleValue = null;
                }
            }
            animatableScaleValue = animatableScaleValue2;
        }
        return new AnimatableTransform(animatablePathValueA, animatableValue, animatableScaleValue, animatableFloatValue, animatableIntegerValueC, animatableFloatValueB7, animatableFloatValueB8, (animatableFloatValueB2 == null || (animatableFloatValueB2.isStatic() && ((Float) ((Keyframe) animatableFloatValueB2.b().get(0)).f22317b).floatValue() == Call.Parameters.DEFAULT_CAMERA_ZOOM)) ? null : animatableFloatValueB2, (animatableFloatValueB3 == null || (animatableFloatValueB3.isStatic() && ((Float) ((Keyframe) animatableFloatValueB3.b().get(0)).f22317b).floatValue() == Call.Parameters.DEFAULT_CAMERA_ZOOM)) ? null : animatableFloatValueB3, b(animatableFloatValueB4) ? null : animatableFloatValueB4, b(animatableFloatValueB5) ? null : animatableFloatValueB5, b(animatableFloatValueB6) ? null : animatableFloatValueB6);
    }
}
