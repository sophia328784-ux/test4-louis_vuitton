package com.airbnb.lottie.parser;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import java.lang.ref.WeakReference;
import net.rtccloud.sdk.Call;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
abstract class KeyframeParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static SparseArrayCompat f22244b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LinearInterpolator f22243a = new LinearInterpolator();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final JsonReader.Options f22245c = JsonReader.Options.a("t", NBSSpanMetricUnit.Second, "e", "o", "i", NBSSpanMetricUnit.Hour, MvelScriptManager.VAR_TO, "ti");
    public static final JsonReader.Options d = JsonReader.Options.a("x", "y");

    public static Interpolator a(PointF pointF, PointF pointF2) {
        WeakReference weakReference;
        Interpolator pathInterpolator;
        pointF.x = MiscUtils.b(pointF.x, -1.0f, 1.0f);
        pointF.y = MiscUtils.b(pointF.y, -100.0f, 100.0f);
        pointF2.x = MiscUtils.b(pointF2.x, -1.0f, 1.0f);
        float fB = MiscUtils.b(pointF2.y, -100.0f, 100.0f);
        pointF2.y = fB;
        float f2 = pointF.x;
        float f3 = pointF.y;
        float f4 = pointF2.x;
        Matrix matrix = Utils.f22311a;
        int i2 = f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM ? (int) (527.0f * f2) : 17;
        if (f3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            i2 = (int) (i2 * 31 * f3);
        }
        if (f4 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            i2 = (int) (i2 * 31 * f4);
        }
        if (fB != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            i2 = (int) (i2 * 31 * fB);
        }
        AsyncUpdates asyncUpdates = L.f21740a;
        synchronized (KeyframeParser.class) {
            if (f22244b == null) {
                f22244b = new SparseArrayCompat();
            }
            weakReference = (WeakReference) f22244b.b(i2);
        }
        Interpolator interpolator = weakReference != null ? (Interpolator) weakReference.get() : null;
        if (weakReference != null && interpolator != null) {
            return interpolator;
        }
        try {
            pathInterpolator = new PathInterpolator(pointF.x, pointF.y, pointF2.x, pointF2.y);
        } catch (IllegalArgumentException e2) {
            pathInterpolator = "The Path cannot loop back on itself.".equals(e2.getMessage()) ? new PathInterpolator(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, Call.Parameters.DEFAULT_CAMERA_ZOOM), pointF2.y) : new LinearInterpolator();
        }
        AsyncUpdates asyncUpdates2 = L.f21740a;
        try {
            WeakReference weakReference2 = new WeakReference(pathInterpolator);
            synchronized (KeyframeParser.class) {
                f22244b.d(i2, weakReference2);
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
        }
        return pathInterpolator;
    }

    /* JADX WARN: Code duplicated, block: B:96:0x0229  */
    public static Keyframe b(JsonReader jsonReader, LottieComposition lottieComposition, float f2, ValueParser valueParser, boolean z, boolean z2) {
        Object obj;
        Interpolator interpolatorA;
        Interpolator interpolatorA2;
        Interpolator interpolatorA3;
        Object obj2;
        Keyframe keyframe;
        JsonReader.Options options;
        LinearInterpolator linearInterpolator;
        JsonReader.Options options2;
        PointF pointF;
        float f3;
        JsonReader.Options options3 = f22245c;
        LinearInterpolator linearInterpolator2 = f22243a;
        if (!z || !z2) {
            JsonReader.Options options4 = options3;
            if (!z) {
                return new Keyframe(valueParser.a(jsonReader, f2));
            }
            jsonReader.j();
            PointF pointFB = null;
            PointF pointFB2 = null;
            PointF pointFB3 = null;
            PointF pointFB4 = null;
            boolean z3 = false;
            Object objA = null;
            float fQ = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            Object objA2 = null;
            while (jsonReader.o()) {
                options4 = options4;
                switch (jsonReader.z(options4)) {
                    case 0:
                        fQ = (float) jsonReader.q();
                        continue;
                    case 1:
                        objA = valueParser.a(jsonReader, f2);
                        break;
                    case 2:
                        objA2 = valueParser.a(jsonReader, f2);
                        break;
                    case 3:
                        pointFB4 = JsonUtils.b(jsonReader, 1.0f);
                        break;
                    case 4:
                        pointFB = JsonUtils.b(jsonReader, 1.0f);
                        break;
                    case 5:
                        z3 = jsonReader.r() == 1;
                        break;
                    case 6:
                        pointFB2 = JsonUtils.b(jsonReader, f2);
                        break;
                    case 7:
                        pointFB3 = JsonUtils.b(jsonReader, f2);
                        break;
                    default:
                        jsonReader.C();
                        break;
                }
            }
            jsonReader.m();
            if (!z3) {
                if (pointFB4 == null || pointFB == null) {
                    obj = objA2;
                } else {
                    interpolatorA = a(pointFB4, pointFB);
                    obj = objA2;
                }
                Keyframe keyframe2 = new Keyframe(lottieComposition, objA, obj, interpolatorA, fQ, null);
                keyframe2.o = pointFB2;
                keyframe2.p = pointFB3;
                return keyframe2;
            }
            obj = objA;
            interpolatorA = linearInterpolator2;
            Keyframe keyframe3 = new Keyframe(lottieComposition, objA, obj, interpolatorA, fQ, null);
            keyframe3.o = pointFB2;
            keyframe3.p = pointFB3;
            return keyframe3;
        }
        jsonReader.j();
        PointF pointF2 = null;
        PointF pointFB5 = null;
        PointF pointFB6 = null;
        boolean z4 = false;
        PointF pointFB7 = null;
        PointF pointFB8 = null;
        PointF pointF3 = null;
        Object objA3 = null;
        PointF pointF4 = null;
        PointF pointF5 = null;
        float fQ2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        Object objA4 = null;
        while (jsonReader.o()) {
            int iZ = jsonReader.z(options3);
            JsonReader.Options options5 = d;
            switch (iZ) {
                case 0:
                    options = options3;
                    linearInterpolator = linearInterpolator2;
                    fQ2 = (float) jsonReader.q();
                    break;
                case 1:
                    objA3 = valueParser.a(jsonReader, f2);
                    continue;
                case 2:
                    objA4 = valueParser.a(jsonReader, f2);
                    continue;
                case 3:
                    JsonReader.Options options6 = options3;
                    PointF pointF6 = pointFB5;
                    LinearInterpolator linearInterpolator3 = linearInterpolator2;
                    boolean z5 = z4;
                    Object obj3 = objA3;
                    if (jsonReader.w() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.j();
                        float fQ3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        float fQ4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        float fQ5 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        float fQ6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        while (jsonReader.o()) {
                            int iZ2 = jsonReader.z(options5);
                            if (iZ2 == 0) {
                                JsonReader.Token tokenW = jsonReader.w();
                                JsonReader.Token token = JsonReader.Token.NUMBER;
                                if (tokenW == token) {
                                    fQ5 = (float) jsonReader.q();
                                    fQ3 = fQ5;
                                } else {
                                    jsonReader.h();
                                    fQ3 = (float) jsonReader.q();
                                    fQ5 = jsonReader.w() == token ? (float) jsonReader.q() : fQ3;
                                    jsonReader.k();
                                }
                            } else if (iZ2 != 1) {
                                jsonReader.C();
                            } else {
                                JsonReader.Token tokenW2 = jsonReader.w();
                                JsonReader.Token token2 = JsonReader.Token.NUMBER;
                                if (tokenW2 == token2) {
                                    fQ6 = (float) jsonReader.q();
                                    fQ4 = fQ6;
                                } else {
                                    jsonReader.h();
                                    fQ4 = (float) jsonReader.q();
                                    fQ6 = jsonReader.w() == token2 ? (float) jsonReader.q() : fQ4;
                                    jsonReader.k();
                                }
                            }
                        }
                        pointF3 = new PointF(fQ3, fQ4);
                        pointF4 = new PointF(fQ5, fQ6);
                        jsonReader.m();
                    } else {
                        pointFB7 = JsonUtils.b(jsonReader, f2);
                    }
                    z4 = z5;
                    objA3 = obj3;
                    linearInterpolator2 = linearInterpolator3;
                    options3 = options6;
                    pointFB5 = pointF6;
                    continue;
                case 4:
                    linearInterpolator = linearInterpolator2;
                    boolean z6 = z4;
                    if (jsonReader.w() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.j();
                        float f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        float f5 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        float fQ7 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        float fQ8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        while (jsonReader.o()) {
                            objA3 = objA3;
                            int iZ3 = jsonReader.z(options5);
                            if (iZ3 != 0) {
                                options2 = options3;
                                if (iZ3 != 1) {
                                    jsonReader.C();
                                    objA3 = objA3;
                                    options3 = options2;
                                } else {
                                    JsonReader.Token tokenW3 = jsonReader.w();
                                    JsonReader.Token token3 = JsonReader.Token.NUMBER;
                                    if (tokenW3 == token3) {
                                        pointF = pointFB5;
                                        fQ8 = (float) jsonReader.q();
                                        pointFB6 = pointFB6;
                                        f5 = fQ8;
                                    } else {
                                        pointF = pointFB5;
                                        PointF pointF7 = pointFB6;
                                        jsonReader.h();
                                        float fQ9 = (float) jsonReader.q();
                                        if (jsonReader.w() == token3) {
                                            f5 = fQ9;
                                            fQ8 = (float) jsonReader.q();
                                        } else {
                                            f5 = fQ9;
                                            fQ8 = f5;
                                        }
                                        jsonReader.k();
                                        pointFB6 = pointF7;
                                    }
                                }
                            } else {
                                options2 = options3;
                                pointF = pointFB5;
                                PointF pointF8 = pointFB6;
                                JsonReader.Token tokenW4 = jsonReader.w();
                                JsonReader.Token token4 = JsonReader.Token.NUMBER;
                                if (tokenW4 == token4) {
                                    fQ7 = (float) jsonReader.q();
                                    pointFB6 = pointF8;
                                    f4 = fQ7;
                                } else {
                                    jsonReader.h();
                                    pointFB6 = pointF8;
                                    float fQ10 = (float) jsonReader.q();
                                    if (jsonReader.w() == token4) {
                                        f3 = fQ10;
                                        fQ7 = (float) jsonReader.q();
                                    } else {
                                        f3 = fQ10;
                                        fQ7 = f3;
                                    }
                                    jsonReader.k();
                                    f4 = f3;
                                }
                            }
                            options3 = options2;
                            pointFB5 = pointF;
                        }
                        options = options3;
                        PointF pointF9 = new PointF(f4, f5);
                        pointF2 = new PointF(fQ7, fQ8);
                        jsonReader.m();
                        z4 = z6;
                        pointF5 = pointF9;
                    } else {
                        pointFB8 = JsonUtils.b(jsonReader, f2);
                        z4 = z6;
                        linearInterpolator2 = linearInterpolator;
                    }
                    break;
                case 5:
                    if (jsonReader.r() == 1) {
                        z4 = true;
                    } else {
                        z4 = false;
                        continue;
                    }
                    break;
                case 6:
                    pointFB5 = JsonUtils.b(jsonReader, f2);
                    continue;
                case 7:
                    pointFB6 = JsonUtils.b(jsonReader, f2);
                    continue;
                default:
                    jsonReader.C();
                    continue;
            }
            linearInterpolator2 = linearInterpolator;
            options3 = options;
        }
        PointF pointF10 = pointFB5;
        Interpolator interpolatorA4 = linearInterpolator2;
        boolean z7 = z4;
        Object obj4 = objA3;
        jsonReader.m();
        if (z7) {
            obj2 = obj4;
        } else {
            if (pointFB7 == null || pointFB8 == null) {
                if (pointF3 != null && pointF4 != null && pointF5 != null && pointF2 != null) {
                    interpolatorA2 = a(pointF3, pointF5);
                    interpolatorA3 = a(pointF4, pointF2);
                    obj2 = objA4;
                    interpolatorA4 = null;
                }
                if (interpolatorA2 != null || interpolatorA3 == null) {
                    keyframe = new Keyframe(lottieComposition, obj4, obj2, interpolatorA4, fQ2, null);
                } else {
                    keyframe = new Keyframe(lottieComposition, obj4, obj2, interpolatorA2, interpolatorA3, fQ2, null);
                }
                keyframe.o = pointF10;
                keyframe.p = pointFB6;
                return keyframe;
            }
            interpolatorA4 = a(pointFB7, pointFB8);
            obj2 = objA4;
        }
        interpolatorA2 = null;
        interpolatorA3 = null;
        if (interpolatorA2 != null) {
            keyframe = new Keyframe(lottieComposition, obj4, obj2, interpolatorA4, fQ2, null);
        } else {
            keyframe = new Keyframe(lottieComposition, obj4, obj2, interpolatorA4, fQ2, null);
        }
        keyframe.o = pointF10;
        keyframe.p = pointFB6;
        return keyframe;
    }
}
