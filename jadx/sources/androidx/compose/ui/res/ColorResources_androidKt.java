package androidx.compose.ui.res;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.content.res.ResourcesCompat;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ColorResources_androidKt {
    public static final long a(Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Context context = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
        Resources resources = (Resources) composer.k(AndroidCompositionLocals_androidKt.f9937c);
        Resources.Theme theme = context.getTheme();
        ThreadLocal threadLocal = ResourcesCompat.f12034a;
        return ColorKt.b(resources.getColor(i2, theme));
    }
}
