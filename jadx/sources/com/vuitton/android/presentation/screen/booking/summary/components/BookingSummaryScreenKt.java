package com.vuitton.android.presentation.screen.booking.summary.components;

import androidx.activity.compose.BackHandlerKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
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
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookViewState;
import defpackage.a4;
import defpackage.c4;
import defpackage.g0;
import defpackage.lg;
import defpackage.qd;
import defpackage.rg;
import defpackage.sg;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;", "revealedItemId", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingSummaryScreenKt {
    public static final void a(PreBookViewState preBookViewState, SnackbarHostState snackbarHostState, Function0 function0, Function0 function1, Function2 function2, Function2 function3, Function1 function4, Function0 function5, Function1 function6, Composer composer, int i2, int i3) {
        Function0 function7;
        int i4;
        Function2 function8;
        Function1 function9;
        GapComposer gapComposer;
        Function0 function10;
        Function0 function11;
        preBookViewState.getClass();
        snackbarHostState.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        GapComposer gapComposerH = composer.h(816901268);
        int i5 = (gapComposerH.K(preBookViewState) ? 4 : 2) | i2;
        if ((i2 & 48) == 0) {
            i5 |= gapComposerH.K(snackbarHostState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(function0) ? 256 : 128;
        }
        int i6 = i3 & 8;
        if (i6 != 0) {
            i4 = i5 | 3072;
            function7 = function1;
        } else {
            function7 = function1;
            i4 = i5 | (gapComposerH.y(function7) ? 2048 : 1024);
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            function8 = function3;
            i4 |= gapComposerH.y(function8) ? 131072 : 65536;
        } else {
            function8 = function3;
        }
        if ((1572864 & i2) == 0) {
            i4 |= gapComposerH.y(function4) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i4 |= gapComposerH.y(function5) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            function9 = function6;
            i4 |= gapComposerH.y(function9) ? 67108864 : 33554432;
        } else {
            function9 = function6;
        }
        if (gapComposerH.p(i4 & 1, (38347923 & i4) != 38347922)) {
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i6 != 0) {
                Object objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new lg(3);
                    gapComposerH.q(objX);
                }
                function11 = (Function0) objX;
            } else {
                function11 = function7;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            PreBookViewState.Success success = preBookViewState instanceof PreBookViewState.Success ? (PreBookViewState.Success) preBookViewState : null;
            boolean z = (success == null || success.f54829a.f54817a.isEmpty()) ? false : true;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.booking_recap_title);
            int i7 = i4;
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.alt_loading_status);
            Function0 function12 = function11;
            BackHandlerKt.a(false, function0, gapComposerH, (i7 >> 3) & 112, 1);
            Modifier modifierO = new DTFunctionNameModifier("BookingSummaryScreen").o(SizeKt.f5052c);
            boolean zK = gapComposerH.K(strC);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new a4(strC, 17);
                gapComposerH.q(objX2);
            }
            gapComposer = gapComposerH;
            ScaffoldKt.a(SemanticsModifierKt.b(modifierO, false, (Function1) objX2), ComposableLambdaKt.b(-1911167920, new qd(6, strC, function0), gapComposerH), ComposableLambdaKt.b(-1138125969, new rg(z, success, function5, 0), gapComposerH), ComposableLambdaKt.b(-365084018, new g0(snackbarHostState, 14), gapComposerH), null, 0, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, null, ComposableLambdaKt.b(235322853, new c4(preBookViewState, function12, strC2, function8, function4, function2, function9, z), gapComposerH), gapComposer, 805309872, 304);
            function10 = function12;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            function10 = function7;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new sg(preBookViewState, snackbarHostState, function0, function10, function2, function3, function4, function5, function6, i2, i3);
        }
    }
}
