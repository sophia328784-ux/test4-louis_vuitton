package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;

/* JADX INFO: loaded from: classes.dex */
public class FloatParser implements ValueParser<Float> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FloatParser f22230a = new FloatParser();

    @Override // com.airbnb.lottie.parser.ValueParser
    public final Object a(JsonReader jsonReader, float f2) {
        return Float.valueOf(JsonUtils.d(jsonReader) * f2);
    }
}
