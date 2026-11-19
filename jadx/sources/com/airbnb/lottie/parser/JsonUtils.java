package com.airbnb.lottie.parser;

import android.graphics.Color;
import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import defpackage.az;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
abstract class JsonUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JsonReader.Options f22241a = JsonReader.Options.a("x", "y");

    /* JADX INFO: renamed from: com.airbnb.lottie.parser.JsonUtils$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f22242a;

        static {
            int[] iArr = new int[JsonReader.Token.values().length];
            f22242a = iArr;
            try {
                iArr[JsonReader.Token.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22242a[JsonReader.Token.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22242a[JsonReader.Token.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static int a(JsonReader jsonReader) {
        jsonReader.h();
        int iQ = (int) (jsonReader.q() * 255.0d);
        int iQ2 = (int) (jsonReader.q() * 255.0d);
        int iQ3 = (int) (jsonReader.q() * 255.0d);
        while (jsonReader.o()) {
            jsonReader.C();
        }
        jsonReader.k();
        return Color.argb(255, iQ, iQ2, iQ3);
    }

    public static PointF b(JsonReader jsonReader, float f2) {
        int i2 = AnonymousClass1.f22242a[jsonReader.w().ordinal()];
        if (i2 == 1) {
            float fQ = (float) jsonReader.q();
            float fQ2 = (float) jsonReader.q();
            while (jsonReader.o()) {
                jsonReader.C();
            }
            return new PointF(fQ * f2, fQ2 * f2);
        }
        if (i2 == 2) {
            jsonReader.h();
            float fQ3 = (float) jsonReader.q();
            float fQ4 = (float) jsonReader.q();
            while (jsonReader.w() != JsonReader.Token.END_ARRAY) {
                jsonReader.C();
            }
            jsonReader.k();
            return new PointF(fQ3 * f2, fQ4 * f2);
        }
        if (i2 != 3) {
            az.w(jsonReader.w(), "Unknown point starts with ");
            return null;
        }
        jsonReader.j();
        float fD = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fD2 = 0.0f;
        while (jsonReader.o()) {
            int iZ = jsonReader.z(f22241a);
            if (iZ == 0) {
                fD = d(jsonReader);
            } else if (iZ != 1) {
                jsonReader.B();
                jsonReader.C();
            } else {
                fD2 = d(jsonReader);
            }
        }
        jsonReader.m();
        return new PointF(fD * f2, fD2 * f2);
    }

    public static ArrayList c(JsonReader jsonReader, float f2) {
        ArrayList arrayList = new ArrayList();
        jsonReader.h();
        while (jsonReader.w() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.h();
            arrayList.add(b(jsonReader, f2));
            jsonReader.k();
        }
        jsonReader.k();
        return arrayList;
    }

    public static float d(JsonReader jsonReader) {
        JsonReader.Token tokenW = jsonReader.w();
        int i2 = AnonymousClass1.f22242a[tokenW.ordinal()];
        if (i2 == 1) {
            return (float) jsonReader.q();
        }
        if (i2 != 2) {
            az.m(tokenW, "Unknown value for token of type ");
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        jsonReader.h();
        float fQ = (float) jsonReader.q();
        while (jsonReader.o()) {
            jsonReader.C();
        }
        jsonReader.k();
        return fQ;
    }
}
