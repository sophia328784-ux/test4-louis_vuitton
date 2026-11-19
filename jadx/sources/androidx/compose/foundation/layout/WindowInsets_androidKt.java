package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.core.graphics.Insets;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class WindowInsets_androidKt {
    public static final AndroidWindowInsets a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        WindowInsetsHolder.y.getClass();
        return WindowInsetsHolder.Companion.c(composer).f5077e;
    }

    public static final AndroidWindowInsets b(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        WindowInsetsHolder.y.getClass();
        return WindowInsetsHolder.Companion.c(composer).f5078f;
    }

    public static final AndroidWindowInsets c(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        WindowInsetsHolder.y.getClass();
        return WindowInsetsHolder.Companion.c(composer).g;
    }

    public static final InsetsValues d(Insets insets) {
        return new InsetsValues(insets.f12054a, insets.f12055b, insets.f12056c, insets.d);
    }
}
