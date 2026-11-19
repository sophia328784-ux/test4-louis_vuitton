package com.vuitton.android.presentation.screen.wishlist.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
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
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.helper.PluralStringResourceHelperKt;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import defpackage.es0;
import defpackage.f40;
import defpackage.fs0;
import defpackage.jc;
import defpackage.n00;
import defpackage.wh;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WishlistScreenKt {
    public static final void a(int i2, Composer composer, int i3) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-1899308146);
        int i4 = (gapComposerH.d(i2) ? 4 : 2) | i3;
        if (gapComposerH.p(i4 & 1, (i4 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("WishlistHeader");
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            TextKt.c(PluralStringResourceHelperKt.b(R.plurals.product_list_item_number_count, gapComposerH, i2), ModifierExtKt.e(PaddingKt.m(n00.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "WishlistHeader", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1), "wishlist_numberItems_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wh(i2, i3, 7);
        }
    }

    public static final void b(Modifier modifier, SnackbarHostState snackbarHostState, WishlistViewState wishlistViewState, Function2 function2, boolean z, WindowInsets windowInsets, Function0 function0, Function2 function3, Function1 function1, Function1 function4, Function1 function5, Composer composer, int i2, int i3) {
        boolean z2;
        Function2 function6;
        Function1 function7;
        Function1 function8;
        Function1 function9;
        int i4;
        GapComposer gapComposer;
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "WishlistScreen");
        }
        snackbarHostState.getClass();
        wishlistViewState.getClass();
        function2.getClass();
        function0.getClass();
        function3.getClass();
        function1.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(-1491393236);
        int i5 = i2 | 6;
        if ((i2 & 48) == 0) {
            i5 |= gapComposerH.K(snackbarHostState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(wishlistViewState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i5 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            z2 = z;
            i5 |= gapComposerH.b(z2) ? 16384 : 8192;
        } else {
            z2 = z;
        }
        if ((196608 & i2) == 0) {
            i5 |= gapComposerH.K(windowInsets) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i5 |= gapComposerH.y(function0) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            function6 = function3;
            i5 |= gapComposerH.y(function6) ? 8388608 : 4194304;
        } else {
            function6 = function3;
        }
        if ((100663296 & i2) == 0) {
            function7 = function1;
            i5 |= gapComposerH.y(function7) ? 67108864 : 33554432;
        } else {
            function7 = function1;
        }
        if ((805306368 & i2) == 0) {
            function8 = function4;
            i5 |= gapComposerH.y(function8) ? PKIFailureInfo.duplicateCertReq : 268435456;
        } else {
            function8 = function4;
        }
        int i6 = i5;
        if ((i3 & 6) == 0) {
            function9 = function5;
            i4 = i3 | (gapComposerH.y(function9) ? 4 : 2);
        } else {
            function9 = function5;
            i4 = i3;
        }
        Modifier modifier3 = modifierE;
        if (gapComposerH.p(i6 & 1, ((i6 & 306783379) == 306783378 && (i4 & 3) == 2) ? false : true)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("WishlistScreen");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, function2, null, ComposableLambdaKt.b(-607890394, new fs0(snackbarHostState, 13), gapComposerH), ComposableLambdaKt.b(-123253563, new es0(wishlistViewState, function0, 25), gapComposerH), 0, 0L, 0L, windowInsets, ComposableLambdaKt.b(-1665891075, new jc(dTFunctionNameModifier, wishlistViewState, z2, function6, function7, function8, function9), gapComposerH), gapComposer, ((i6 >> 6) & 112) | 805334016 | ((i6 << 9) & 234881024), 229);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifier3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f40(modifier2, snackbarHostState, wishlistViewState, function2, z, windowInsets, function0, function3, function1, function4, function5, i2, i3);
        }
    }
}
