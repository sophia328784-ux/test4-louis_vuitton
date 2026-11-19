package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/MaterialTheme;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class MaterialTheme {
    public static ColorScheme a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (ColorScheme) composer.k(ColorSchemeKt.f6671a);
    }

    public static Typography b(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (Typography) composer.k(TypographyKt.f7451a);
    }
}
