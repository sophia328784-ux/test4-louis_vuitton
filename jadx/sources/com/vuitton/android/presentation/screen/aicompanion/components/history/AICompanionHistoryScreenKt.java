package com.vuitton.android.presentation.screen.aicompanion.components.history;

import android.content.ClipboardManager;
import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatHistoryUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPointKt;
import defpackage.cj;
import defpackage.d0;
import defpackage.f;
import defpackage.n0;
import defpackage.n00;
import defpackage.o0;
import defpackage.p0;
import defpackage.pq0;
import defpackage.s0;
import defpackage.tr;
import defpackage.w;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\u0002²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "sessionIdPendingDelete", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AICompanionHistoryScreenKt {
    public static final void a(final AICompanionViewState aICompanionViewState, final Function0 function0, final Function1 function1, final Function1 function2, Function0 function3, Composer composer, int i2) {
        GapComposer gapComposer;
        aICompanionViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(93871481);
        int i3 = i2 | (gapComposerH.y(aICompanionViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            AICompanionTracker aICompanionTracker = (AICompanionTracker) gapComposerH.k(AICompanionTrackerEntryPointKt.f52911a);
            final HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            final MutableState mutableState = (MutableState) objX;
            Object systemService = ((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b)).getSystemService("clipboard");
            systemService.getClass();
            final ClipboardManager clipboardManager = (ClipboardManager) systemService;
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(aICompanionTracker);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new AICompanionHistoryScreenKt$AICompanionHistoryScreen$1$1(aICompanionTracker, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            gapComposer = gapComposerH;
            ScaffoldKt.a(new DTFunctionNameModifier("AICompanionHistoryScreen").o(SizeKt.f5052c), ComposableLambdaKt.b(367740213, new o0(function3, 0), gapComposerH), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(-868240694, new Function3() { // from class: com.vuitton.android.presentation.screen.aicompanion.components.history.a
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    HapticFeedback hapticFeedback2;
                    Composer$Companion$Empty$1 composer$Companion$Empty$2;
                    final MutableState mutableState2;
                    Object obj4;
                    Modifier dTFunctionNameModifier;
                    MutableState mutableState3;
                    boolean z;
                    a aVar = this;
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierK = PaddingKt.k(PaddingKt.h(n00.g("AICompanionHistoryScreen$lambda$5", "aiCompanion_history_view").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierK);
                        ComposeUiNode.b0.getClass();
                        Function0 function4 = ComposeUiNode.Companion.f9641b;
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
                        Function2 function5 = ComposeUiNode.Companion.f9644f;
                        Updater.c(composer2, measurePolicyD, function5);
                        Function2 function6 = ComposeUiNode.Companion.f9643e;
                        Updater.c(composer2, persistentCompositionLocalMapN, function6);
                        Integer numValueOf = Integer.valueOf(iHashCode);
                        Function2 function7 = ComposeUiNode.Companion.g;
                        Updater.c(composer2, numValueOf, function7);
                        Function1 function8 = ComposeUiNode.Companion.f9645h;
                        Updater.b(composer2, function8);
                        Function2 function9 = ComposeUiNode.Companion.d;
                        Updater.c(composer2, modifierC, function9);
                        Modifier modifierD = ScrollKt.d(new DTFunctionNameModifier("AICompanionHistoryScreen$lambda$5"), ScrollKt.b(composer2), false, 14);
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer2, 0);
                        int iHashCode2 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
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
                        Updater.c(composer2, columnMeasurePolicyA, function5);
                        Updater.c(composer2, persistentCompositionLocalMapN2, function6);
                        cj.s(iHashCode2, composer2, function7, composer2, function8);
                        Updater.c(composer2, modifierC2, function9);
                        TextKt.c(StringResources_androidKt.c(composer2, R.string.history), PaddingKt.m(ModifierExtKt.e(new DTFunctionNameModifier("AICompanionHistoryScreen$lambda$5"), "aiCompanion_historyTitle_text"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).d, 5), LVAppDesignKitTheme.c(composer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).f48428i, composer2, 0, 0, 131064);
                        Composer composer3 = composer2;
                        composer3.L(-1514337911);
                        AICompanionViewState aICompanionViewState2 = aICompanionViewState;
                        Iterator it = aICompanionViewState2.f52898i.iterator();
                        while (true) {
                            boolean zHasNext = it.hasNext();
                            final HapticFeedback hapticFeedback3 = hapticFeedback;
                            Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                            if (!zHasNext) {
                                composer3.F();
                                SpacerKt.a(composer3, PaddingKt.m(new DTFunctionNameModifier("AICompanionHistoryScreen$lambda$5"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).n, 7));
                                composer3.r();
                                Modifier modifierM = PaddingKt.m(ModifierExtKt.e(new DTFunctionNameModifier("AICompanionHistoryScreen$lambda$5"), "aiCompanion_historyNewConversation_button"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).g, 7);
                                Alignment.f8582a.getClass();
                                Modifier modifierG = BoxScopeInstance.f4938a.g(modifierM, Alignment.Companion.f8588h);
                                long j2 = LVAppDesignKitTheme.c(composer3).f48361b.v;
                                long jB = Color.b(LVAppDesignKitTheme.h(composer3).f48403c, LVAppDesignKitTheme.c(composer3).f48361b.v);
                                long jB2 = Color.b(LVAppDesignKitTheme.h(composer3).f48404e, LVAppDesignKitTheme.c(composer3).f48361b.v);
                                long j3 = LVAppDesignKitTheme.c(composer3).f48361b.y;
                                long j4 = LVAppDesignKitTheme.c(composer3).f48361b.y;
                                TextStyle textStyle = LVAppDesignKitTheme.n(composer3).f48428i;
                                PaddingValuesImpl paddingValuesImplB = PaddingKt.b(LVAppDesignKitTheme.d(composer3).o, LVAppDesignKitTheme.d(composer3).f48383a);
                                PaddingValuesImpl paddingValuesImplA = PaddingKt.a(LVAppDesignKitTheme.d(composer3).l);
                                float f2 = LVAppDesignKitTheme.d(composer3).v;
                                ConfigurationButton.Border.None none = ConfigurationButton.Border.None.f48541a;
                                ConfigurationButton configurationButton = new ConfigurationButton(j2, jB, jB2, j3, j4, textStyle, paddingValuesImplB, paddingValuesImplA, none, none, none, 0.95f, f2, null);
                                int i4 = LVAppDesignKitTheme.g(composer3).N1;
                                String strC = StringResources_androidKt.c(composer3, R.string.companion_new_conversation);
                                Integer numValueOf2 = Integer.valueOf(i4);
                                boolean zY2 = composer3.y(hapticFeedback3);
                                Function0 function10 = function0;
                                boolean zK = zY2 | composer3.K(function10);
                                Object objX3 = composer3.x();
                                if (zK || objX3 == composer$Companion$Empty$3) {
                                    objX3 = new f(hapticFeedback3, function10, 1);
                                    composer3.q(objX3);
                                }
                                LVButtonKt.b(0, 496, composer3, modifierG, configurationButton, numValueOf2, null, strC, (Function0) objX3, false, false, false);
                                composer3.r();
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                break;
                            }
                            final ChatHistoryUiModel chatHistoryUiModel = (ChatHistoryUiModel) it.next();
                            MutableState mutableState4 = mutableState;
                            final boolean zC = Intrinsics.c((String) mutableState4.getF10755b(), chatHistoryUiModel.f52899a);
                            Modifier modifierK2 = PaddingKt.k(tr.d("AICompanionHistoryScreen$lambda$5", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).d, 1);
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                            int iHashCode3 = Long.hashCode(composer3.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer3.n();
                            Modifier modifierC3 = ComposedModifierKt.c(composer3, modifierK2);
                            ComposeUiNode.b0.getClass();
                            Function0 function11 = ComposeUiNode.Companion.f9641b;
                            if (composer3.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer3.B();
                            if (composer3.getS()) {
                                composer3.C(function11);
                            } else {
                                composer3.o();
                            }
                            Function2 function12 = ComposeUiNode.Companion.f9644f;
                            Updater.c(composer3, measurePolicyD2, function12);
                            Function2 function13 = ComposeUiNode.Companion.f9643e;
                            Updater.c(composer3, persistentCompositionLocalMapN3, function13);
                            Integer numValueOf3 = Integer.valueOf(iHashCode3);
                            Function2 function14 = ComposeUiNode.Companion.g;
                            Updater.c(composer3, numValueOf3, function14);
                            Function1 function15 = ComposeUiNode.Companion.f9645h;
                            Updater.b(composer3, function15);
                            Function2 function16 = ComposeUiNode.Companion.d;
                            DTFunctionNameModifier dTFunctionNameModifierF = defpackage.a.f(composer3, modifierC3, function16, "AICompanionHistoryScreen$lambda$5");
                            AICompanionViewState aICompanionViewState3 = aICompanionViewState2;
                            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer3, 0);
                            int iHashCode4 = Long.hashCode(composer3.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer3.n();
                            Modifier modifierC4 = ComposedModifierKt.c(composer3, dTFunctionNameModifierF);
                            if (composer3.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer3.B();
                            if (composer3.getS()) {
                                composer3.C(function11);
                            } else {
                                composer3.o();
                            }
                            Updater.c(composer3, columnMeasurePolicyA2, function12);
                            Updater.c(composer3, persistentCompositionLocalMapN4, function13);
                            cj.s(iHashCode4, composer3, function14, composer3, function15);
                            Updater.c(composer3, modifierC4, function16);
                            Modifier modifierE = ModifierExtKt.e(new DTFunctionNameModifier("AICompanionHistoryScreen$lambda$5"), "aiCompanion_historyItem_text");
                            String str = chatHistoryUiModel.f52899a;
                            boolean zY3 = composer3.y(hapticFeedback3) | composer3.K(chatHistoryUiModel) | composer3.b(zC);
                            final Function1 function17 = function1;
                            boolean zK2 = zY3 | composer3.K(function17);
                            Object objX4 = composer3.x();
                            if (zK2 || objX4 == composer$Companion$Empty$3) {
                                Composer$Companion$Empty$1 composer$Companion$Empty$4 = composer$Companion$Empty$3;
                                composer$Companion$Empty$2 = composer$Companion$Empty$4;
                                mutableState2 = mutableState4;
                                obj4 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.aicompanion.components.history.AICompanionHistoryScreenKt$AICompanionHistoryScreen$3$1$1$1$1$1$1$1
                                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                        HapticFeedback hapticFeedback4 = hapticFeedback3;
                                        ChatHistoryUiModel chatHistoryUiModel2 = chatHistoryUiModel;
                                        MutableState mutableState5 = mutableState2;
                                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, new n0(hapticFeedback4, chatHistoryUiModel2, mutableState5, 1), null, new s0(zC, function17, chatHistoryUiModel2, mutableState5, 0), continuation, 5);
                                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                    }
                                };
                                hapticFeedback2 = hapticFeedback3;
                                composer3.q(obj4);
                            } else {
                                hapticFeedback2 = hapticFeedback3;
                                obj4 = objX4;
                                mutableState2 = mutableState4;
                                composer$Companion$Empty$2 = composer$Companion$Empty$3;
                            }
                            Modifier modifierD2 = SizeKt.d(SuspendingPointerInputFilterKt.a(modifierE, str, (PointerInputEventHandler) obj4), 1.0f);
                            if (zC != 0) {
                                dTFunctionNameModifier = PaddingKt.i(BackgroundKt.b(pq0.j(1711335334, composer3, "AICompanionHistoryScreen$lambda$5"), LVAppDesignKitTheme.c(composer3).f48361b.f48375b, LVAppDesignKitTheme.j(composer3).d), LVAppDesignKitTheme.l(composer3).f48416e);
                                composer3.F();
                            } else {
                                composer3.L(1711830528);
                                composer3.F();
                                dTFunctionNameModifier = new DTFunctionNameModifier("AICompanionHistoryScreen$lambda$5");
                            }
                            Modifier modifierO = modifierD2.o(dTFunctionNameModifier);
                            String str2 = chatHistoryUiModel.f52900b;
                            TextStyle textStyle2 = LVAppDesignKitTheme.n(composer3).f48426f;
                            long j5 = LVAppDesignKitTheme.c(composer3).f48361b.f48382k;
                            TextOverflow.f10989a.getClass();
                            MutableState mutableState5 = mutableState2;
                            Composer composer4 = composer3;
                            Composer$Companion$Empty$1 composer$Companion$Empty$5 = composer$Companion$Empty$2;
                            TextKt.c(str2, modifierO, j5, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle2, composer4, 0, 24960, 110584);
                            composer3 = composer4;
                            if (zC) {
                                Modifier modifierH = pq0.h(1.0f, 1712589842, composer3, "AICompanionHistoryScreen$lambda$5");
                                MeasurePolicy measurePolicyD3 = BoxKt.d(Alignment.Companion.g, false);
                                int iHashCode5 = Long.hashCode(composer3.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer3.n();
                                Modifier modifierC5 = ComposedModifierKt.c(composer3, modifierH);
                                if (composer3.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer3.B();
                                if (composer3.getS()) {
                                    composer3.C(function11);
                                } else {
                                    composer3.o();
                                }
                                Updater.c(composer3, measurePolicyD3, function12);
                                Updater.c(composer3, persistentCompositionLocalMapN5, function13);
                                cj.s(iHashCode5, composer3, function14, composer3, function15);
                                Updater.c(composer3, modifierC5, function16);
                                float f3 = LVAppDesignKitTheme.d(composer3).F - LVAppDesignKitTheme.l(composer3).f48417f;
                                Dp.Companion companion = Dp.f11004c;
                                long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f3)) << 32) | (((long) Float.floatToRawIntBits(-LVAppDesignKitTheme.l(composer3).f48416e)) & BodyPartID.bodyIdMax);
                                int i5 = DpOffset.f11007b;
                                Modifier modifierB = BackgroundKt.b(SizeKt.u(new DTFunctionNameModifier("AICompanionHistoryScreen$lambda$5"), LVAppDesignKitTheme.d(composer3).F, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.c(composer3).f48361b.f48375b, LVAppDesignKitTheme.j(composer3).d);
                                RoundedCornerShape roundedCornerShape = LVAppDesignKitTheme.j(composer3).d;
                                Object objX5 = composer3.x();
                                if (objX5 == composer$Companion$Empty$5) {
                                    mutableState3 = mutableState5;
                                    z = true;
                                    objX5 = new d0(1, mutableState3);
                                    composer3.q(objX5);
                                } else {
                                    mutableState3 = mutableState5;
                                    z = true;
                                }
                                HapticFeedback hapticFeedback4 = hapticFeedback2;
                                AndroidMenu_androidKt.a(true, (Function0) objX5, modifierB, jFloatToRawIntBits, null, null, roundedCornerShape, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(-1750385668, new p0(hapticFeedback4, function2, chatHistoryUiModel, aICompanionViewState3, mutableState3, clipboardManager, 0), composer3), composer3, 54, 1968);
                                composer3.r();
                                composer3.F();
                            } else {
                                composer3.L(1719091968);
                                composer3.F();
                            }
                            composer3.r();
                            composer3.r();
                            aVar = this;
                            aICompanionViewState2 = aICompanionViewState3;
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, 805306422, 508);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w((Object) aICompanionViewState, (Object) function0, function1, function2, (Object) function3, i2, 1);
        }
    }
}
