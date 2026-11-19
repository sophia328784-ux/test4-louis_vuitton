package androidx.compose.material3;

import androidx.compose.material3.tokens.RadioButtonTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/RadioButtonDefaults;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class RadioButtonDefaults {
    public static RadioButtonColors a(long j2, long j3, Composer composer) {
        Color.Companion companion = Color.f8866b;
        companion.getClass();
        long j4 = Color.f8871i;
        companion.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        ColorScheme colorSchemeA = MaterialTheme.a(composer);
        RadioButtonColors radioButtonColors = colorSchemeA.e0;
        if (radioButtonColors == null) {
            RadioButtonColors radioButtonColors2 = new RadioButtonColors(ColorSchemeKt.c(colorSchemeA, RadioButtonTokens.d), ColorSchemeKt.c(colorSchemeA, RadioButtonTokens.f7838e), Color.b(0.38f, ColorSchemeKt.c(colorSchemeA, RadioButtonTokens.f7835a)), Color.b(0.38f, ColorSchemeKt.c(colorSchemeA, RadioButtonTokens.f7836b)), null);
            colorSchemeA.e0 = radioButtonColors2;
            radioButtonColors = radioButtonColors2;
        }
        long j5 = j2 != 16 ? j2 : radioButtonColors.f7155a;
        long j6 = j3 != 16 ? j3 : radioButtonColors.f7156b;
        long j7 = j4 != 16 ? j4 : radioButtonColors.f7157c;
        if (j4 == 16) {
            j4 = radioButtonColors.d;
        }
        return new RadioButtonColors(j5, j6, j7, j4, null);
    }
}
