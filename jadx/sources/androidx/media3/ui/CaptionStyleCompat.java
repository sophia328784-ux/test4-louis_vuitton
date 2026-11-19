package androidx.media3.ui;

import android.graphics.Typeface;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public final class CaptionStyleCompat {
    public static final CaptionStyleCompat g = new CaptionStyleCompat(-1, com.batch.android.q0.b.v, 0, 0, -1, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17967c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f17968e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Typeface f17969f;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface EdgeType {
    }

    public CaptionStyleCompat(int i2, int i3, int i4, int i5, int i6, Typeface typeface) {
        this.f17965a = i2;
        this.f17966b = i3;
        this.f17967c = i4;
        this.d = i5;
        this.f17968e = i6;
        this.f17969f = typeface;
    }
}
