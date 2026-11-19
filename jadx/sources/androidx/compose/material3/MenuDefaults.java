package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material3.tokens.ElevationTokens;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.material3.tokens.MenuTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/MenuDefaults;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class MenuDefaults {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f7020a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PaddingValuesImpl f7021b;

    static {
        float f2 = ElevationTokens.f7772a;
        f7020a = MenuTokens.f7809b;
        float f3 = MenuKt.f7029c;
        Dp.Companion companion = Dp.f11004c;
        f7021b = PaddingKt.b(f3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    public static MenuItemColors a(ColorScheme colorScheme) {
        MenuItemColors menuItemColors = colorScheme.d0;
        if (menuItemColors != null) {
            return menuItemColors;
        }
        MenuItemColors menuItemColors2 = new MenuItemColors(ColorSchemeKt.c(colorScheme, ListTokens.g), ColorSchemeKt.c(colorScheme, ListTokens.f7804h), ColorSchemeKt.c(colorScheme, ListTokens.f7806j), Color.b(ListTokens.f7800b, ColorSchemeKt.c(colorScheme, ListTokens.f7799a)), Color.b(ListTokens.d, ColorSchemeKt.c(colorScheme, ListTokens.f7801c)), Color.b(ListTokens.f7803f, ColorSchemeKt.c(colorScheme, ListTokens.f7802e)), null);
        colorScheme.d0 = menuItemColors2;
        return menuItemColors2;
    }

    public static MenuItemColors b(long j2, Composer composer) {
        Color.Companion companion = Color.f8866b;
        companion.getClass();
        long j3 = Color.f8871i;
        companion.getClass();
        companion.getClass();
        companion.getClass();
        companion.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        MenuItemColors menuItemColorsA = a(MaterialTheme.a(composer));
        long j4 = j2 != 16 ? j2 : menuItemColorsA.f7022a;
        long j5 = j3 != 16 ? j3 : menuItemColorsA.f7023b;
        long j6 = j3 != 16 ? j3 : menuItemColorsA.f7024c;
        long j7 = j3 != 16 ? j3 : menuItemColorsA.d;
        long j8 = j3 != 16 ? j3 : menuItemColorsA.f7025e;
        if (j3 == 16) {
            j3 = menuItemColorsA.f7026f;
        }
        return new MenuItemColors(j4, j5, j6, j7, j8, j3, null);
    }
}
