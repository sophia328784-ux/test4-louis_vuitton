package com.vuitton.android.presentation.screen.plp.components.subcomponents;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import defpackage.b3;
import defpackage.n00;
import defpackage.oz;
import defpackage.tr;
import defpackage.w11;
import defpackage.y30;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/airbnb/lottie/LottieComposition;", "composition", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WishlistAnimationKt {
    public static final void a(Modifier modifier, PlpProductUiModel plpProductUiModel, PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel pLPWishlistStateUiModel, Function0 function0, Function1 function1, Composer composer, int i2) {
        int i3;
        Modifier modifier2;
        GapComposer gapComposer;
        Animatable animatable;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LottieWishlistAnimation");
        }
        Modifier modifier3 = modifierE;
        GapComposer gapComposerH = composer.h(1747296057);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier3) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(plpProductUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(pLPWishlistStateUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LottieCompositionResultImpl lottieCompositionResultImplH = n00.h(LVAppDesignKitTheme.a(gapComposerH).F, gapComposerH, 0);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = AnimatableKt.a(pLPWishlistStateUiModel.f62952a ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(objX);
            }
            Animatable animatable2 = (Animatable) objX;
            Object f10755b = plpProductUiModel.g.getF10755b();
            Boolean boolValueOf = Boolean.valueOf(pLPWishlistStateUiModel.f62952a);
            boolean zY = ((57344 & i4) == 16384) | gapComposerH.y(plpProductUiModel) | ((i4 & 896) == 256) | gapComposerH.K(lottieCompositionResultImplH) | gapComposerH.y(animatable2);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                animatable = animatable2;
                WishlistAnimationKt$LottieWishlistAnimation$1$1 wishlistAnimationKt$LottieWishlistAnimation$1$1 = new WishlistAnimationKt$LottieWishlistAnimation$1$1(plpProductUiModel, pLPWishlistStateUiModel, animatable, function1, lottieCompositionResultImplH, null);
                gapComposerH.q(wishlistAnimationKt$LottieWishlistAnimation$1$1);
                objX2 = wishlistAnimationKt$LottieWishlistAnimation$1$1;
            } else {
                animatable = animatable2;
            }
            EffectsKt.g(f10755b, boolValueOf, (Function2) objX2, gapComposerH);
            boolean z = (i4 & 7168) == 2048;
            Object objX3 = gapComposerH.x();
            if (z || objX3 == composer$Companion$Empty$1) {
                objX3 = new w11(function0, 11);
                gapComposerH.q(objX3);
            }
            Function0 function2 = (Function0) objX3;
            Animatable animatable3 = animatable;
            modifier2 = modifier3;
            Modifier modifierC = ModifierExtKt.c(modifier2, false, null, null, function2, 31);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Modifier modifierO = tr.e(gapComposerH, modifierC2, ComposeUiNode.Companion.d, "LottieWishlistAnimation").o(SizeKt.f5052c);
            LottieComposition f10755b2 = lottieCompositionResultImplH.getF10755b();
            boolean zY2 = gapComposerH.y(animatable3);
            Object objX4 = gapComposerH.x();
            if (zY2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new y30(animatable3, 2);
                gapComposerH.q(objX4);
            }
            LottieAnimationKt.b(f10755b2, (Function0) objX4, modifierO, false, false, false, false, null, false, null, null, null, false, false, null, null, false, gapComposerH, KyberEngine.KyberPolyBytes, 0, 131064);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            modifier2 = modifier3;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(modifier2, plpProductUiModel, pLPWishlistStateUiModel, function0, function1, i2, 25);
        }
    }

    public static final void b(Modifier modifier, PlpProductUiModel plpProductUiModel, PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel pLPWishlistStateUiModel, int i2, int i3, Function0 function0, Function1 function1, Composer composer, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        Function1 function2;
        boolean z;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "WishlistAnimation");
        }
        plpProductUiModel.getClass();
        pLPWishlistStateUiModel.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1589069120);
        if ((i4 & 6) == 0) {
            i6 = (gapComposerH.K(modifier) ? 4 : 2) | i4;
        } else {
            i6 = i4;
        }
        if ((i4 & 48) == 0) {
            i6 |= gapComposerH.y(plpProductUiModel) ? 32 : 16;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.K(pLPWishlistStateUiModel) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            if ((i5 & 8) == 0) {
                i7 = i2;
                int i9 = gapComposerH.d(i7) ? 2048 : 1024;
                i6 |= i9;
            } else {
                i7 = i2;
            }
            i6 |= i9;
        } else {
            i7 = i2;
        }
        if ((i4 & 24576) == 0) {
            if ((i5 & 16) == 0) {
                i8 = i3;
                int i10 = gapComposerH.d(i8) ? 16384 : 8192;
                i6 |= i10;
            } else {
                i8 = i3;
            }
            i6 |= i10;
        } else {
            i8 = i3;
        }
        if ((196608 & i4) == 0) {
            i6 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if ((1572864 & i4) == 0) {
            function2 = function1;
            i6 |= gapComposerH.y(function2) ? 1048576 : 524288;
        } else {
            function2 = function1;
        }
        if (gapComposerH.p(i6 & 1, (599187 & i6) != 599186)) {
            gapComposerH.y0();
            if ((i4 & 1) == 0 || gapComposerH.h0()) {
                if ((i5 & 8) != 0) {
                    i7 = LVAppDesignKitTheme.g(gapComposerH).U;
                    i6 &= -7169;
                }
                if ((i5 & 16) != 0) {
                    i8 = LVAppDesignKitTheme.g(gapComposerH).V;
                    i6 &= -57345;
                }
            } else {
                gapComposerH.D();
                if ((i5 & 8) != 0) {
                    i6 &= -7169;
                }
                if ((i5 & 16) != 0) {
                    i6 &= -57345;
                }
            }
            int i11 = i7;
            int i12 = i8;
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (i11 == LVAppDesignKitTheme.g(gapComposerH).U) {
                gapComposerH.L(1912948950);
                z = i12 == LVAppDesignKitTheme.g(gapComposerH).V;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-828123457);
                gapComposerH.Z(false);
                z = false;
            }
            String str = pLPWishlistStateUiModel.f62952a ? "plp_wishlist_button_filled" : "plp_wishlist_button";
            if (z) {
                gapComposerH.L(-827862897);
                int i13 = i6 & 1008;
                int i14 = i6 >> 6;
                a(ModifierExtKt.e(modifier, str), plpProductUiModel, pLPWishlistStateUiModel, function0, function2, gapComposerH, (i14 & 57344) | i13 | (i14 & 7168));
                gapComposerH.Z(false);
                i7 = i11;
                i8 = i12;
            } else {
                gapComposerH.L(-827541489);
                Modifier modifierE = ModifierExtKt.e(modifier, str);
                String str2 = ((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).d;
                Dp.Companion companion = Dp.f11004c;
                i7 = i11;
                i8 = i12;
                ProductCellFullKt.h(modifierE, Call.Parameters.DEFAULT_CAMERA_ZOOM, str2, i7, i8, pLPWishlistStateUiModel, function0, gapComposerH, ((i6 << 3) & 3670016) | (i6 & 7168) | 48 | (57344 & i6) | ((i6 << 9) & ImageMetadata.JPEG_GPS_COORDINATES));
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        int i15 = i8;
        int i16 = i7;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oz(modifier, plpProductUiModel, pLPWishlistStateUiModel, i16, i15, function0, function1, i4, i5);
        }
    }
}
