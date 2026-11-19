package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import com.perfectcorp.perfectlib.jniproxy.faceshape.FacePredictResult;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class FaceAnalysisData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EyeAttributeData f39586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EyebrowAttributeData f39587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NoseAttributeData f39588c;
    public final LipAttributeData d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FaceAttributeData f39589e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CheekboneAttributeData f39590f;
    public final HairAttributeData g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Integer f39591h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f39592i;

    public static final class Extra {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Integer f39593a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Integer f39594b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Integer f39595c;
        public String d;
    }

    public FaceAnalysisData(FacePredictResult facePredictResult, Extra extra, FaceAttributeAnalyzer.Condition condition, boolean z) {
        EyeAttributeData eyeAttributeData;
        FaceAttributeAnalyzer.Condition condition2;
        Set set = condition.f39604a;
        if (condition.b() || set.contains("eyeColor")) {
            condition2 = condition;
            eyeAttributeData = new EyeAttributeData(facePredictResult.eye, facePredictResult.eyeColor, facePredictResult.eyeColorLV, condition2, z);
        } else {
            condition2 = condition;
            eyeAttributeData = null;
        }
        this.f39586a = eyeAttributeData;
        this.f39587b = (condition2.c() || set.contains("eyebrowColor")) ? new EyebrowAttributeData(facePredictResult.eyebrow, extra, condition2) : null;
        this.f39588c = (set.contains("noseWidth") || set.contains("noseLength")) ? new NoseAttributeData(facePredictResult.noseFeature, condition2) : null;
        this.d = (set.contains("lipShape") || set.contains("lipColor")) ? new LipAttributeData(facePredictResult.lipShape, facePredictResult.lipColor, condition2) : null;
        this.f39589e = (set.contains("faceShape") || set.contains("skinTone")) ? new FaceAttributeData(facePredictResult.faceShape, extra, condition2) : null;
        this.f39590f = set.contains("cheekbones") ? new CheekboneAttributeData(facePredictResult.cheekbone, condition2) : null;
        this.g = set.contains("hairColor") ? new HairAttributeData(extra, condition2) : null;
        int i2 = facePredictResult.ageGender.age;
        this.f39591h = Integer.valueOf(i2 < 0 ? -1 : i2);
        this.f39592i = TextUtils.isEmpty(facePredictResult.ageGender.gender) ? null : facePredictResult.ageGender.gender;
    }

    public final Integer getAge() {
        return this.f39591h;
    }

    public final CheekboneAttributeData getCheekbone() {
        return this.f39590f;
    }

    public final EyeAttributeData getEye() {
        return this.f39586a;
    }

    public final EyebrowAttributeData getEyebrow() {
        return this.f39587b;
    }

    public final FaceAttributeData getFace() {
        return this.f39589e;
    }

    public final String getGender() {
        return this.f39592i;
    }

    public final HairAttributeData getHair() {
        return this.g;
    }

    public final LipAttributeData getLip() {
        return this.d;
    }

    public final NoseAttributeData getNose() {
        return this.f39588c;
    }
}
