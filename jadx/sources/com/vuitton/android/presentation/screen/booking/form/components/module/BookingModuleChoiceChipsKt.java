package com.vuitton.android.presentation.screen.booking.form.components.module;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import defpackage.a;
import defpackage.f1;
import defpackage.o60;
import defpackage.vf;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingModuleChoiceChipsKt {
    public static final void a(Modifier modifier, BookingFormModuleDataUiModel.SingleChoice singleChoice, boolean z, Function1 function1, Composer composer, int i2) {
        if (modifier != null) {
            modifier = a.e(modifier, "BookingModuleChoiceChips");
        }
        Modifier modifier2 = modifier;
        singleChoice.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(806905397);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.y(singleChoice) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (z) {
                BookingModuleGridKt.b(o60.c(gapComposerH, -413063255, "BookingModuleChoiceChips", 1.0f), gapComposerH, 6, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-412946819);
                BookingModuleGridKt.a(singleChoice.f54525b, SizeKt.d(modifier2, 1.0f), 3, ComposableLambdaKt.b(-1054506064, new f1(singleChoice, function1, 8), gapComposerH), gapComposerH, 3456, 0);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vf(modifier2, singleChoice, z, function1, i2, 0);
        }
    }
}
