package com.google.android.exoplayer2.ui;

import android.graphics.Typeface;
import com.batch.android.q0.b;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class CaptionStyleCompat {
    public static final CaptionStyleCompat g = new CaptionStyleCompat(-1, b.v, 0, 0, -1, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f28367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28369c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f28370e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Typeface f28371f;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface EdgeType {
    }

    public CaptionStyleCompat(int i2, int i3, int i4, int i5, int i6, Typeface typeface) {
        this.f28367a = i2;
        this.f28368b = i3;
        this.f28369c = i4;
        this.d = i5;
        this.f28370e = i6;
        this.f28371f = typeface;
    }
}
