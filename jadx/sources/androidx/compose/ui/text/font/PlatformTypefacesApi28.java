package androidx.compose.ui.text.font;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/text/font/PlatformTypefacesApi28;", "Landroidx/compose/ui/text/font/PlatformTypefaces;", "<init>", "()V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class PlatformTypefacesApi28 implements PlatformTypefaces {
    public static android.graphics.Typeface a(String str, FontWeight fontWeight, int i2) {
        FontStyle.f10715b.getClass();
        if (i2 == 0) {
            FontWeight.f10727c.getClass();
            if (Intrinsics.c(fontWeight, FontWeight.f10730h) && (str == null || str.length() == 0)) {
                return android.graphics.Typeface.DEFAULT;
            }
        }
        return android.graphics.Typeface.create(str == null ? android.graphics.Typeface.DEFAULT : android.graphics.Typeface.create(str, 0), fontWeight.f10734b, i2 == FontStyle.f10716c);
    }
}
