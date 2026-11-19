package androidx.media3.common.text;

import android.os.Bundle;
import android.text.Spanned;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes.dex */
abstract class CustomSpanBundler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f14116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f14117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f14118c;
    public static final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f14119e;

    static {
        String str = Util.f14242a;
        f14116a = Integer.toString(0, 36);
        f14117b = Integer.toString(1, 36);
        f14118c = Integer.toString(2, 36);
        d = Integer.toString(3, 36);
        f14119e = Integer.toString(4, 36);
    }

    public static Bundle a(Spanned spanned, Object obj, int i2, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putInt(f14116a, spanned.getSpanStart(obj));
        bundle2.putInt(f14117b, spanned.getSpanEnd(obj));
        bundle2.putInt(f14118c, spanned.getSpanFlags(obj));
        bundle2.putInt(d, i2);
        if (bundle != null) {
            bundle2.putBundle(f14119e, bundle);
        }
        return bundle2;
    }
}
