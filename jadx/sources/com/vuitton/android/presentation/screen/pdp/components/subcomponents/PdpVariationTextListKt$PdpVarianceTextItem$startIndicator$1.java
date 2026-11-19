package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonGroupIndicator;
import defpackage.r5;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVarianceTextItem$startIndicator$1", "Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupIndicator;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PdpVariationTextListKt$PdpVarianceTextItem$startIndicator$1 extends LVButtonGroupIndicator {
    @Override // com.vuitton.android.designkit.ui.theme.atoms.LVButtonGroupIndicator
    public final void a(Composer composer, int i2) {
        composer.L(-1639150516);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        long j2 = LVAppDesignKitTheme.c(composer).f48361b.x;
        Modifier modifierO = SizeKt.o(PaddingKt.i(new DTFunctionNameModifier("Content"), LVAppDesignKitTheme.l(composer).f48414b), LVAppDesignKitTheme.d(composer).g);
        boolean zE = composer.e(j2);
        Object objX = composer.x();
        if (zE || objX == Composer.Companion.f7939a) {
            objX = new r5(j2, 8);
            composer.q(objX);
        }
        CanvasKt.a(modifierO, (Function1) objX, composer, 0);
        composer.F();
    }
}
