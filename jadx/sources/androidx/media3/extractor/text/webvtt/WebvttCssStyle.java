package androidx.media3.extractor.text.webvtt;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class WebvttCssStyle {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16901f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f16902h;
    public float o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f16897a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f16898b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Set f16899c = Collections.EMPTY_SET;
    public String d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f16900e = null;
    public boolean g = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f16903i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f16904j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f16905k = -1;
    public int l = -1;
    public int m = -1;
    public int n = -1;
    public int p = -1;
    public boolean q = false;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface FontSizeUnit {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface StyleFlags {
    }

    public static int a(int i2, int i3, String str, String str2) {
        if (str.isEmpty() || i2 == -1) {
            return i2;
        }
        if (str.equals(str2)) {
            return i2 + i3;
        }
        return -1;
    }
}
