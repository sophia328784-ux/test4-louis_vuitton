package androidx.media3.extractor.text.ttml;

import android.text.Layout;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
final class TtmlStyle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f16860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f16861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16862c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f16863e;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f16868k;
    public String l;
    public Layout.Alignment o;
    public Layout.Alignment p;
    public TextEmphasis r;
    public String t;
    public String u;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16864f = -1;
    public int g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f16865h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f16866i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f16867j = -1;
    public int m = -1;
    public int n = -1;
    public int q = -1;
    public float s = Float.MAX_VALUE;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface FontSizeUnit {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface RubyType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface StyleFlags {
    }

    public final void a(TtmlStyle ttmlStyle) {
        int i2;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (ttmlStyle != null) {
            if (!this.f16862c && ttmlStyle.f16862c) {
                this.f16861b = ttmlStyle.f16861b;
                this.f16862c = true;
            }
            if (this.f16865h == -1) {
                this.f16865h = ttmlStyle.f16865h;
            }
            if (this.f16866i == -1) {
                this.f16866i = ttmlStyle.f16866i;
            }
            if (this.f16860a == null && (str = ttmlStyle.f16860a) != null) {
                this.f16860a = str;
            }
            if (this.f16864f == -1) {
                this.f16864f = ttmlStyle.f16864f;
            }
            if (this.g == -1) {
                this.g = ttmlStyle.g;
            }
            if (this.n == -1) {
                this.n = ttmlStyle.n;
            }
            if (this.o == null && (alignment2 = ttmlStyle.o) != null) {
                this.o = alignment2;
            }
            if (this.p == null && (alignment = ttmlStyle.p) != null) {
                this.p = alignment;
            }
            if (this.q == -1) {
                this.q = ttmlStyle.q;
            }
            if (this.f16867j == -1) {
                this.f16867j = ttmlStyle.f16867j;
                this.f16868k = ttmlStyle.f16868k;
            }
            if (this.r == null) {
                this.r = ttmlStyle.r;
            }
            if (this.s == Float.MAX_VALUE) {
                this.s = ttmlStyle.s;
            }
            if (this.t == null) {
                this.t = ttmlStyle.t;
            }
            if (this.u == null) {
                this.u = ttmlStyle.u;
            }
            if (!this.f16863e && ttmlStyle.f16863e) {
                this.d = ttmlStyle.d;
                this.f16863e = true;
            }
            if (this.m != -1 || (i2 = ttmlStyle.m) == -1) {
                return;
            }
            this.m = i2;
        }
    }
}
