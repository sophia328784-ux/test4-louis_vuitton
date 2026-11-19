package com.perfectcorp.perfectlib;

import android.graphics.Color;
import android.text.TextUtils;
import com.perfectcorp.perfectlib.jniproxy.faceshape.EyeColorLVPredictResult;
import com.perfectcorp.perfectlib.jniproxy.faceshape.EyeColorPredictResult;
import com.perfectcorp.perfectlib.jniproxy.faceshape.EyePredictResult;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class EyeAttributeData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SingleEyeAttributeData f39575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleEyeAttributeData f39576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f39577c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Integer f39578e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f39579f;

    public EyeAttributeData(EyePredictResult eyePredictResult, EyeColorPredictResult eyeColorPredictResult, EyeColorLVPredictResult eyeColorLVPredictResult, FaceAttributeAnalyzer.Condition condition, boolean z) {
        Integer numValueOf;
        this.f39575a = new SingleEyeAttributeData(eyePredictResult.left, condition);
        this.f39576b = new SingleEyeAttributeData(eyePredictResult.right, condition);
        Set set = condition.f39604a;
        String str = null;
        this.f39577c = set.contains("eyeDistance") ? eyePredictResult.eyeSet : null;
        this.d = set.contains("eyeSize") ? eyePredictResult.eyeSize : null;
        boolean zContains = set.contains("eyeColor");
        if (z && TextUtils.isEmpty(eyeColorLVPredictResult.colorName)) {
            this.f39578e = -1;
        } else {
            if (zContains) {
                numValueOf = Integer.valueOf(Color.rgb((int) (((z ? eyeColorLVPredictResult.r : eyeColorPredictResult.r) * 255.0f) + 0.5f), (int) (((z ? eyeColorLVPredictResult.g : eyeColorPredictResult.g) * 255.0f) + 0.5f), (int) (((z ? eyeColorLVPredictResult.f40427b : eyeColorPredictResult.f40428b) * 255.0f) + 0.5f)));
            } else {
                numValueOf = null;
            }
            this.f39578e = numValueOf;
            if (zContains) {
                str = z ? eyeColorLVPredictResult.colorName : eyeColorPredictResult.colorName;
            }
        }
        this.f39579f = str;
    }

    public final Integer getColor() {
        return this.f39578e;
    }

    public final String getColorName() {
        return this.f39579f;
    }

    public final String getEyeSet() {
        return this.f39577c;
    }

    public final String getEyeSize() {
        return this.d;
    }

    public final SingleEyeAttributeData getLeft() {
        return this.f39575a;
    }

    public final SingleEyeAttributeData getRight() {
        return this.f39576b;
    }
}
