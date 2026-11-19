package com.perfectcorp.perfectlib;

import android.graphics.Color;
import com.perfectcorp.perfectlib.jniproxy.faceshape.LipColorPredictResult;
import com.perfectcorp.perfectlib.jniproxy.faceshape.LipShapePredictResult;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class LipAttributeData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39658a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f39660c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f39661e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Integer f39662f;

    public LipAttributeData(LipShapePredictResult lipShapePredictResult, LipColorPredictResult lipColorPredictResult, FaceAttributeAnalyzer.Condition condition) {
        Set set = condition.f39604a;
        this.f39658a = set.contains("lipShape") ? lipShapePredictResult.width : null;
        this.f39659b = set.contains("lipShape") ? lipShapePredictResult.roundness : null;
        this.f39660c = set.contains("lipShape") ? lipShapePredictResult.bowShape : null;
        this.d = set.contains("lipShape") ? lipShapePredictResult.angle : null;
        this.f39661e = set.contains("lipShape") ? lipShapePredictResult.thickness : null;
        this.f39662f = set.contains("lipColor") ? Integer.valueOf(Color.rgb((int) ((lipColorPredictResult.r * 255.0f) + 0.5f), (int) ((lipColorPredictResult.g * 255.0f) + 0.5f), (int) ((lipColorPredictResult.f40430b * 255.0f) + 0.5f))) : null;
    }

    public final String getAngle() {
        return this.d;
    }

    public final String getBowShape() {
        return this.f39660c;
    }

    public final Integer getColor() {
        return this.f39662f;
    }

    public final String getRoundness() {
        return this.f39659b;
    }

    public final String getThickness() {
        return this.f39661e;
    }

    public final String getWidth() {
        return this.f39658a;
    }
}
