package com.airbnb.lottie.model;

import android.graphics.PointF;
import defpackage.fc;

/* JADX INFO: loaded from: classes.dex */
public class DocumentData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f22063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f22064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f22065c;
    public Justification d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f22066e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f22067f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f22068h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f22069i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f22070j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f22071k;
    public PointF l;
    public PointF m;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Justification {
        private static final /* synthetic */ Justification[] $VALUES;
        public static final Justification CENTER;
        public static final Justification LEFT_ALIGN;
        public static final Justification RIGHT_ALIGN;

        static {
            Justification justification = new Justification("LEFT_ALIGN", 0);
            LEFT_ALIGN = justification;
            Justification justification2 = new Justification("RIGHT_ALIGN", 1);
            RIGHT_ALIGN = justification2;
            Justification justification3 = new Justification("CENTER", 2);
            CENTER = justification3;
            $VALUES = new Justification[]{justification, justification2, justification3};
        }

        public static Justification valueOf(String str) {
            return (Justification) Enum.valueOf(Justification.class, str);
        }

        public static Justification[] values() {
            return (Justification[]) $VALUES.clone();
        }
    }

    public DocumentData(String str, String str2, float f2, Justification justification, int i2, float f3, float f4, int i3, int i4, float f5, boolean z, PointF pointF, PointF pointF2) {
        this.f22063a = str;
        this.f22064b = str2;
        this.f22065c = f2;
        this.d = justification;
        this.f22066e = i2;
        this.f22067f = f3;
        this.g = f4;
        this.f22068h = i3;
        this.f22069i = i4;
        this.f22070j = f5;
        this.f22071k = z;
        this.l = pointF;
        this.m = pointF2;
    }

    public final int hashCode() {
        int iOrdinal = ((this.d.ordinal() + (((int) (fc.b(this.f22063a.hashCode() * 31, 31, this.f22064b) + this.f22065c)) * 31)) * 31) + this.f22066e;
        long jFloatToRawIntBits = Float.floatToRawIntBits(this.f22067f);
        return (((iOrdinal * 31) + ((int) (jFloatToRawIntBits ^ (jFloatToRawIntBits >>> 32)))) * 31) + this.f22068h;
    }

    public DocumentData() {
    }
}
