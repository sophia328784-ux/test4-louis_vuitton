package com.vuitton.android.presentation.screen.plp.components.screens;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.Easing;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.AndroidWindowInsets;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.paging.LoadState;
import androidx.paging.compose.LazyPagingItems;
import androidx.paging.compose.LazyPagingItemsKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVBottomRoundOverlayKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDropDownType;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.plp.components.screens.PSPScreenKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPSnackBarKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPWishlistFeedbackWatcherKt;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PSPViewState;
import defpackage.ae0;
import defpackage.aj0;
import defpackage.c30;
import defpackage.cj;
import defpackage.ef;
import defpackage.f9;
import defpackage.ii0;
import defpackage.n00;
import defpackage.nj0;
import defpackage.p9;
import defpackage.pq0;
import defpackage.rk0;
import defpackage.u1;
import defpackage.wk0;
import defpackage.x20;
import defpackage.yk0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0003¨\u0006\u0003²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "skipAnimations", "trackingFired", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PSPScreenKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f62772a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f62773b;

        static {
            int[] iArr = new int[PSPStyle.values().length];
            try {
                iArr[PSPStyle.CATALOG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PSPStyle.SEARCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f62772a = iArr;
            int[] iArr2 = new int[FiltersDropDownType.values().length];
            try {
                iArr2[FiltersDropDownType.SORT_BY.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[FiltersDropDownType.MORES_FILTERS.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f62773b = iArr2;
        }
    }

    public static final void a(final PLPViewState pLPViewState, final PSPViewState pSPViewState, final QuickAccessFiltersViewState quickAccessFiltersViewState, final PSPStyle pSPStyle, final Flow flow, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function1 function6, final Function1 function7, final Function1 function8, final Function2 function9, final Function2 function10, final Function1 function11, final Function1 function12, final Function1 function13, final Function2 function14, final Function0 function15, final Function0 function16, final Function1 function17, final Function0 function18, final Function1 function19, final Function1 function20, Composer composer, final int i2) {
        int i3;
        GapComposer gapComposer;
        WindowInsets windowInsetsA;
        pLPViewState.getClass();
        pSPViewState.getClass();
        quickAccessFiltersViewState.getClass();
        pSPStyle.getClass();
        flow.getClass();
        defpackage.a.D(function0, function1, function2, function3, function4);
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        function12.getClass();
        function13.getClass();
        function14.getClass();
        function15.getClass();
        function16.getClass();
        function17.getClass();
        function18.getClass();
        function19.getClass();
        function20.getClass();
        GapComposer gapComposerH = composer.h(-545779092);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(pLPViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(pSPViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(quickAccessFiltersViewState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.d(pSPStyle.ordinal()) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(flow) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i3 |= gapComposerH.y(function1) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposerH.y(function2) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i3 |= gapComposerH.y(function3) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i3 |= gapComposerH.y(function4) ? 536870912 : 268435456;
        }
        int i4 = i3;
        int i5 = (gapComposerH.y(function5) ? 4 : 2) | (gapComposerH.y(function6) ? 32 : 16) | (gapComposerH.y(function7) ? 256 : 128) | (gapComposerH.y(function8) ? 2048 : 1024) | (gapComposerH.y(function9) ? 16384 : 8192) | (gapComposerH.y(function10) ? 131072 : 65536) | (gapComposerH.y(function11) ? 1048576 : 524288) | (gapComposerH.y(function12) ? 8388608 : 4194304) | (gapComposerH.y(function13) ? 67108864 : 33554432) | (gapComposerH.y(function14) ? 536870912 : 268435456);
        int i6 = (gapComposerH.y(function15) ? 4 : 2) | (gapComposerH.y(function16) ? 32 : 16) | (gapComposerH.y(function17) ? 256 : 128) | (gapComposerH.y(function18) ? 2048 : 1024) | (gapComposerH.y(function19) ? 16384 : 8192) | (gapComposerH.y(function20) ? 131072 : 65536);
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 306783379) == 306783378 && (i6 & 74899) == 74898) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            final LazyPagingItems lazyPagingItemsA = LazyPagingItemsKt.a(pLPViewState.f63007c, gapComposerH);
            final String str = pSPViewState.f63014a;
            final Integer num = pSPViewState.f63015b;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.valueOf(quickAccessFiltersViewState.d));
                gapComposerH.q(objX2);
            }
            final MutableState mutableState = (MutableState) objX2;
            Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("PSPScreen"), pSPStyle.getConsumeInsets(), new aj0(14), gapComposerH, 6);
            if (pSPStyle.getConsumeInsets()) {
                gapComposerH.L(-507629488);
                gapComposerH.Z(false);
                windowInsetsA = WindowInsetsExtKt.a();
            } else {
                gapComposerH.L(-507628609);
                AndroidWindowInsets androidWindowInsetsC = WindowInsets_androidKt.c(gapComposerH);
                WindowInsetsHolder.y.getClass();
                WindowInsets windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                gapComposerH.Z(false);
                windowInsetsA = windowInsetsI;
            }
            ScaffoldKt.a(modifierB, ComposableLambdaKt.b(1997728048, new u1(pSPStyle, str, num, lazyPagingItemsA, function6, function2, 22), gapComposerH), ComposableLambdaKt.b(1864023985, new p9(pSPStyle, quickAccessFiltersViewState, str, function2, function9, function1, function4, function18, function17), gapComposerH), ComposableLambdaKt.b(1730319922, new ae0(snackbarHostState, 20), gapComposerH), null, 0, 0L, 0L, windowInsetsA, ComposableLambdaKt.b(2033943931, new Function3() { // from class: com.vuitton.android.presentation.screen.plp.components.screens.e
                /* JADX WARN: Type inference failed for: r11v15 */
                /* JADX WARN: Type inference failed for: r11v8 */
                /* JADX WARN: Type inference failed for: r11v9, types: [boolean, int] */
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    e eVar;
                    ?? r11;
                    Composer$Companion$Empty$1 composer$Companion$Empty$2;
                    Easing easing;
                    int i7;
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PSPScreen$lambda$8");
                        FillElement fillElement = SizeKt.f5052c;
                        Modifier modifierH = PaddingKt.h(dTFunctionNameModifier.o(fillElement), paddingValues);
                        QuickAccessFiltersViewState quickAccessFiltersViewState2 = quickAccessFiltersViewState;
                        boolean zY = composer2.y(quickAccessFiltersViewState2);
                        Object objX3 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                        if (zY || objX3 == composer$Companion$Empty$3) {
                            objX3 = new rk0(quickAccessFiltersViewState2, 3);
                            composer2.q(objX3);
                        }
                        Modifier modifierB2 = SemanticsModifierKt.b(modifierH, false, (Function1) objX3);
                        Alignment.f8582a.getClass();
                        BiasAlignment biasAlignment = Alignment.Companion.f8584b;
                        MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierB2);
                        ComposeUiNode.b0.getClass();
                        Function0 function21 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function21);
                        } else {
                            composer2.o();
                        }
                        Function2 function22 = ComposeUiNode.Companion.f9644f;
                        Updater.c(composer2, measurePolicyD, function22);
                        Function2 function23 = ComposeUiNode.Companion.f9643e;
                        Updater.c(composer2, persistentCompositionLocalMapN, function23);
                        Integer numValueOf = Integer.valueOf(iHashCode);
                        Function2 function24 = ComposeUiNode.Companion.g;
                        Updater.c(composer2, numValueOf, function24);
                        Function1 function25 = ComposeUiNode.Companion.f9645h;
                        Updater.b(composer2, function25);
                        Function2 function26 = ComposeUiNode.Companion.d;
                        Updater.c(composer2, modifierC, function26);
                        Object objX4 = composer2.x();
                        if (objX4 == composer$Companion$Empty$3) {
                            objX4 = SnapshotStateKt.g(Boolean.FALSE);
                            composer2.q(objX4);
                        }
                        MutableState mutableState2 = (MutableState) objX4;
                        LazyPagingItems lazyPagingItems = lazyPagingItemsA;
                        LoadState loadState = lazyPagingItems.d().f18562a;
                        Integer numValueOf2 = Integer.valueOf(lazyPagingItems.b());
                        boolean zY2 = composer2.y(lazyPagingItems);
                        Function1 function27 = function19;
                        boolean zK = zY2 | composer2.K(function27);
                        Object objX5 = composer2.x();
                        if (zK || objX5 == composer$Companion$Empty$3) {
                            objX5 = new PSPScreenKt$PSPScreen$5$2$1$1(lazyPagingItems, function27, mutableState2, null);
                            composer2.q(objX5);
                        }
                        EffectsKt.g(loadState, numValueOf2, (Function2) objX5, composer2);
                        DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("PSPScreen$lambda$8");
                        Object objX6 = composer2.x();
                        if (objX6 == composer$Companion$Empty$3) {
                            objX6 = new yk0(10);
                            composer2.q(objX6);
                        }
                        Modifier modifierB3 = SemanticsModifierKt.b(dTFunctionNameModifier2, false, (Function1) objX6);
                        GridModes.Full full = GridModes.Full.f55430b;
                        String str2 = str;
                        boolean z = str2 != null;
                        boolean zK2 = composer2.K(str2);
                        Object objX7 = composer2.x();
                        int i8 = 5;
                        if (zK2 || objX7 == composer$Companion$Empty$3) {
                            objX7 = new nj0(str2, i8);
                            composer2.q(objX7);
                        }
                        Function1 function28 = (Function1) objX7;
                        Object objX8 = composer2.x();
                        if (objX8 == composer$Companion$Empty$3) {
                            objX8 = new yk0(11);
                            composer2.q(objX8);
                        }
                        Function1 function29 = (Function1) objX8;
                        Function2 function30 = function10;
                        boolean zK3 = composer2.K(function30) | composer2.K(str2);
                        Object objX9 = composer2.x();
                        if (zK3 || objX9 == composer$Companion$Empty$3) {
                            objX9 = new wk0(3, str2, function30);
                            composer2.q(objX9);
                        }
                        Function1 function31 = (Function1) objX9;
                        Object objX10 = composer2.x();
                        MutableState mutableState3 = mutableState;
                        if (objX10 == composer$Companion$Empty$3) {
                            objX10 = new c30(20, mutableState3);
                            composer2.q(objX10);
                        }
                        PLPKt.a(modifierB3, full, Call.Parameters.DEFAULT_CAMERA_ZOOM, num, z, false, false, lazyPagingItems, null, null, null, null, null, function28, function29, function31, function11, null, function14, null, (Function1) objX10, function20, composer2, 16777264, 24576, 6, 663396);
                        Composer composer3 = composer2;
                        boolean z2 = lazyPagingItems.d().f18562a instanceof LoadState.Loading;
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                        if ((z2 || ((lazyPagingItems.d().f18564c instanceof LoadState.Loading) && lazyPagingItems.b() == 0)) && lazyPagingItems.b() > 0) {
                            composer3.L(-323911738);
                            Modifier modifierB4 = BackgroundKt.b(new DTFunctionNameModifier("PSPScreen$lambda$8").o(fillElement), Color.b(LVAppDesignKitTheme.h(composer3).d, LVAppDesignKitTheme.c(composer3).f48361b.f48374a), RectangleShapeKt.f8913a);
                            Object objX11 = composer3.x();
                            if (objX11 == composer$Companion$Empty$3) {
                                objX11 = new ii0(24);
                                composer3.q(objX11);
                            }
                            Modifier modifierD = ClickableKt.d(modifierB4, false, null, null, (Function0) objX11, 14);
                            eVar = this;
                            Context context2 = context;
                            boolean zY3 = composer3.y(context2);
                            Object objX12 = composer3.x();
                            if (zY3 || objX12 == composer$Companion$Empty$3) {
                                objX12 = new ef(context2, 12);
                                composer3.q(objX12);
                            }
                            r11 = 0;
                            Modifier modifierB5 = SemanticsModifierKt.b(modifierD, false, (Function1) objX12);
                            MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                            int iHashCode2 = Long.hashCode(composer3.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                            Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierB5);
                            if (composer3.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer3.B();
                            if (composer3.getS()) {
                                composer3.C(function21);
                            } else {
                                composer3.o();
                            }
                            Updater.c(composer3, measurePolicyD2, function22);
                            Updater.c(composer3, persistentCompositionLocalMapN2, function23);
                            cj.s(iHashCode2, composer3, function24, composer3, function25);
                            Modifier modifierG = boxScopeInstance.g(defpackage.a.f(composer3, modifierC2, function26, "PSPScreen$lambda$8"), Alignment.Companion.f8587f);
                            composer$Companion$Empty$2 = composer$Companion$Empty$3;
                            LVFlowerLoaderKt.a(modifierG, null, false, composer3, 0, 6);
                            composer3.r();
                            composer3.F();
                            easing = null;
                        } else {
                            easing = null;
                            r11 = 0;
                            eVar = this;
                            composer$Companion$Empty$2 = composer$Companion$Empty$3;
                            composer3.L(-323320723);
                            composer3.F();
                        }
                        if (lazyPagingItems.b() > 0) {
                            DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-323184974, composer3, "PSPScreen$lambda$8");
                            boolean zY4 = composer3.y(quickAccessFiltersViewState2);
                            Object objX13 = composer3.x();
                            if (zY4 || objX13 == composer$Companion$Empty$2) {
                                objX13 = new rk0(quickAccessFiltersViewState2, 2);
                                composer3.q(objX13);
                            }
                            Modifier modifierD2 = SizeKt.d(boxScopeInstance.g(SemanticsModifierKt.b(dTFunctionNameModifierJ, r11, (Function1) objX13), Alignment.Companion.f8588h), 1.0f);
                            TweenSpec tweenSpecC = AnimationSpecKt.c(r11, 300, easing, 5);
                            Object objX14 = composer3.x();
                            if (objX14 == composer$Companion$Empty$2) {
                                i7 = 18;
                                objX14 = new x20(18);
                                composer3.q(objX14);
                            } else {
                                i7 = 18;
                            }
                            EnterTransition enterTransitionQ = EnterExitTransitionKt.q((Function1) objX14, tweenSpecC);
                            TweenSpec tweenSpecC2 = AnimationSpecKt.c(r11, 300, easing, 5);
                            Object objX15 = composer3.x();
                            if (objX15 == composer$Companion$Empty$2) {
                                objX15 = new x20(i7);
                                composer3.q(objX15);
                            }
                            AnimatedVisibilityKt.e(true, modifierD2, enterTransitionQ, EnterExitTransitionKt.u((Function1) objX15, tweenSpecC2), null, ComposableLambdaKt.b(406314571, new f9(quickAccessFiltersViewState2, function5, function7, function1, function4, function8, function9, function12, function16, mutableState3), composer3), composer3, 196614, 16);
                            composer3 = composer3;
                            composer3.F();
                        } else {
                            composer3.L(-320684979);
                            composer3.F();
                        }
                        if (pSPStyle == PSPStyle.SEARCH) {
                            Composer composer4 = composer3;
                            LVBottomRoundOverlayKt.a(0, 2, 0L, composer4, boxScopeInstance.g(pq0.j(-320637921, composer3, "PSPScreen$lambda$8"), Alignment.Companion.f8589i));
                            composer3 = composer4;
                            composer3.F();
                        } else {
                            composer3.L(-320501459);
                            composer3.F();
                        }
                        composer3.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 805309872, 240);
            PLPSnackBarKt.a(snackbarHostState, lazyPagingItemsA, false, flow, function3, function15, gapComposerH, ((i4 >> 3) & 7168) | 70 | ((i4 >> 12) & 57344) | (458752 & (i6 << 15)), 4);
            gapComposer = gapComposerH;
            int i7 = i4 >> 9;
            PLPWishlistFeedbackWatcherKt.a(lazyPagingItemsA, flow, function0, function13, gapComposer, (i7 & 896) | (i7 & 112) | 8 | ((i5 >> 15) & 7168));
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: ml0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    PSPScreenKt.a(pLPViewState, pSPViewState, quickAccessFiltersViewState, pSPStyle, flow, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, function16, function17, function18, function19, function20, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
