package com.vuitton.android.presentation.screen.booking.summary.components;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookMocksKt;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookViewState;
import defpackage.km;
import defpackage.nn;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b implements Function2 {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        ComposableSingletons$BookingSummaryScreenKt composableSingletons$BookingSummaryScreenKt = ComposableSingletons$BookingSummaryScreenKt.f54796a;
        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            PreBookViewState.Success success = new PreBookViewState.Success(PreBookMocksKt.f54816b, false, false, 6, null);
            SnackbarHostState snackbarHostState = new SnackbarHostState();
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new nn(19);
                composer.q(objX);
            }
            Function0 function0 = (Function0) objX;
            Object objX2 = composer.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = ComposableSingletons$BookingSummaryScreenKt$lambda$348931140$1$2$1.f54799b;
                composer.q(objX2);
            }
            Function2 function2 = (Function2) objX2;
            Object objX3 = composer.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = ComposableSingletons$BookingSummaryScreenKt$lambda$348931140$1$3$1.f54800b;
                composer.q(objX3);
            }
            Function2 function3 = (Function2) objX3;
            Object objX4 = composer.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = ComposableSingletons$BookingSummaryScreenKt$lambda$348931140$1$4$1.f54801b;
                composer.q(objX4);
            }
            Function1 function1 = (Function1) objX4;
            Object objX5 = composer.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new nn(20);
                composer.q(objX5);
            }
            Function0 function4 = (Function0) objX5;
            Object objX6 = composer.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = new km(29);
                composer.q(objX6);
            }
            BookingSummaryScreenKt.a(success, snackbarHostState, function0, null, function2, function3, function1, function4, (Function1) objX6, composer, 115040640, 8);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }
}
