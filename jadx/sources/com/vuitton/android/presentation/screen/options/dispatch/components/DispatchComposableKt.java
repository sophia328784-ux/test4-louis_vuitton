package com.vuitton.android.presentation.screen.options.dispatch.components;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.LVExpandableListAnimatedIconKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel;
import com.vuitton.android.presentation.screen.options.dispatch.models.DispatchViewState;
import com.vuitton.foundation.model.domain.model.dispatch.DispatchArea;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.cj;
import defpackage.ck;
import defpackage.dh;
import defpackage.g0;
import defpackage.g4;
import defpackage.hg;
import defpackage.is;
import defpackage.n00;
import defpackage.o0;
import defpackage.o60;
import defpackage.p0;
import defpackage.pp;
import defpackage.rs;
import defpackage.tr;
import defpackage.u1;
import defpackage.vg;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/dispatch/models/DispatchViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DispatchComposableKt {
    public static final void a(final DispatchCountryViewModel dispatchCountryViewModel, Function0 function0, Composer composer, int i2) {
        function0.getClass();
        GapComposer gapComposerH = composer.h(-274908035);
        int i3 = i2 | (gapComposerH.K(dispatchCountryViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final MutableState mutableStateB = SnapshotStateKt.b(dispatchCountryViewModel.getP(), gapComposerH);
            final LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            int i4 = i3 & 14;
            boolean zY = (i4 == 4) | gapComposerH.y(lVModalBottomSheetStateF);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new vg(dispatchCountryViewModel, lVModalBottomSheetStateF, 24);
                gapComposerH.q(objX);
            }
            final Function1 function1 = (Function1) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX2;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Unit unit = Unit.f71739a;
            boolean zY2 = (i4 == 4) | gapComposerH.y(context);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new DispatchComposableKt$DispatchComposable$1$1(dispatchCountryViewModel, context, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            boolean zY3 = (i4 == 4) | gapComposerH.y(context);
            Object objX4 = gapComposerH.x();
            if (zY3 || objX4 == composer$Companion$Empty$1) {
                objX4 = new DispatchComposableKt$DispatchComposable$2$1(dispatchCountryViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX4);
            final int i5 = 0;
            final int i6 = 1;
            ScaffoldKt.a(null, ComposableLambdaKt.b(-375160511, new o0(function0, 25), gapComposerH), null, ComposableLambdaKt.b(1223988547, new g0(snackbarHostState, 18), gapComposerH), null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(625505292, new Function3() { // from class: com.vuitton.android.presentation.screen.options.dispatch.components.a
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    int i7 = i5;
                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                    Object obj4 = function1;
                    Object obj5 = mutableStateB;
                    switch (i7) {
                        case 0:
                            State state = (State) obj5;
                            Function1 function2 = (Function1) obj4;
                            PaddingValues paddingValues = (PaddingValues) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            paddingValues.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                            }
                            if (composer2.p(1 & iIntValue, (iIntValue & 19) != 18)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(PaddingKt.h(new DTFunctionNameModifier("DispatchComposable$lambda$7").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.c(composer2).f48361b.f48375b, RectangleShapeKt.f8913a));
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                                ComposeUiNode.b0.getClass();
                                Function0 function3 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function3);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                List list = ((DispatchViewState) state.getF10755b()).f59832c;
                                List list2 = !list.isEmpty() ? list : null;
                                if (list2 == null) {
                                    composer2.L(1290717962);
                                    composer2.F();
                                } else {
                                    composer2.L(1290717963);
                                    InAppDispatch inAppDispatch = ((DispatchViewState) state.getF10755b()).f59831b;
                                    DispatchCountryViewModel dispatchCountryViewModel2 = dispatchCountryViewModel;
                                    boolean zY4 = composer2.y(dispatchCountryViewModel2);
                                    Object objX5 = composer2.x();
                                    if (zY4 || objX5 == composer$Companion$Empty$2) {
                                        DispatchComposableKt$DispatchComposable$5$1$2$1$1 dispatchComposableKt$DispatchComposable$5$1$2$1$1 = new DispatchComposableKt$DispatchComposable$5$1$2$1$1(1, dispatchCountryViewModel2, DispatchCountryViewModel.class, "changeItemValue", "changeItemValue(I)V", 0);
                                        composer2.q(dispatchComposableKt$DispatchComposable$5$1$2$1$1);
                                        objX5 = dispatchComposableKt$DispatchComposable$5$1$2$1$1;
                                    }
                                    Function1 function4 = (Function1) ((KFunction) objX5);
                                    boolean zY5 = composer2.y(dispatchCountryViewModel2);
                                    Object objX6 = composer2.x();
                                    if (zY5 || objX6 == composer$Companion$Empty$2) {
                                        objX6 = new ck(dispatchCountryViewModel2, 14);
                                        composer2.q(objX6);
                                    }
                                    Function1 function5 = (Function1) objX6;
                                    boolean zY6 = composer2.y(dispatchCountryViewModel2);
                                    Object objX7 = composer2.x();
                                    if (zY6 || objX7 == composer$Companion$Empty$2) {
                                        DispatchComposableKt$DispatchComposable$5$1$2$3$1 dispatchComposableKt$DispatchComposable$5$1$2$3$1 = new DispatchComposableKt$DispatchComposable$5$1$2$3$1(1, dispatchCountryViewModel2, DispatchCountryViewModel.class, "shouldClearCookies", "shouldClearCookies(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z", 0);
                                        composer2.q(dispatchComposableKt$DispatchComposable$5$1$2$3$1);
                                        objX7 = dispatchComposableKt$DispatchComposable$5$1$2$3$1;
                                    }
                                    DispatchComposableKt.c(list2, inAppDispatch, function2, function4, function5, (Function1) ((KFunction) objX7), composer2, 0);
                                    composer2.F();
                                }
                                composer2.r();
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        default:
                            LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj5;
                            MutableState mutableState = (MutableState) obj4;
                            Composer composer3 = (Composer) obj2;
                            int iIntValue2 = ((Integer) obj3).intValue();
                            ((ColumnScope) obj).getClass();
                            if (composer3.p(1 & iIntValue2, (iIntValue2 & 17) != 16)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                boolean zY7 = composer3.y(lVModalBottomSheetState) | composer3.K(mutableState);
                                DispatchCountryViewModel dispatchCountryViewModel3 = dispatchCountryViewModel;
                                boolean zY8 = zY7 | composer3.y(dispatchCountryViewModel3);
                                Object objX8 = composer3.x();
                                if (zY8 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new pp(lVModalBottomSheetState, mutableState, dispatchCountryViewModel3);
                                    composer3.q(objX8);
                                }
                                Function0 function6 = (Function0) objX8;
                                boolean zY9 = composer3.y(lVModalBottomSheetState);
                                Object objX9 = composer3.x();
                                if (zY9 || objX9 == composer$Companion$Empty$2) {
                                    DispatchComposableKt$DispatchComposable$6$2$1 dispatchComposableKt$DispatchComposable$6$2$1 = new DispatchComposableKt$DispatchComposable$6$2$1(0, lVModalBottomSheetState, LVModalBottomSheetState.class, "hide", "hide(Lkotlin/jvm/functions/Function0;)V", 0);
                                    composer3.q(dispatchComposableKt$DispatchComposable$6$2$1);
                                    objX9 = dispatchComposableKt$DispatchComposable$6$2$1;
                                }
                                DispatchBottomSheetKt.a(function6, (Function0) objX9, composer3, 0);
                            } else {
                                composer3.D();
                            }
                            return Unit.f71739a;
                    }
                }
            }, gapComposerH), gapComposerH, 805309488, 245);
            gapComposerH = gapComposerH;
            if (((DispatchViewState) mutableStateB.getF10755b()).f59830a) {
                gapComposerH.L(719538307);
                LVLoadingOverlayKt.a(false, gapComposerH, 0, 1);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(719570981);
                gapComposerH.Z(false);
            }
            if (lVModalBottomSheetStateF.a()) {
                gapComposerH.L(719647179);
                LVModalBottomSheetKt.b(null, StringResources_androidKt.c(gapComposerH, R.string.alt_close), null, lVModalBottomSheetStateF, null, 0L, false, null, ComposableLambdaKt.b(-1017504891, new Function3() { // from class: com.vuitton.android.presentation.screen.options.dispatch.components.a
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        int i7 = i6;
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        Object obj4 = mutableStateB;
                        Object obj5 = lVModalBottomSheetStateF;
                        switch (i7) {
                            case 0:
                                State state = (State) obj5;
                                Function1 function2 = (Function1) obj4;
                                PaddingValues paddingValues = (PaddingValues) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Integer) obj3).intValue();
                                paddingValues.getClass();
                                if ((iIntValue & 6) == 0) {
                                    iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                                }
                                if (composer2.p(1 & iIntValue, (iIntValue & 19) != 18)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(PaddingKt.h(new DTFunctionNameModifier("DispatchComposable$lambda$7").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.c(composer2).f48361b.f48375b, RectangleShapeKt.f8913a));
                                    Alignment.f8582a.getClass();
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function3 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function3);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                    Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                    Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                    List list = ((DispatchViewState) state.getF10755b()).f59832c;
                                    List list2 = !list.isEmpty() ? list : null;
                                    if (list2 == null) {
                                        composer2.L(1290717962);
                                        composer2.F();
                                    } else {
                                        composer2.L(1290717963);
                                        InAppDispatch inAppDispatch = ((DispatchViewState) state.getF10755b()).f59831b;
                                        DispatchCountryViewModel dispatchCountryViewModel2 = dispatchCountryViewModel;
                                        boolean zY4 = composer2.y(dispatchCountryViewModel2);
                                        Object objX5 = composer2.x();
                                        if (zY4 || objX5 == composer$Companion$Empty$2) {
                                            DispatchComposableKt$DispatchComposable$5$1$2$1$1 dispatchComposableKt$DispatchComposable$5$1$2$1$1 = new DispatchComposableKt$DispatchComposable$5$1$2$1$1(1, dispatchCountryViewModel2, DispatchCountryViewModel.class, "changeItemValue", "changeItemValue(I)V", 0);
                                            composer2.q(dispatchComposableKt$DispatchComposable$5$1$2$1$1);
                                            objX5 = dispatchComposableKt$DispatchComposable$5$1$2$1$1;
                                        }
                                        Function1 function4 = (Function1) ((KFunction) objX5);
                                        boolean zY5 = composer2.y(dispatchCountryViewModel2);
                                        Object objX6 = composer2.x();
                                        if (zY5 || objX6 == composer$Companion$Empty$2) {
                                            objX6 = new ck(dispatchCountryViewModel2, 14);
                                            composer2.q(objX6);
                                        }
                                        Function1 function5 = (Function1) objX6;
                                        boolean zY6 = composer2.y(dispatchCountryViewModel2);
                                        Object objX7 = composer2.x();
                                        if (zY6 || objX7 == composer$Companion$Empty$2) {
                                            DispatchComposableKt$DispatchComposable$5$1$2$3$1 dispatchComposableKt$DispatchComposable$5$1$2$3$1 = new DispatchComposableKt$DispatchComposable$5$1$2$3$1(1, dispatchCountryViewModel2, DispatchCountryViewModel.class, "shouldClearCookies", "shouldClearCookies(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z", 0);
                                            composer2.q(dispatchComposableKt$DispatchComposable$5$1$2$3$1);
                                            objX7 = dispatchComposableKt$DispatchComposable$5$1$2$3$1;
                                        }
                                        DispatchComposableKt.c(list2, inAppDispatch, function2, function4, function5, (Function1) ((KFunction) objX7), composer2, 0);
                                        composer2.F();
                                    }
                                    composer2.r();
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            default:
                                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj5;
                                MutableState mutableState = (MutableState) obj4;
                                Composer composer3 = (Composer) obj2;
                                int iIntValue2 = ((Integer) obj3).intValue();
                                ((ColumnScope) obj).getClass();
                                if (composer3.p(1 & iIntValue2, (iIntValue2 & 17) != 16)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    boolean zY7 = composer3.y(lVModalBottomSheetState) | composer3.K(mutableState);
                                    DispatchCountryViewModel dispatchCountryViewModel3 = dispatchCountryViewModel;
                                    boolean zY8 = zY7 | composer3.y(dispatchCountryViewModel3);
                                    Object objX8 = composer3.x();
                                    if (zY8 || objX8 == composer$Companion$Empty$2) {
                                        objX8 = new pp(lVModalBottomSheetState, mutableState, dispatchCountryViewModel3);
                                        composer3.q(objX8);
                                    }
                                    Function0 function6 = (Function0) objX8;
                                    boolean zY9 = composer3.y(lVModalBottomSheetState);
                                    Object objX9 = composer3.x();
                                    if (zY9 || objX9 == composer$Companion$Empty$2) {
                                        DispatchComposableKt$DispatchComposable$6$2$1 dispatchComposableKt$DispatchComposable$6$2$1 = new DispatchComposableKt$DispatchComposable$6$2$1(0, lVModalBottomSheetState, LVModalBottomSheetState.class, "hide", "hide(Lkotlin/jvm/functions/Function0;)V", 0);
                                        composer3.q(dispatchComposableKt$DispatchComposable$6$2$1);
                                        objX9 = dispatchComposableKt$DispatchComposable$6$2$1;
                                    }
                                    DispatchBottomSheetKt.a(function6, (Function0) objX9, composer3, 0);
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                        }
                    }
                }, gapComposerH), gapComposerH, (LVModalBottomSheetState.f48797e << 9) | 100663296, 245);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(720354661);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rs(dispatchCountryViewModel, function0, i2, 4);
        }
    }

    public static final void b(Pair pair, int i2, int i3, Function1 function1, Composer composer, int i4) {
        GapComposer gapComposerH = composer.h(-351214329);
        Applier applier = gapComposerH.f7976a;
        int i5 = i4 | (gapComposerH.y(pair) ? 4 : 2) | (gapComposerH.d(i2) ? 32 : 16) | (gapComposerH.d(i3) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i5 & 1, (i5 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = tr.d("DispatchContinentItemView", 1.0f);
            boolean z = ((i5 & 112) == 32) | ((i5 & 7168) == 2048);
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new is(i2, 1, function1);
                gapComposerH.q(objX);
            }
            Modifier modifierC = ModifierExtKt.c(modifierD, false, null, null, (Function0) objX, 27);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Modifier modifierK = PaddingKt.k(n00.e(gapComposerH, modifierC2, function6, "DispatchContinentItemView", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.f8591k, gapComposerH, 6);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC3, function6);
            Modifier modifierE = ModifierExtKt.e(RowScopeInstance.f5040a.b(new DTFunctionNameModifier("DispatchContinentItemView"), Alignment.Companion.l), "dispatchCountry_continent_text");
            Object obj = pair.f71705b;
            Object obj2 = pair.f71706c;
            TextKt.c(((DispatchArea) obj).f67475c, modifierE, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131068);
            Boolean bool = (Boolean) obj2;
            gapComposerH = gapComposerH;
            LVExpandableListAnimatedIconKt.a(n00.g("DispatchContinentItemView", "dispatchCountry_expand_button"), 0, bool.booleanValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 0, 26);
            gapComposerH.Z(true);
            if (((DispatchArea) pair.f71705b).f67474b < i3 - 1 || bool.booleanValue()) {
                DividerKt.a(o60.c(gapComposerH, -1252492179, "DispatchContinentItemView", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 6, 2);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1252303823);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new dh(pair, i2, i3, function1, i4);
        }
    }

    public static final void c(List list, InAppDispatch inAppDispatch, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-288824501);
        int i3 = i2 | (gapComposerH.y(list) ? 4 : 2) | (gapComposerH.y(inAppDispatch) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192) | (gapComposerH.y(function4) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            Modifier modifierO = PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8).o(SizeKt.f5052c);
            boolean zY = ((i3 & 896) == 256) | ((i3 & 7168) == 2048) | gapComposerH.y(list) | gapComposerH.y(inAppDispatch) | ((57344 & i3) == 16384) | ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                g4 g4Var = new g4(list, function2, inAppDispatch, function1, function3, function4, 3);
                gapComposerH.q(g4Var);
                objX = g4Var;
            }
            LazyDslKt.a(modifierO, lazyListStateA, null, null, null, null, true, null, (Function1) objX, gapComposerH, 12582912, 380);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(list, inAppDispatch, function1, function2, function3, function4, i2, 11);
        }
    }

    public static final void d(boolean z, InAppDispatch inAppDispatch, InAppDispatch inAppDispatch2, Function1 function1, Function1 function2, Function1 function3, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1431530601);
        int i3 = i2 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.y(inAppDispatch) ? 32 : 16) | (gapComposerH.y(inAppDispatch2) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            AnimatedVisibilityKt.e(z, null, null, null, null, ComposableLambdaKt.b(-1649882001, new p0((Object) inAppDispatch2, (Object) function2, (Object) inAppDispatch, (Object) function3, (Object) function1, (Object) StringResources_androidKt.c(gapComposerH, R.string.alt_locale_showroom_status), 11), gapComposerH), gapComposerH, (i3 & 14) | ImageMetadata.EDGE_MODE, 30);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new hg(z, inAppDispatch, inAppDispatch2, function1, function2, function3, i2);
        }
    }
}
