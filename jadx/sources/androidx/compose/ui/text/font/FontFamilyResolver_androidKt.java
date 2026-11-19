package androidx.compose.ui.text.font;

import android.content.Context;
import android.os.Build;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class FontFamilyResolver_androidKt {
    public static final FontFamilyResolverImpl a(Context context) {
        return new FontFamilyResolverImpl(new AndroidFontLoader(context), new AndroidFontResolveInterceptor(Build.VERSION.SDK_INT >= 31 ? FontWeightAdjustmentHelperApi31.f10735a.a(context) : 0), null, null, null, 28, null);
    }
}
