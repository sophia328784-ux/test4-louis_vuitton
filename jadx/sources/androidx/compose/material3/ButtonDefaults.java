package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material3.tokens.BaselineButtonTokens;
import androidx.compose.material3.tokens.ButtonSmallTokens;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.FilledButtonTokens;
import androidx.compose.material3.tokens.TextButtonTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/ButtonDefaults;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class ButtonDefaults {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PaddingValuesImpl f6634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PaddingValuesImpl f6635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f6636c;
    public static final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float f6637e;

    static {
        float f2 = BaselineButtonTokens.f7742a;
        float f3 = BaselineButtonTokens.f7743b;
        Dp.Companion companion = Dp.f11004c;
        float f4 = ButtonSmallTokens.f7744a;
        PaddingValuesImpl paddingValuesImplD = PaddingKt.d(f2, 8.0f, f3, 8.0f);
        f6634a = paddingValuesImplD;
        PaddingKt.d(16.0f, 8.0f, f3, 8.0f);
        float f5 = paddingValuesImplD.f5031b;
        float f6 = paddingValuesImplD.d;
        f6635b = PaddingKt.d(12.0f, f5, 12.0f, f6);
        PaddingKt.d(12.0f, f5, 16.0f, f6);
        f6636c = 58.0f;
        d = ButtonSmallTokens.f7744a;
        f6637e = ButtonSmallTokens.f7746c;
    }

    public static ButtonColors a(long j2, long j3, Composer composer, int i2) {
        if ((i2 & 2) != 0) {
            Color.f8866b.getClass();
            j3 = Color.f8871i;
        }
        long j4 = j3;
        Color.Companion companion = Color.f8866b;
        companion.getClass();
        long j5 = Color.f8871i;
        companion.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return b(MaterialTheme.a(composer)).a(j2, j4, j5, j5);
    }

    public static ButtonColors b(ColorScheme colorScheme) {
        ButtonColors buttonColors = colorScheme.W;
        if (buttonColors != null) {
            return buttonColors;
        }
        ButtonColors buttonColors2 = new ButtonColors(ColorSchemeKt.c(colorScheme, FilledButtonTokens.f7786a), ColorSchemeKt.c(colorScheme, FilledButtonTokens.g), Color.b(FilledButtonTokens.f7788c, ColorSchemeKt.c(colorScheme, FilledButtonTokens.f7787b)), Color.b(FilledButtonTokens.f7789e, ColorSchemeKt.c(colorScheme, FilledButtonTokens.d)), null);
        colorScheme.W = buttonColors2;
        return buttonColors2;
    }

    public static ButtonColors c(ColorScheme colorScheme) {
        ButtonColors buttonColors = colorScheme.X;
        if (buttonColors != null) {
            return buttonColors;
        }
        Color.f8866b.getClass();
        long j2 = Color.f8870h;
        ButtonColors buttonColors2 = new ButtonColors(j2, ColorSchemeKt.c(colorScheme, ColorSchemeKeyTokens.Primary), j2, Color.b(TextButtonTokens.f7887b, ColorSchemeKt.c(colorScheme, TextButtonTokens.f7886a)), null);
        colorScheme.X = buttonColors2;
        return buttonColors2;
    }

    public static ButtonColors d(long j2, Composer composer) {
        Color.Companion companion = Color.f8866b;
        companion.getClass();
        long j3 = Color.f8871i;
        companion.getClass();
        companion.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return c(MaterialTheme.a(composer)).a(j3, j2, j3, j3);
    }
}
