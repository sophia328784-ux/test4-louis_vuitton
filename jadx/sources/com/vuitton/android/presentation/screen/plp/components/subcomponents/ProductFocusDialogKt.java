package com.vuitton.android.presentation.screen.plp.components.subcomponents;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import androidx.compose.ui.window.DialogProperties;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.plp.models.FocusedProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.aj0;
import defpackage.aq0;
import defpackage.ee0;
import defpackage.kj0;
import defpackage.n00;
import defpackage.tr;
import defpackage.vh;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductFocusDialogKt {
    public static final void a(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(547526158);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            BoxKt.a(BackgroundKt.b(PaddingKt.k(SizeKt.f(tr.d("ProductFocusActionDivider", 1.0f), LVAppDesignKitTheme.d(gapComposerH).f48385c), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.c(gapComposerH).f48361b.p, RectangleShapeKt.f8913a), gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new aj0(i2, 28);
        }
    }

    public static final void b(String str, Function0 function0, Modifier modifier, Composer composer, int i2, int i3) {
        int i4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ProductFocusActionItem");
        }
        GapComposer gapComposerH = composer.h(133971171);
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.d(i2) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(modifierE, 1.0f);
            boolean z = (i4 & 7168) == 2048;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new ee0(function0, 28);
                gapComposerH.q(objX);
            }
            Modifier modifierK = PaddingKt.k(ModifierExtKt.c(modifierD, false, null, null, (Function0) objX, 31), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d), vertical, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i4 >> 3) & 14), null, SizeKt.o(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "ProductFocusActionItem"), LVAppDesignKitTheme.d(gapComposerH).o), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 0);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).g;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextAlign.f10959b.getClass();
            TextKt.c(str, null, j2, 0L, null, 0L, null, new TextAlign(TextAlign.g), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, (i4 >> 6) & 14, 0, 130042);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vh(i2, i3, modifierE, str, function0);
        }
    }

    public static final void c(Modifier modifier, PlpProductUiModel plpProductUiModel, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel pLPWishlistStateUiModel;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ProductFocusActionPanel");
        }
        GapComposer gapComposerH = composer.h(2066893488);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(plpProductUiModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableState = ((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62948h;
            boolean z = (mutableState == null || (pLPWishlistStateUiModel = (PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b()) == null || !pLPWishlistStateUiModel.f62952a) ? false : true;
            Modifier modifierK = PaddingKt.k(BackgroundKt.b(ClipKt.a(IntrinsicKt.b(modifierE, IntrinsicSize.Max), LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, 1);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            float f2 = LVAppDesignKitTheme.d(gapComposerH).n;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.g(f2, Alignment.Companion.l), Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
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
            if (z) {
                gapComposerH.L(-681859460);
                gapComposerH.Z(false);
            } else {
                b(StringResources_androidKt.c(gapComposerH, R.string.mylv_mywishlists_addtowishlist_addtonewwishlist), function1, n00.d(gapComposerH, -682220796, "ProductFocusActionPanel", "plp_productPreviewAddToWishlist_button"), gapComposerH, LVAppDesignKitTheme.g(gapComposerH).U, i3 & 7168);
                gapComposerH.Z(false);
            }
            if (plpProductUiModel.f62939h != null) {
                b(StringResources_androidKt.c(gapComposerH, R.string.product_share), function0, n00.d(gapComposerH, -681809674, "ProductFocusActionPanel", "plp_productPreviewShare_button"), gapComposerH, LVAppDesignKitTheme.g(gapComposerH).u, (i3 << 3) & 7168);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-681496388);
                gapComposerH.Z(false);
            }
            b(StringResources_androidKt.c(gapComposerH, R.string.recommendation_view_more), function2, n00.g("ProductFocusActionPanel", "plp_productPreviewViewMore_button"), gapComposerH, LVAppDesignKitTheme.g(gapComposerH).I1, (i3 >> 3) & 7168);
            if (z) {
                gapComposerH.L(-681146615);
                a(gapComposerH, 0);
                b(StringResources_androidKt.c(gapComposerH, R.string.remove_wishlist), function1, ModifierExtKt.e(new DTFunctionNameModifier("ProductFocusActionPanel"), "plp_productPreviewRemoveFromWishlist_button"), gapComposerH, LVAppDesignKitTheme.g(gapComposerH).V, i3 & 7168);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-680728580);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0((Object) modifierE, (Object) plpProductUiModel, function0, function1, (Function) function2, i2, 12);
        }
    }

    public static final void d(Modifier modifier, FocusedProductUiModel focusedProductUiModel, String str, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ProductFocusDialog");
        }
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-764000914);
        int i3 = i2 | 6 | (gapComposerH.y(focusedProductUiModel) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ProductFocusDialog");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new UrlFactory(ContextExtKt.f(context));
                gapComposerH.q(objX);
            }
            UrlFactory urlFactory = (UrlFactory) objX;
            boolean z = (i3 & 896) == 256;
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                objX2 = str != null ? urlFactory.b(str, ImageConfiguration.Background.Transparent.f65853a) : null;
                gapComposerH.q(objX2);
            }
            DialogProperties dialogProperties = new DialogProperties(false, false, false, 3, (DefaultConstructorMarker) null);
            aq0 aq0Var = new aq0(dTFunctionNameModifier, function0, focusedProductUiModel, function1, function2, function3, (String) objX2);
            modifierE = dTFunctionNameModifier;
            AndroidDialog_androidKt.a(function0, dialogProperties, ComposableLambdaKt.b(98539013, aq0Var, gapComposerH), gapComposerH, ((i3 >> 9) & 14) | 432, 0);
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = modifierE;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new aq0(modifier2, focusedProductUiModel, str, function0, function1, function2, function3, i2);
        }
    }
}
