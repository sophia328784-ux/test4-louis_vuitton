package com.vuitton.android.presentation.screen.wishlist.components;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.intl.LocaleList;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldKt;
import com.vuitton.android.presentation.screen.wishlist.WishlistViewModel;
import defpackage.fs0;
import defpackage.ku0;
import defpackage.mw0;
import defpackage.n00;
import defpackage.p61;
import defpackage.r31;
import defpackage.sm;
import defpackage.tr;
import defpackage.z4;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "email", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WishlistShareComposableKt {
    public static final void a(Function2 function2, Composer composer, int i2) {
        MutableState mutableState;
        GapComposer gapComposerH = composer.h(26626983);
        int i3 = i2 | (gapComposerH.y(function2) ? 4 : 2);
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g("");
                gapComposerH.q(objX);
            }
            MutableState mutableState2 = (MutableState) objX;
            String str = (String) mutableState2.H();
            Function1 function1Q = mutableState2.q();
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g("");
                gapComposerH.q(objX2);
            }
            MutableState mutableState3 = (MutableState) objX2;
            Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("ShareView").o(SizeKt.f5052c), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.mylv_mywishlists_sharewishlist_friendname);
            ImeAction.f10785b.getClass();
            int i4 = ImeAction.f10791j;
            boolean z = false;
            LVTextFieldKt.a(str, function1Q, ModifierExtKt.e(SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("ShareView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f), "shareWishlist_name_textfield"), null, false, strC, false, null, null, new KeyboardOptions(0, (Boolean) null, 0, i4, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 119, (DefaultConstructorMarker) null), null, null, null, null, false, gapComposerH, 805306368, 0, 32216);
            String str2 = (String) mutableState3.getF10755b();
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.mylv_mywishlists_sharewishlist_friendemailaddress);
            KeyboardOptions keyboardOptions = new KeyboardOptions(0, (Boolean) null, 0, i4, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 119, (DefaultConstructorMarker) null);
            Modifier modifierE = ModifierExtKt.e(PaddingKt.m(tr.d("ShareView", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "shareWishlist_email_textfield");
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                mutableState = mutableState3;
                objX3 = new ku0(17, mutableState);
                gapComposerH.q(objX3);
            } else {
                mutableState = mutableState3;
            }
            MutableState mutableState4 = mutableState;
            LVTextFieldKt.a(str2, (Function1) objX3, modifierE, null, false, strC2, false, null, null, keyboardOptions, null, null, null, null, false, gapComposerH, 805306416, 0, 32216);
            gapComposerH = gapComposerH;
            SpacerKt.a(gapComposerH, ColumnScopeInstance.f4944a.a(new DTFunctionNameModifier("ShareView"), 1.0f, true));
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
            String strC3 = StringResources_androidKt.c(gapComposerH, R.string.mylv_mywishlists_share_send);
            Modifier modifierE2 = ModifierExtKt.e(SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("ShareView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), 1.0f), "shareWishlist_share_button");
            if ((i3 & 14) == 4) {
                z = true;
            }
            boolean zK = z | gapComposerH.K(str);
            Object objX4 = gapComposerH.x();
            if (zK || objX4 == composer$Companion$Empty$1) {
                objX4 = new mw0(function2, str, mutableState4, 1);
                gapComposerH.q(objX4);
            }
            LVButtonKt.b(0, 504, gapComposerH, modifierE2, configurationButton, null, null, strC3, (Function0) objX4, false, false, false);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z4(function2, i2, 13);
        }
    }

    public static final void b(WishlistViewModel wishlistViewModel, Function0 function0, Function2 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        wishlistViewModel.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-2001798011);
        int i3 = i2 | (gapComposerH.K(wishlistViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(context) | ((i3 & 14) == 4);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new WishlistShareComposableKt$WishlistShareComposable$1$1(wishlistViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            gapComposer = gapComposerH;
            ScaffoldKt.a(WindowInsetsPadding_androidKt.e(new DTFunctionNameModifier("WishlistShareComposable")), ComposableLambdaKt.b(979964481, new p61(function0, 2), gapComposerH), null, ComposableLambdaKt.b(-368169089, new fs0(snackbarHostState, 14), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-193780138, new sm(4, function2), gapComposerH), gapComposer, 805309488, 500);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new r31(wishlistViewModel, function0, function2, i2, 12);
        }
    }
}
