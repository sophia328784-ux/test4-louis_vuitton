package com.google.android.exoplayer2.text;

import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import com.batch.android.q0.b;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.util.Util;
import defpackage.tr;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Objects;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class Cue implements Bundleable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CharSequence f28336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f28337c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f28338e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f28339f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f28340h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f28341i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f28342j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f28343k;
    public final float l;
    public final int m;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface AnchorType {
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public CharSequence f28344a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f28345b = -3.4028235E38f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f28346c = Integer.MIN_VALUE;
        public int d = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f28347e = -3.4028235E38f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f28348f = Integer.MIN_VALUE;
        public int g = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f28349h = -3.4028235E38f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f28350i = -3.4028235E38f;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f28351j = -3.4028235E38f;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f28352k = b.v;
        public int l = Integer.MIN_VALUE;

        public final Cue a() {
            return new Cue(this.f28344a, this.f28345b, this.f28346c, this.d, this.f28347e, this.f28348f, this.g, this.f28349h, this.f28350i, this.f28351j, this.f28352k, this.l);
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface LineType {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface TextSizeType {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface VerticalType {
    }

    static {
        Builder builder = new Builder();
        builder.f28344a = "";
        builder.a();
        Util.e(0);
        Util.e(1);
        Util.e(2);
        Util.e(3);
        tr.v(4, 5, 6, 7, 8);
        tr.v(9, 10, 11, 12, 13);
        Util.e(14);
        Util.e(15);
        Util.e(16);
    }

    public Cue(CharSequence charSequence, float f2, int i2, int i3, float f3, int i4, int i5, float f4, float f5, float f6, int i6, int i7) {
        charSequence.getClass();
        if (charSequence instanceof Spanned) {
            this.f28336b = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.f28336b = charSequence.toString();
        } else {
            this.f28336b = null;
        }
        this.f28337c = f2;
        this.d = i2;
        this.f28338e = i3;
        this.f28339f = f3;
        this.g = i4;
        this.f28340h = f5;
        this.f28341i = f6;
        this.f28342j = i6;
        this.f28343k = i5;
        this.l = f4;
        this.m = i7;
    }

    public final Builder a() {
        Builder builder = new Builder();
        builder.f28344a = this.f28336b;
        builder.f28345b = this.f28337c;
        builder.f28346c = this.d;
        builder.d = this.f28338e;
        builder.f28347e = this.f28339f;
        builder.f28348f = this.g;
        builder.g = this.f28343k;
        builder.f28349h = this.l;
        builder.f28350i = this.f28340h;
        builder.f28351j = this.f28341i;
        builder.f28352k = this.f28342j;
        builder.l = this.m;
        return builder;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Cue.class != obj.getClass()) {
            return false;
        }
        Cue cue = (Cue) obj;
        return TextUtils.equals(this.f28336b, cue.f28336b) && this.f28337c == cue.f28337c && this.d == cue.d && this.f28338e == cue.f28338e && this.f28339f == cue.f28339f && this.g == cue.g && this.f28340h == cue.f28340h && this.f28341i == cue.f28341i && this.f28342j == cue.f28342j && this.f28343k == cue.f28343k && this.l == cue.l && this.m == cue.m;
    }

    public final int hashCode() {
        return Objects.hash(this.f28336b, null, null, null, Float.valueOf(this.f28337c), Integer.valueOf(this.d), Integer.valueOf(this.f28338e), Float.valueOf(this.f28339f), Integer.valueOf(this.g), Float.valueOf(this.f28340h), Float.valueOf(this.f28341i), Boolean.FALSE, Integer.valueOf(this.f28342j), Integer.valueOf(this.f28343k), Float.valueOf(this.l), Integer.valueOf(this.m), Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM));
    }
}
