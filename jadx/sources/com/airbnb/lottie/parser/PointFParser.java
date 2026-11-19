package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import defpackage.az;

/* JADX INFO: loaded from: classes.dex */
public class PointFParser implements ValueParser<PointF> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PointFParser f22256a = new PointFParser();

    @Override // com.airbnb.lottie.parser.ValueParser
    public final Object a(JsonReader jsonReader, float f2) {
        JsonReader.Token tokenW = jsonReader.w();
        if (tokenW != JsonReader.Token.BEGIN_ARRAY && tokenW != JsonReader.Token.BEGIN_OBJECT) {
            if (tokenW != JsonReader.Token.NUMBER) {
                az.m(tokenW, "Cannot convert json to point. Next token is ");
                return null;
            }
            PointF pointF = new PointF(((float) jsonReader.q()) * f2, ((float) jsonReader.q()) * f2);
            while (jsonReader.o()) {
                jsonReader.C();
            }
            return pointF;
        }
        return JsonUtils.b(jsonReader, f2);
    }
}
