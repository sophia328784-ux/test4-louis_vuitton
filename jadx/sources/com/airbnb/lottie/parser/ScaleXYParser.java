package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.ScaleXY;

/* JADX INFO: loaded from: classes.dex */
public class ScaleXYParser implements ValueParser<ScaleXY> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ScaleXYParser f22261a = new ScaleXYParser();

    @Override // com.airbnb.lottie.parser.ValueParser
    public final Object a(JsonReader jsonReader, float f2) {
        boolean z = jsonReader.w() == JsonReader.Token.BEGIN_ARRAY;
        if (z) {
            jsonReader.h();
        }
        float fQ = (float) jsonReader.q();
        float fQ2 = (float) jsonReader.q();
        while (jsonReader.o()) {
            jsonReader.C();
        }
        if (z) {
            jsonReader.k();
        }
        return new ScaleXY((fQ / 100.0f) * f2, (fQ2 / 100.0f) * f2);
    }
}
