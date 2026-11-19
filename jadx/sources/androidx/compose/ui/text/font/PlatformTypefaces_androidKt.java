package androidx.compose.ui.text.font;

import android.content.Context;
import android.graphics.Paint;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PlatformTypefaces_androidKt {
    public static final android.graphics.Typeface a(android.graphics.Typeface typeface, FontVariation$Settings fontVariation$Settings, Context context) {
        ThreadLocal threadLocal = TypefaceCompatApi26.f10747a;
        if (typeface == null) {
            return null;
        }
        if (fontVariation$Settings.f10726a.isEmpty()) {
            return typeface;
        }
        ThreadLocal threadLocal2 = TypefaceCompatApi26.f10747a;
        Paint paint = (Paint) threadLocal2.get();
        if (paint == null) {
            paint = new Paint();
            threadLocal2.set(paint);
        }
        paint.setFontVariationSettings(null);
        paint.setTypeface(typeface);
        paint.setFontVariationSettings(PlatformFontVariationSettings_androidKt.a(fontVariation$Settings, context));
        return paint.getTypeface();
    }
}
