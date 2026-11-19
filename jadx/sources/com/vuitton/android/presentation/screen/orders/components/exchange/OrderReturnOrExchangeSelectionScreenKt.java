package com.vuitton.android.presentation.screen.orders.components.exchange;

import android.content.Context;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.VariationsResponseUiModel;
import defpackage.ae0;
import defpackage.bj0;
import defpackage.cu;
import defpackage.hg;
import defpackage.ng;
import defpackage.rg;
import defpackage.sh0;
import defpackage.tr;
import defpackage.w3;
import defpackage.y2;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderReturnOrExchangeSelectionScreenKt {
    public static final void a(Function0 function0, Function0 function1, Function0 function2, boolean z, VariationsResponseUiModel variationsResponseUiModel, ExchangeSetupResponseUiModel exchangeSetupResponseUiModel, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(386540350);
        int i3 = i2 | (gapComposerH.y(function0) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.K(variationsResponseUiModel) ? 16384 : 8192) | (gapComposerH.K(exchangeSetupResponseUiModel) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
            boolean z2 = (i3 & 112) == 32;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$1) {
                objX = new y2(function1, 27);
                gapComposerH.q(objX);
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX, gapComposerH, 0);
            Modifier modifierI = PaddingKt.i(new DTFunctionNameModifier("Content"), LVAppDesignKitTheme.l(gapComposerH).f48417f);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("Content"), LVAppDesignKitTheme.l(gapComposerH).f48415c));
            OrderReturnOrExchangeComponentsKt.d(null, StringResources_androidKt.c(gapComposerH, R.string.exchange_select_action_title), StringResources_androidKt.c(gapComposerH, R.string.exchange_select_action_description), gapComposerH, 0, 1);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("Content"), LVAppDesignKitTheme.l(gapComposerH).g));
            Modifier modifierA = AlphaKt.a(new DTFunctionNameModifier("Content"), z ? 1.0f : 0.5f);
            boolean zY = gapComposerH.y(managedActivityResultLauncherA) | gapComposerH.y(context);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new sh0(managedActivityResultLauncherA, context);
                gapComposerH.q(objX2);
            }
            LVPushCardKt.a(modifierA, z, (Function0) objX2, ComposableLambdaKt.b(-52471616, new cu(exchangeSetupResponseUiModel, variationsResponseUiModel, z), gapComposerH), gapComposerH, ((i3 >> 6) & 112) | 3072, 0);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("Content"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            ComposableSingletons$OrderReturnOrExchangeSelectionScreenKt.f60108a.getClass();
            LVPushCardKt.a(null, false, function0, ComposableSingletons$OrderReturnOrExchangeSelectionScreenKt.f60109b, gapComposerH, ((i3 << 6) & 896) | 3072, 3);
            SpacerKt.a(gapComposerH, ColumnScopeInstance.f4944a.a(new DTFunctionNameModifier("Content"), 1.0f, true));
            LVDisclaimerKt.a(tr.d("Content", 1.0f), StringResources_androidKt.c(gapComposerH, R.string.exchange_help_banner_description), null, 0L, StringResources_androidKt.c(gapComposerH, R.string.exchange_help_banner_link), function2, gapComposerH, ((i3 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | 6, 12);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new hg(function0, function1, function2, z, variationsResponseUiModel, exchangeSetupResponseUiModel, i2);
        }
    }

    public static final void b(OrderReturnOrExchangeViewState orderReturnOrExchangeViewState, SnackbarHostState snackbarHostState, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Composer composer, int i2) {
        int i3;
        Function0 function5;
        Function0 function6;
        GapComposer gapComposer;
        orderReturnOrExchangeViewState.getClass();
        snackbarHostState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerC = defpackage.a.c(function3, function4, composer, 95894667);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerC.y(orderReturnOrExchangeViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerC.K(snackbarHostState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerC.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            function5 = function1;
            i3 |= gapComposerC.y(function5) ? 2048 : 1024;
        } else {
            function5 = function1;
        }
        if ((i2 & 24576) == 0) {
            function6 = function2;
            i3 |= gapComposerC.y(function6) ? 16384 : 8192;
        } else {
            function6 = function2;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerC.y(function3) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerC.y(function4) ? 1048576 : 524288;
        }
        if (gapComposerC.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            VariationsResponseUiModel variationsResponseUiModel = orderReturnOrExchangeViewState.f60309c;
            boolean z = variationsResponseUiModel == null || (variationsResponseUiModel instanceof VariationsResponseUiModel.Loading);
            gapComposer = gapComposerC;
            ScaffoldKt.a(null, ComposableLambdaKt.b(-53624505, new bj0(orderReturnOrExchangeViewState, function4, 3), gapComposerC), ComposableLambdaKt.b(1147516838, new rg(z, orderReturnOrExchangeViewState, function3, 8), gapComposerC), ComposableLambdaKt.b(-1946309115, new ae0(snackbarHostState, 13), gapComposerC), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-2078270820, new ng(z, function5, function0, function6, orderReturnOrExchangeViewState), gapComposerC), gapComposer, 805309872, 497);
        } else {
            gapComposer = gapComposerC;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w3((Object) orderReturnOrExchangeViewState, snackbarHostState, function0, (Function) function1, (Function) function2, (Function) function3, (Function) function4, i2, 10);
        }
    }
}
