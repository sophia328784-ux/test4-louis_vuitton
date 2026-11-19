package com.vuitton.android.presentation.screen.aicompanion.components.chat;

import android.content.ClipboardManager;
import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVAICompanionCompositionLocalProviderKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionBottomSheet;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.i;
import defpackage.j;
import defpackage.k;
import defpackage.l;
import defpackage.m;
import defpackage.o;
import defpackage.p;
import defpackage.q;
import defpackage.r;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionBottomSheet;", "bottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AICompanionChatComposableKt {
    public static final void a(final AICompanionViewModel aICompanionViewModel, final ContributionLinkNavigator contributionLinkNavigator, final Function0 function0, final Function0 function1, final Function1 function2, final Function3 function3, final Function0 function4, Composer composer, int i2) {
        aICompanionViewModel.getClass();
        contributionLinkNavigator.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(-1141440090);
        int i3 = i2 | (gapComposerH.K(aICompanionViewModel) ? 4 : 2) | (gapComposerH.y(contributionLinkNavigator) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            LVAICompanionCompositionLocalProviderKt.a(ComposableLambdaKt.b(-480491289, new Function2() { // from class: com.vuitton.android.presentation.screen.aicompanion.components.chat.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer$Companion$Empty$1 composer$Companion$Empty$1;
                    Object aICompanionChatComposableKt$AICompanionChatComposable$1$2$1;
                    Context context2;
                    Object aICompanionChatComposableKt$AICompanionChatComposable$1$4$1;
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        AICompanionViewModel aICompanionViewModel2 = aICompanionViewModel;
                        final MutableState mutableStateC = FlowExtKt.c(aICompanionViewModel2.getU(), null, composer2, 0, 7);
                        MutableState mutableStateC2 = FlowExtKt.c(aICompanionViewModel2.e(), null, composer2, 0, 7);
                        AICompanionTracker aICompanionTracker = (AICompanionTracker) composer2.k(AICompanionTrackerEntryPointKt.f52911a);
                        Object systemService = ((Context) composer2.k(AndroidCompositionLocals_androidKt.f9936b)).getSystemService("clipboard");
                        systemService.getClass();
                        ClipboardManager clipboardManager = (ClipboardManager) systemService;
                        Object objX = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$2) {
                            objX = new p(0);
                            composer2.q(objX);
                        }
                        LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(48, 5, composer2, (Function1) objX);
                        AICompanionBottomSheet aICompanionBottomSheet = (AICompanionBottomSheet) mutableStateC2.getF10755b();
                        boolean zK = composer2.K(mutableStateC2) | composer2.y(lVModalBottomSheetStateF);
                        Object objX2 = composer2.x();
                        if (zK || objX2 == composer$Companion$Empty$2) {
                            objX2 = new AICompanionChatComposableKt$AICompanionChatComposable$1$1$1(mutableStateC2, lVModalBottomSheetStateF, null);
                            composer2.q(objX2);
                        }
                        EffectsKt.e(composer2, aICompanionBottomSheet, (Function2) objX2);
                        Object objX3 = composer2.x();
                        if (objX3 == composer$Companion$Empty$2) {
                            objX3 = new SnackbarHostState();
                            composer2.q(objX3);
                        }
                        SnackbarHostState snackbarHostState = (SnackbarHostState) objX3;
                        HapticFeedback hapticFeedback = (HapticFeedback) composer2.k(CompositionLocalsKt.l);
                        Unit unit = Unit.f71739a;
                        boolean zY = composer2.y(aICompanionViewModel2) | composer2.y(hapticFeedback);
                        Context context3 = context;
                        boolean zY2 = zY | composer2.y(context3);
                        Object objX4 = composer2.x();
                        if (zY2 || objX4 == composer$Companion$Empty$2) {
                            composer$Companion$Empty$1 = composer$Companion$Empty$2;
                            aICompanionChatComposableKt$AICompanionChatComposable$1$2$1 = new AICompanionChatComposableKt$AICompanionChatComposable$1$2$1(aICompanionViewModel2, hapticFeedback, context3, snackbarHostState, null);
                            aICompanionViewModel2 = aICompanionViewModel2;
                            composer2.q(aICompanionChatComposableKt$AICompanionChatComposable$1$2$1);
                        } else {
                            aICompanionChatComposableKt$AICompanionChatComposable$1$2$1 = objX4;
                            composer$Companion$Empty$1 = composer$Companion$Empty$2;
                        }
                        EffectsKt.e(composer2, unit, (Function2) aICompanionChatComposableKt$AICompanionChatComposable$1$2$1);
                        AICompanionViewState aICompanionViewState = (AICompanionViewState) mutableStateC.getF10755b();
                        boolean zY3 = composer2.y(aICompanionViewModel2);
                        Object objX5 = composer2.x();
                        if (zY3 || objX5 == composer$Companion$Empty$1) {
                            context2 = context3;
                            AICompanionChatComposableKt$AICompanionChatComposable$1$3$1 aICompanionChatComposableKt$AICompanionChatComposable$1$3$1 = new AICompanionChatComposableKt$AICompanionChatComposable$1$3$1(1, aICompanionViewModel2, AICompanionViewModel.class, "onPromptChanged", "onPromptChanged(Ljava/lang/String;)V", 0);
                            composer2.q(aICompanionChatComposableKt$AICompanionChatComposable$1$3$1);
                            objX5 = aICompanionChatComposableKt$AICompanionChatComposable$1$3$1;
                        } else {
                            context2 = context3;
                        }
                        KFunction kFunction = (KFunction) objX5;
                        boolean zY4 = composer2.y(aICompanionViewModel2);
                        Object objX6 = composer2.x();
                        if (zY4 || objX6 == composer$Companion$Empty$1) {
                            aICompanionChatComposableKt$AICompanionChatComposable$1$4$1 = new AICompanionChatComposableKt$AICompanionChatComposable$1$4$1(1, aICompanionViewModel2, AICompanionViewModel.class, "onMessageAnimationEnd", "onMessageAnimationEnd(Ljava/lang/String;)V", 0);
                            composer2.q(aICompanionChatComposableKt$AICompanionChatComposable$1$4$1);
                        } else {
                            aICompanionChatComposableKt$AICompanionChatComposable$1$4$1 = objX6;
                        }
                        KFunction kFunction2 = (KFunction) aICompanionChatComposableKt$AICompanionChatComposable$1$4$1;
                        Function1 function5 = (Function1) kFunction;
                        boolean zY5 = composer2.y(aICompanionViewModel2) | composer2.y(aICompanionTracker);
                        Object objX7 = composer2.x();
                        if (zY5 || objX7 == composer$Companion$Empty$1) {
                            objX7 = new i(3, aICompanionViewModel2, aICompanionTracker);
                            composer2.q(objX7);
                        }
                        Function0 function6 = (Function0) objX7;
                        boolean zY6 = composer2.y(aICompanionViewModel2) | composer2.y(aICompanionTracker);
                        Object objX8 = composer2.x();
                        if (zY6 || objX8 == composer$Companion$Empty$1) {
                            objX8 = new l(aICompanionViewModel2, aICompanionTracker);
                            composer2.q(objX8);
                        }
                        Function1 function7 = (Function1) objX8;
                        Function0 function8 = function0;
                        boolean zK2 = composer2.K(function8) | composer2.y(aICompanionTracker);
                        Object objX9 = composer2.x();
                        if (zK2 || objX9 == composer$Companion$Empty$1) {
                            objX9 = new j(function8, aICompanionTracker, 1);
                            composer2.q(objX9);
                        }
                        Function0 function9 = (Function0) objX9;
                        boolean zY7 = composer2.y(aICompanionViewModel2) | composer2.y(aICompanionTracker);
                        Object objX10 = composer2.x();
                        if (zY7 || objX10 == composer$Companion$Empty$1) {
                            objX10 = new i(4, aICompanionViewModel2, aICompanionTracker);
                            composer2.q(objX10);
                        }
                        Function0 function10 = (Function0) objX10;
                        boolean zY8 = composer2.y(aICompanionViewModel2) | composer2.y(aICompanionTracker);
                        Object objX11 = composer2.x();
                        if (zY8 || objX11 == composer$Companion$Empty$1) {
                            objX11 = new i(0, aICompanionViewModel2, aICompanionTracker);
                            composer2.q(objX11);
                        }
                        Function0 function11 = (Function0) objX11;
                        Function0 function12 = function1;
                        boolean zK3 = composer2.K(function12) | composer2.y(aICompanionTracker);
                        Object objX12 = composer2.x();
                        if (zK3 || objX12 == composer$Companion$Empty$1) {
                            objX12 = new j(function12, aICompanionTracker, 0);
                            composer2.q(objX12);
                        }
                        Function0 function13 = (Function0) objX12;
                        final Function3 function14 = function3;
                        boolean zK4 = composer2.K(function14) | composer2.K(mutableStateC);
                        Object objX13 = composer2.x();
                        if (zK4 || objX13 == composer$Companion$Empty$1) {
                            objX13 = new Function2<SkuIdUiModel, Boolean, Unit>() { // from class: com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatComposableKt$AICompanionChatComposable$1$11$1
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    String str = ((SkuIdUiModel) obj3).f61764b;
                                    Boolean bool = (Boolean) obj4;
                                    bool.getClass();
                                    str.getClass();
                                    function14.A(new SkuIdUiModel(str), bool, Boolean.valueOf(((AICompanionViewState) mutableStateC.getF10755b()).f52892a));
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX13);
                        }
                        Function2 function15 = (Function2) objX13;
                        boolean zY9 = composer2.y(aICompanionTracker) | composer2.y(clipboardManager);
                        Object objX14 = composer2.x();
                        if (zY9 || objX14 == composer$Companion$Empty$1) {
                            objX14 = new k(aICompanionTracker, clipboardManager, 0);
                            composer2.q(objX14);
                        }
                        Function1 function16 = (Function1) objX14;
                        boolean zY10 = composer2.y(aICompanionTracker) | composer2.y(aICompanionViewModel2);
                        Object objX15 = composer2.x();
                        if (zY10 || objX15 == composer$Companion$Empty$1) {
                            objX15 = new l(0, aICompanionViewModel2, aICompanionTracker);
                            composer2.q(objX15);
                        }
                        Function1 function17 = (Function1) objX15;
                        Function1 function18 = (Function1) kFunction2;
                        ContributionLinkNavigator contributionLinkNavigator2 = contributionLinkNavigator;
                        Context context4 = context2;
                        boolean zY11 = composer2.y(contributionLinkNavigator2) | composer2.y(context4);
                        Object objX16 = composer2.x();
                        if (zY11 || objX16 == composer$Companion$Empty$1) {
                            objX16 = new m(contributionLinkNavigator2, context4, 0);
                            composer2.q(objX16);
                        }
                        Function1 function19 = (Function1) objX16;
                        boolean zY12 = composer2.y(aICompanionViewModel2) | composer2.y(aICompanionTracker);
                        Object objX17 = composer2.x();
                        if (zY12 || objX17 == composer$Companion$Empty$1) {
                            objX17 = new i(2, aICompanionViewModel2, aICompanionTracker);
                            composer2.q(objX17);
                        }
                        Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$1;
                        Object obj3 = aICompanionViewModel2;
                        AICompanionChatScreenKt.a(aICompanionViewState, snackbarHostState, function5, function6, function7, function9, function10, function11, function13, function2, function15, function16, function17, function18, function19, (Function0) objX17, composer2, 48);
                        if (lVModalBottomSheetStateF.a()) {
                            composer2.L(813757103);
                            String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                            boolean zK5 = composer2.K(mutableStateC2) | composer2.y(aICompanionTracker) | composer2.y(obj3);
                            Object objX18 = composer2.x();
                            if (zK5 || objX18 == composer$Companion$Empty$3) {
                                objX18 = new q(aICompanionTracker, obj3, mutableStateC2, 0);
                                composer2.q(objX18);
                            }
                            LVModalBottomSheetKt.b(null, strC, (Function0) objX18, lVModalBottomSheetStateF, null, 0L, false, null, ComposableLambdaKt.b(1178752950, new r(aICompanionTracker, obj3, function4, mutableStateC2, 0), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                            composer2.F();
                        } else {
                            composer2.L(815715931);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 6);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(aICompanionViewModel, contributionLinkNavigator, function0, function1, function2, function3, function4, i2);
        }
    }
}
