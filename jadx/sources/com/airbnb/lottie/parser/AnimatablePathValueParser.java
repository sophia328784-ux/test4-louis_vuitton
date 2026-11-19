package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.keyframe.PathKeyframe;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatablePathValue;
import com.airbnb.lottie.model.animatable.AnimatableSplitDimensionPathValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class AnimatablePathValueParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JsonReader.Options f22208a = JsonReader.Options.a("k", "x", "y");

    public static AnimatablePathValue a(JsonReader jsonReader, LottieComposition lottieComposition) {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.w() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.h();
            while (jsonReader.o()) {
                JsonReader jsonReader2 = jsonReader;
                LottieComposition lottieComposition2 = lottieComposition;
                arrayList.add(new PathKeyframe(lottieComposition2, KeyframeParser.b(jsonReader2, lottieComposition2, Utils.c(), PathParser.f22255a, jsonReader.w() == JsonReader.Token.BEGIN_OBJECT, false)));
                jsonReader = jsonReader2;
                lottieComposition = lottieComposition2;
            }
            jsonReader.k();
            KeyframesParser.b(arrayList);
        } else {
            arrayList.add(new Keyframe(JsonUtils.b(jsonReader, Utils.c())));
        }
        return new AnimatablePathValue(arrayList);
    }

    public static AnimatableValue b(JsonReader jsonReader, LottieComposition lottieComposition) {
        jsonReader.j();
        AnimatablePathValue animatablePathValueA = null;
        AnimatableFloatValue animatableFloatValueB = null;
        boolean z = false;
        AnimatableFloatValue animatableFloatValueB2 = null;
        while (jsonReader.w() != JsonReader.Token.END_OBJECT) {
            int iZ = jsonReader.z(f22208a);
            if (iZ == 0) {
                animatablePathValueA = a(jsonReader, lottieComposition);
            } else if (iZ != 1) {
                if (iZ != 2) {
                    jsonReader.B();
                    jsonReader.C();
                } else if (jsonReader.w() == JsonReader.Token.STRING) {
                    jsonReader.C();
                    z = true;
                } else {
                    animatableFloatValueB = AnimatableValueParser.b(jsonReader, lottieComposition, true);
                }
            } else if (jsonReader.w() == JsonReader.Token.STRING) {
                jsonReader.C();
                z = true;
            } else {
                animatableFloatValueB2 = AnimatableValueParser.b(jsonReader, lottieComposition, true);
            }
        }
        jsonReader.m();
        if (z) {
            lottieComposition.a("Lottie doesn't support expressions.");
        }
        return animatablePathValueA != null ? animatablePathValueA : new AnimatableSplitDimensionPathValue(animatableFloatValueB2, animatableFloatValueB);
    }
}
