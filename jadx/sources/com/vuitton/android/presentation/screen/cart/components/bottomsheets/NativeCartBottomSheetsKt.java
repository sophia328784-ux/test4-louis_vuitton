package com.vuitton.android.presentation.screen.cart.components.bottomsheets;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.cart.CommercialNotification;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductDisclaimerUiModel;
import com.vuitton.android.presentation.screen.reinsurance.components.ReinsuranceBottomSheetKt;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import defpackage.a9;
import defpackage.d21;
import defpackage.f1;
import defpackage.g2;
import defpackage.il;
import defpackage.la;
import defpackage.o;
import defpackage.om;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeCartBottomSheetsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f55062a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f55062a = 450.0f;
    }

    public static final void a(CommercialNotification commercialNotification, Function1 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(96139555);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(commercialNotification) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, commercialNotification != null ? commercialNotification.f54837b : null, null, null, null, null, false, null, null, ComposableLambdaKt.b(-1924917768, new f1(commercialNotification, function1, 26), gapComposerH), gapComposerH, 0, 48, 2043);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(commercialNotification, function1, i2, 20);
        }
    }

    public static final void b(CartItemUiModel cartItemUiModel, Composer composer, int i2) {
        int i3;
        ProductDisclaimerUiModel productDisclaimerUiModel;
        StringResourceUiModel stringResourceUiModel;
        ProductDisclaimerUiModel productDisclaimerUiModel2;
        StringResourceUiModel stringResourceUiModel2;
        GapComposer gapComposerH = composer.h(-1142546896);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(cartItemUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            String strA = null;
            String strA2 = (cartItemUiModel == null || (productDisclaimerUiModel2 = cartItemUiModel.A) == null || (stringResourceUiModel2 = productDisclaimerUiModel2.d) == null) ? null : StringResourceUiModelKt.a(stringResourceUiModel2, context);
            if (strA2 == null) {
                strA2 = "";
            }
            if (cartItemUiModel != null && (productDisclaimerUiModel = cartItemUiModel.A) != null && (stringResourceUiModel = productDisclaimerUiModel.f61730c) != null) {
                strA = StringResourceUiModelKt.a(stringResourceUiModel, context);
            }
            LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, strA, null, null, null, null, false, null, null, ComposableLambdaKt.b(1642334395, new la(strA2, 5), gapComposerH), gapComposerH, 0, 48, 2043);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new om(cartItemUiModel, i2, 6);
        }
    }

    public static final void c(NativeCartBottomSheetScreen nativeCartBottomSheetScreen, CartItemUiModel cartItemUiModel, ReinsuranceUiModel reinsuranceUiModel, CommercialNotification commercialNotification, Function0 function0, Function0 function1, Function1 function2, Composer composer, int i2) {
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-468644488);
        int i3 = i2 | (gapComposerH.K(nativeCartBottomSheetScreen) ? 4 : 2) | (gapComposerH.y(cartItemUiModel) ? 32 : 16) | (gapComposerH.y(reinsuranceUiModel) ? 256 : 128) | (gapComposerH.K(commercialNotification) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (nativeCartBottomSheetScreen.equals(NativeCartBottomSheetScreen.BottomSheetOutOfStock.f55060a)) {
                gapComposerH.L(604226670);
                d(function1, function0, gapComposerH, ((i3 >> 9) & 112) | ((i3 >> 15) & 14));
                gapComposerH.Z(false);
            } else if (nativeCartBottomSheetScreen.equals(NativeCartBottomSheetScreen.BottomSheetReinsurance.f55061a)) {
                gapComposerH.L(604233492);
                ReinsuranceBottomSheetKt.a(reinsuranceUiModel, function2, gapComposerH, ((i3 >> 15) & 112) | ((i3 >> 6) & 14));
                gapComposerH.Z(false);
            } else if (nativeCartBottomSheetScreen.equals(NativeCartBottomSheetScreen.BottomSheetDisclaimer.f55059a)) {
                gapComposerH.L(604239434);
                b(cartItemUiModel, gapComposerH, (i3 >> 3) & 14);
                gapComposerH.Z(false);
            } else {
                if (!nativeCartBottomSheetScreen.equals(NativeCartBottomSheetScreen.BottomSheetCommercial.f55058a)) {
                    throw d21.u(gapComposerH, 604224612, false);
                }
                gapComposerH.L(604244136);
                a(commercialNotification, function2, gapComposerH, ((i3 >> 15) & 112) | ((i3 >> 9) & 14));
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(nativeCartBottomSheetScreen, cartItemUiModel, reinsuranceUiModel, commercialNotification, function0, function1, function2, i2, 7);
        }
    }

    public static final void d(Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        int i4;
        GapComposer gapComposerH = composer.h(-250100808);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.shoppingcart_outofstock_modale_title);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.shoppingcart_outofstock_modale_subtitle);
            String strC3 = StringResources_androidKt.c(gapComposerH, R.string.shoppingcart_outofstock_modale_cta);
            ComposableSingletons$NativeCartBottomSheetsKt.f55056a.getClass();
            ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$NativeCartBottomSheetsKt.f55057b;
            boolean z = ((i3 & 14) == 4) | ((i3 & 112) == 32);
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new il(function0, function1, 3);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            i4 = 3;
            LVModalBottomSheetKt.a(null, null, strC, null, composableLambdaImpl, strC2, null, strC3, null, false, null, (Function0) objX, null, false, null, null, null, false, null, gapComposer, 24576, 0, 1046347);
        } else {
            gapComposer = gapComposerH;
            i4 = 3;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a9(function0, function1, i2, i4);
        }
    }
}
