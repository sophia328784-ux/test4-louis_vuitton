package androidx.media3.common.text;

import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes.dex */
public final class RubySpan implements LanguageFeatureSpan {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f14120c;
    public static final String d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f14121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f14122b;

    static {
        String str = Util.f14242a;
        f14120c = Integer.toString(0, 36);
        d = Integer.toString(1, 36);
    }

    public RubySpan(String str, int i2) {
        this.f14121a = str;
        this.f14122b = i2;
    }
}
