package com.vuitton.android.presentation.screen.options.components;

import android.content.Context;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.navigation.NavController;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.options.OptionsViewModel;
import com.vuitton.android.presentation.screen.options.models.OptionsViewState;
import defpackage.ae0;
import defpackage.bg0;
import defpackage.ef;
import defpackage.gk;
import defpackage.i1;
import defpackage.je;
import defpackage.kw;
import defpackage.n00;
import defpackage.rh0;
import defpackage.xg0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.flow.SharedFlow;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OptionsComposableKt {
    public static final void a(SharedFlow sharedFlow, Function1 function1, Function1 function2, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(-900099423);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(sharedFlow) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            boolean zY = ((i3 & 112) == 32) | gapComposerH.y(sharedFlow) | ((i3 & 896) == 256) | ((i3 & 7168) == 2048);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                OptionsComposableKt$ListenSideEffects$1$1 optionsComposableKt$ListenSideEffects$1$1 = new OptionsComposableKt$ListenSideEffects$1$1(sharedFlow, function1, function2, function0, null);
                gapComposerH.q(optionsComposableKt$ListenSideEffects$1$1);
                objX = optionsComposableKt$ListenSideEffects$1$1;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(sharedFlow, function1, function2, function0, i2, 29);
        }
    }

    public static final void b(OptionsViewModel optionsViewModel, final NavController navController, Function0 function0, final Function0 function1, Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function0 function6, final Function0 function7, final Function0 function8, Composer composer, int i2) {
        GapComposer gapComposer;
        final OptionsViewModel optionsViewModel2 = optionsViewModel;
        navController.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        defpackage.a.D(function4, function5, function6, function7, function8);
        GapComposer gapComposerH = composer.h(531258886);
        int i3 = i2 | (gapComposerH.K(optionsViewModel2) ? 4 : 2) | (gapComposerH.y(navController) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304) | (gapComposerH.y(function6) ? 67108864 : 33554432) | (gapComposerH.y(function7) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && ((gapComposerH.y(function8) ? (char) 4 : (char) 2) & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final MutableState mutableStateB = SnapshotStateKt.b(optionsViewModel2.getB(), gapComposerH);
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            SharedFlow p = optionsViewModel2.getP();
            int i4 = i3 & 14;
            boolean zY = (i4 == 4) | gapComposerH.y(context);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new xg0(optionsViewModel2, context, 1);
                gapComposerH.q(objX);
            }
            Function1 function9 = (Function1) objX;
            boolean zY2 = gapComposerH.y(context);
            Object objX2 = gapComposerH.x();
            if (zY2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new ef(context, 10);
                gapComposerH.q(objX2);
            }
            a(p, function9, (Function1) objX2, function2, gapComposerH, (i3 >> 3) & 7168);
            final LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX3;
            Unit unit = Unit.f71739a;
            boolean zY3 = (i4 == 4) | gapComposerH.y(context);
            Object objX4 = gapComposerH.x();
            if (zY3 || objX4 == composer$Companion$Empty$1) {
                objX4 = new OptionsComposableKt$OptionsComposable$3$1(optionsViewModel2, snackbarHostState, context, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX4);
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1213180222, new kw(function0, 15), gapComposerH);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-1485234816, new ae0(snackbarHostState, 6), gapComposerH);
            Function3 function10 = new Function3() { // from class: com.vuitton.android.presentation.screen.options.components.a
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    NavController navController2;
                    Composer$Companion$Empty$1 composer$Companion$Empty$2;
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        OptionsViewState optionsViewState = (OptionsViewState) mutableStateB.getF10755b();
                        Context context2 = context;
                        boolean zY4 = composer2.y(context2);
                        OptionsViewModel optionsViewModel3 = optionsViewModel2;
                        boolean zY5 = zY4 | composer2.y(optionsViewModel3);
                        Object objX5 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                        if (zY5 || objX5 == composer$Companion$Empty$3) {
                            objX5 = new rh0(context2, optionsViewModel3, 2);
                            composer2.q(objX5);
                        }
                        Function0 function11 = (Function0) objX5;
                        NavController navController3 = navController;
                        boolean zY6 = composer2.y(navController3);
                        Object objX6 = composer2.x();
                        if (zY6 || objX6 == composer$Companion$Empty$3) {
                            objX6 = new bg0(navController3, 2);
                            composer2.q(objX6);
                        }
                        Function0 function12 = (Function0) objX6;
                        boolean zY7 = composer2.y(navController3);
                        Object objX7 = composer2.x();
                        if (zY7 || objX7 == composer$Companion$Empty$3) {
                            objX7 = new bg0(navController3, 3);
                            composer2.q(objX7);
                        }
                        Function0 function13 = (Function0) objX7;
                        boolean zY8 = composer2.y(context2);
                        Object objX8 = composer2.x();
                        if (zY8 || objX8 == composer$Companion$Empty$3) {
                            objX8 = new je(context2, 17);
                            composer2.q(objX8);
                        }
                        Function0 function14 = (Function0) objX8;
                        boolean zY9 = composer2.y(context2);
                        Object objX9 = composer2.x();
                        if (zY9 || objX9 == composer$Companion$Empty$3) {
                            objX9 = new je(context2, 18);
                            composer2.q(objX9);
                        }
                        Function0 function15 = (Function0) objX9;
                        boolean zY10 = composer2.y(optionsViewModel3);
                        Object objX10 = composer2.x();
                        if (zY10 || objX10 == composer$Companion$Empty$3) {
                            navController2 = navController3;
                            composer$Companion$Empty$2 = composer$Companion$Empty$3;
                            OptionsComposableKt$OptionsComposable$6$6$1 optionsComposableKt$OptionsComposable$6$6$1 = new OptionsComposableKt$OptionsComposable$6$6$1(0, optionsViewModel3, OptionsViewModel.class, "openContact", "openContact()V", 0);
                            composer2.q(optionsComposableKt$OptionsComposable$6$6$1);
                            objX10 = optionsComposableKt$OptionsComposable$6$6$1;
                        } else {
                            navController2 = navController3;
                            composer$Companion$Empty$2 = composer$Companion$Empty$3;
                        }
                        Function0 function16 = (Function0) ((KFunction) objX10);
                        boolean zY11 = composer2.y(optionsViewModel3);
                        Object objX11 = composer2.x();
                        if (zY11 || objX11 == composer$Companion$Empty$2) {
                            OptionsComposableKt$OptionsComposable$6$7$1 optionsComposableKt$OptionsComposable$6$7$1 = new OptionsComposableKt$OptionsComposable$6$7$1(0, optionsViewModel3, OptionsViewModel.class, "openConsumerRights", "openConsumerRights()V", 0);
                            composer2.q(optionsComposableKt$OptionsComposable$6$7$1);
                            objX11 = optionsComposableKt$OptionsComposable$6$7$1;
                        }
                        Function0 function17 = (Function0) ((KFunction) objX11);
                        boolean zY12 = composer2.y(navController2);
                        Object objX12 = composer2.x();
                        if (zY12 || objX12 == composer$Companion$Empty$2) {
                            objX12 = new bg0(navController2, 4);
                            composer2.q(objX12);
                        }
                        Function0 function18 = (Function0) objX12;
                        boolean zY13 = composer2.y(navController2);
                        Object objX13 = composer2.x();
                        if (zY13 || objX13 == composer$Companion$Empty$2) {
                            objX13 = new bg0(navController2, 5);
                            composer2.q(objX13);
                        }
                        Function0 function19 = (Function0) objX13;
                        LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF;
                        boolean zY14 = composer2.y(lVModalBottomSheetState);
                        Object objX14 = composer2.x();
                        if (zY14 || objX14 == composer$Companion$Empty$2) {
                            objX14 = new OptionsComposableKt$OptionsComposable$6$10$1(0, lVModalBottomSheetState, LVModalBottomSheetState.class, "show", "show()V", 0);
                            composer2.q(objX14);
                        }
                        Function0 function20 = (Function0) ((KFunction) objX14);
                        boolean zY15 = composer2.y(context2);
                        Object objX15 = composer2.x();
                        if (zY15 || objX15 == composer$Companion$Empty$2) {
                            objX15 = new je(context2, 19);
                            composer2.q(objX15);
                        }
                        Function0 function21 = (Function0) objX15;
                        boolean zY16 = composer2.y(optionsViewModel3);
                        Object objX16 = composer2.x();
                        if (zY16 || objX16 == composer$Companion$Empty$2) {
                            OptionsComposableKt$OptionsComposable$6$12$1 optionsComposableKt$OptionsComposable$6$12$1 = new OptionsComposableKt$OptionsComposable$6$12$1(0, optionsViewModel3, OptionsViewModel.class, "toggleUiTestMode", "toggleUiTestMode()V", 0);
                            composer2.q(optionsComposableKt$OptionsComposable$6$12$1);
                            objX16 = optionsComposableKt$OptionsComposable$6$12$1;
                        }
                        OptionsScreenKt.a(paddingValues, optionsViewState, function11, function12, function13, function14, function1, function15, function16, function17, function18, function3, function19, function20, function6, function5, function4, function21, function7, function8, (Function0) ((KFunction) objX16), composer2, iIntValue & 14);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            };
            optionsViewModel2 = optionsViewModel2;
            ScaffoldKt.a(null, composableLambdaImplB, null, composableLambdaImplB2, null, 0, 0L, 0L, null, ComposableLambdaKt.b(-19849449, function10, gapComposerH), gapComposerH, 805309488, 501);
            gapComposer = gapComposerH;
            if (lVModalBottomSheetStateF.a()) {
                gapComposer.L(-216441114);
                LVModalBottomSheetKt.b(null, StringResources_androidKt.c(gapComposer, R.string.alt_close), null, lVModalBottomSheetStateF, null, 0L, false, null, ComposableLambdaKt.b(-1515346987, new Function3() { // from class: com.vuitton.android.presentation.screen.options.components.b
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        ((ColumnScope) obj).getClass();
                        if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF;
                            boolean zY4 = composer2.y(lVModalBottomSheetState);
                            OptionsViewModel optionsViewModel3 = optionsViewModel2;
                            boolean zY5 = zY4 | composer2.y(optionsViewModel3);
                            Object objX5 = composer2.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                            if (zY5 || objX5 == composer$Companion$Empty$2) {
                                objX5 = new rh0(lVModalBottomSheetState, optionsViewModel3, 1);
                                composer2.q(objX5);
                            }
                            Function0 function11 = (Function0) objX5;
                            boolean zY6 = composer2.y(lVModalBottomSheetState);
                            Object objX6 = composer2.x();
                            if (zY6 || objX6 == composer$Companion$Empty$2) {
                                OptionsComposableKt$OptionsComposable$7$2$1 optionsComposableKt$OptionsComposable$7$2$1 = new OptionsComposableKt$OptionsComposable$7$2$1(0, lVModalBottomSheetState, LVModalBottomSheetState.class, "hide", "hide(Lkotlin/jvm/functions/Function0;)V", 0);
                                composer2.q(optionsComposableKt$OptionsComposable$7$2$1);
                                objX6 = optionsComposableKt$OptionsComposable$7$2$1;
                            }
                            LogoutBottomSheetKt.a(function11, (Function0) objX6, composer2, 0);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposer), gapComposer, (LVModalBottomSheetState.f48797e << 9) | 100663296, 245);
                gapComposer = gapComposer;
                gapComposer.Z(false);
            } else {
                gapComposer.L(-216014244);
                gapComposer.Z(false);
            }
            if (((OptionsViewState) mutableStateB.getF10755b()).f59857b) {
                gapComposer.L(-215983430);
                LVLoadingOverlayKt.a(false, gapComposer, 0, 1);
                gapComposer.Z(false);
            } else {
                gapComposer.L(-215950756);
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gk(optionsViewModel2, navController, function0, function1, function2, function3, function4, function5, function6, function7, function8, i2);
        }
    }
}
