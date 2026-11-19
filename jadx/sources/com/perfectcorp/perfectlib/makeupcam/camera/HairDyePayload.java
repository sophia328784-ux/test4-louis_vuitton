package com.perfectcorp.perfectlib.makeupcam.camera;

import com.perfectcorp.common.utility.ValueChecker;
import com.perfectcorp.thirdparty.com.google.common.collect.Range;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class HairDyePayload implements PayloadValidator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f40667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f40668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f40669c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final YMKPrimitiveData.HairDyePatternType f40670e;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List f40671a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f40672b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f40673c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public YMKPrimitiveData.HairDyePatternType f40674e = YMKPrimitiveData.HairDyePatternType.NONE;
    }

    public HairDyePayload(Builder builder) {
        this.f40667a = builder.f40671a;
        this.f40668b = builder.f40672b;
        this.f40669c = builder.f40673c;
        this.d = builder.d;
        this.f40670e = builder.f40674e;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.PayloadValidator
    public final void a() {
        Objects.requireNonNull(this.f40667a, "payload colors == null");
    }

    public final float b() {
        Comparable comparableB;
        Range range = ValueChecker.d;
        float fFloatValue = ((Float) range.a()).floatValue();
        float f2 = this.f40668b;
        if (f2 < fFloatValue) {
            comparableB = range.a();
        } else {
            if (f2 <= ((Float) range.b()).floatValue()) {
                return f2;
            }
            comparableB = range.b();
        }
        return ((Float) comparableB).floatValue();
    }

    public final float c() {
        Comparable comparableB;
        Range range = ValueChecker.f39441c;
        float fFloatValue = ((Float) range.a()).floatValue();
        float f2 = this.f40669c;
        if (f2 < fFloatValue) {
            comparableB = range.a();
        } else {
            if (f2 <= ((Float) range.b()).floatValue()) {
                return f2;
            }
            comparableB = range.b();
        }
        return ((Float) comparableB).floatValue();
    }

    public static class Color {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public volatile String f40675a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public volatile int f40676b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public volatile int f40677c;
        public volatile String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile String f40678e;

        public Color(Color color) {
            this.f40675a = color.f40675a;
            this.f40676b = color.f40676b;
            this.f40677c = color.f40677c;
            this.d = color.d;
            this.f40678e = color.f40678e;
        }

        public Color() {
        }
    }
}
