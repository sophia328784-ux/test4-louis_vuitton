package com.vuitton.android.presentation.screen.cart.components.giftmessage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.ScaffoldKt;
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
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.models.GiftMessageViewState;
import com.vuitton.foundation.model.domain.model.cart.GiftDraftUiModel;
import defpackage.dy;
import defpackage.kw;
import defpackage.o60;
import defpackage.pp;
import defpackage.pq0;
import defpackage.rq;
import defpackage.tr;
import defpackage.zh;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class GiftOptionComposableKt {
    public static final void a(GiftMessageViewModel giftMessageViewModel, boolean z, final boolean z2, final String str, final String str2, Function0 function0, Function1 function1, final Function1 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        final GiftMessageViewModel giftMessageViewModel2 = giftMessageViewModel;
        giftMessageViewModel2.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-717060149);
        int i3 = i2 | (gapComposerH.K(giftMessageViewModel2) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.b(z2) ? 256 : 128) | (gapComposerH.K(str) ? 2048 : 1024) | (gapComposerH.K(str2) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536) | (gapComposerH.y(function1) ? 1048576 : 524288) | (gapComposerH.y(function2) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final MutableState mutableStateB = SnapshotStateKt.b(giftMessageViewModel2.getF55078f(), gapComposerH);
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean z3 = i4 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z3 || objX == composer$Companion$Empty$1) {
                objX = new GiftOptionComposableKt$GiftOptionComposable$1$1(giftMessageViewModel2, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            boolean z4 = (i4 == 4) | ((i3 & 3670016) == 1048576);
            Object objX2 = gapComposerH.x();
            if (z4 || objX2 == composer$Companion$Empty$1) {
                objX2 = new GiftOptionComposableKt$GiftOptionComposable$2$1(giftMessageViewModel2, function1, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("GiftOptionComposable"), !z, new rq(22), gapComposerH, 6);
            WindowInsets windowInsetsA = WindowInsetsExtKt.a();
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1405971569, new kw(function0, 2), gapComposerH);
            Function2 function3 = new Function2() { // from class: com.vuitton.android.presentation.screen.cart.components.giftmessage.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    String str3;
                    GiftMessageViewModel giftMessageViewModel3;
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
                        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("GiftOptionComposable$lambda$5");
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal, composer2, 48);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        Function0 function4 = ComposeUiNode.Companion.f9641b;
                        Integer numValueOf = null;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function4);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer2).f48446a;
                        boolean z5 = z2;
                        if (z5) {
                            composer2.L(-1411800914);
                            composer2.F();
                            str3 = new String();
                        } else {
                            str3 = o60.k(composer2, -1411802385, R.string.confirm, composer2);
                        }
                        String str4 = str3;
                        Modifier modifierE = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.l(tr.d("GiftOptionComposable$lambda$5", 1.0f), LVAppDesignKitTheme.l(composer2).f48416e, LVAppDesignKitTheme.l(composer2).f48415c, LVAppDesignKitTheme.l(composer2).f48416e, LVAppDesignKitTheme.l(composer2).f48416e), "cartGiftMessage_apply_button");
                        GiftMessageViewModel giftMessageViewModel4 = giftMessageViewModel2;
                        boolean zY = composer2.y(giftMessageViewModel4);
                        Object objX3 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zY || objX3 == composer$Companion$Empty$2) {
                            giftMessageViewModel3 = giftMessageViewModel4;
                            GiftOptionComposableKt$GiftOptionComposable$5$1$1$1 giftOptionComposableKt$GiftOptionComposable$5$1$1$1 = new GiftOptionComposableKt$GiftOptionComposable$5$1$1$1(0, giftMessageViewModel3, GiftMessageViewModel.class, "validateDraft", "validateDraft()V", 0);
                            composer2.q(giftOptionComposableKt$GiftOptionComposable$5$1$1$1);
                            objX3 = giftOptionComposableKt$GiftOptionComposable$5$1$1$1;
                        } else {
                            giftMessageViewModel3 = giftMessageViewModel4;
                        }
                        KFunction kFunction = (KFunction) objX3;
                        boolean z6 = ((GiftMessageViewState) mutableStateB.getF10755b()).f55098a.d && !z5;
                        if (z5) {
                            composer2.L(-1411775085);
                            int i5 = LVAppDesignKitTheme.a(composer2).y;
                            composer2.F();
                            numValueOf = Integer.valueOf(i5);
                        } else {
                            composer2.L(-815336105);
                            composer2.F();
                        }
                        GiftMessageViewModel giftMessageViewModel5 = giftMessageViewModel3;
                        LVButtonKt.b(0, 360, composer2, modifierE, configurationButton, null, numValueOf, str4, (Function0) kFunction, false, z6, false);
                        String str5 = str2;
                        if (str5 == null) {
                            composer2.L(-815255660);
                            composer2.F();
                        } else {
                            DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-815255659, composer2, "GiftOptionComposable$lambda$5");
                            Object objX4 = composer2.x();
                            if (objX4 == composer$Companion$Empty$2) {
                                objX4 = new dy(17);
                                composer2.q(objX4);
                            }
                            Modifier modifierE2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.m(SemanticsModifierKt.b(dTFunctionNameModifierJ, false, (Function1) objX4), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, 7), "cart_gift_panel_bottom_link");
                            String strC = StringResources_androidKt.c(composer2, R.string.cart_gift_panel_bottom_link);
                            boolean zY2 = composer2.y(giftMessageViewModel5);
                            Function1 function5 = function2;
                            boolean zK = zY2 | composer2.K(function5) | composer2.K(str5);
                            Object objX5 = composer2.x();
                            if (zK || objX5 == composer$Companion$Empty$2) {
                                objX5 = new pp((Object) giftMessageViewModel5, function5, (Object) str5, 11);
                                composer2.q(objX5);
                            }
                            LVLinkKt.a(modifierE2, strC, false, null, false, (Function0) objX5, composer2, 0, 28);
                            composer2 = composer2;
                            composer2.F();
                        }
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            };
            giftMessageViewModel2 = giftMessageViewModel2;
            gapComposer = gapComposerH;
            ScaffoldKt.a(modifierB, composableLambdaImplB, ComposableLambdaKt.b(-479216816, function3, gapComposerH), null, null, 0, 0L, 0L, windowInsetsA, ComposableLambdaKt.b(1212652954, new Function3() { // from class: com.vuitton.android.presentation.screen.cart.components.giftmessage.b
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierE = o60.e("GiftOptionComposable$lambda$6", paddingValues);
                        GiftDraftUiModel giftDraftUiModel = ((GiftMessageViewState) mutableStateB.getF10755b()).f55098a;
                        GiftMessageViewModel giftMessageViewModel3 = giftMessageViewModel2;
                        boolean zY = composer2.y(giftMessageViewModel3);
                        Object objX3 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zY || objX3 == composer$Companion$Empty$2) {
                            GiftOptionComposableKt$GiftOptionComposable$6$1$1 giftOptionComposableKt$GiftOptionComposable$6$1$1 = new GiftOptionComposableKt$GiftOptionComposable$6$1$1(1, giftMessageViewModel3, GiftMessageViewModel.class, "setIsBlank", "setIsBlank(Z)V", 0);
                            composer2.q(giftOptionComposableKt$GiftOptionComposable$6$1$1);
                            objX3 = giftOptionComposableKt$GiftOptionComposable$6$1$1;
                        }
                        Function1 function4 = (Function1) ((KFunction) objX3);
                        boolean zY2 = composer2.y(giftMessageViewModel3);
                        Object objX4 = composer2.x();
                        if (zY2 || objX4 == composer$Companion$Empty$2) {
                            GiftOptionComposableKt$GiftOptionComposable$6$2$1 giftOptionComposableKt$GiftOptionComposable$6$2$1 = new GiftOptionComposableKt$GiftOptionComposable$6$2$1(1, giftMessageViewModel3, GiftMessageViewModel.class, "setDraftMessage", "setDraftMessage(Ljava/lang/String;)V", 0);
                            composer2.q(giftOptionComposableKt$GiftOptionComposable$6$2$1);
                            objX4 = giftOptionComposableKt$GiftOptionComposable$6$2$1;
                        }
                        GiftMessageScreenKt.a(modifierE, giftDraftUiModel, function4, (Function1) ((KFunction) objX4), str, composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, 805306800, 248);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zh(giftMessageViewModel2, z, z2, str, str2, function0, function1, function2, i2);
        }
    }
}
