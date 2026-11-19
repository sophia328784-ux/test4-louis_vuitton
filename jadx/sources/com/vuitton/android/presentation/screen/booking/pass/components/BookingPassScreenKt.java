package com.vuitton.android.presentation.screen.booking.pass.components;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.booking.pass.models.BookingPassViewState;
import defpackage.a4;
import defpackage.f1;
import defpackage.qd;
import defpackage.u;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingPassScreenKt {
    public static final void a(BookingPassViewState bookingPassViewState, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        bookingPassViewState.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(115131237);
        int i3 = i2 | (gapComposerH.K(bookingPassViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.booking_view_pass_title);
            Modifier modifierO = new DTFunctionNameModifier("BookingPassScreen").o(SizeKt.f5052c);
            boolean zK = gapComposerH.K(strC);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new a4(strC, 13);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            ScaffoldKt.a(SemanticsModifierKt.b(modifierO, false, (Function1) objX), ComposableLambdaKt.b(14878761, new qd(5, strC, function0), gapComposerH), null, null, null, 0, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, null, ComposableLambdaKt.b(1015544564, new f1(bookingPassViewState, function1, 11), gapComposerH), gapComposer, 805306416, 316);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(i2, 15, bookingPassViewState, function0, function1);
        }
    }
}
