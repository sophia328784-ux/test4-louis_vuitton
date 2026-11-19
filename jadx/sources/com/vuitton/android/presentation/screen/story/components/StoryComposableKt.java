package com.vuitton.android.presentation.screen.story.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotLongStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.AccessibilityExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.compose.components.AccessibilityPagerButtonsKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.screen.story.models.StoryCloseUiModel;
import com.vuitton.android.presentation.screen.story.models.StoryViewState;
import defpackage.cj;
import defpackage.cl0;
import defpackage.e90;
import defpackage.kj0;
import defpackage.l01;
import defpackage.n00;
import defpackage.o60;
import defpackage.p01;
import defpackage.rl;
import defpackage.sq0;
import defpackage.tf0;
import defpackage.tr;
import defpackage.v11;
import defpackage.w11;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0006²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002"}, d2 = {"", "currentPage", "", "currentAssetDuration", "", "isOnPause", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoryComposableKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f65131a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f65131a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(StoryViewState storyViewState, Function1 function1, final Function1 function2, final Function0 function0, final Function0 function3, Composer composer, int i2) {
        char c2;
        int i3;
        MutableIntState mutableIntState;
        CoroutineScope coroutineScope;
        PagerState pagerState;
        Function1 function4;
        MutableState mutableState;
        String str;
        GapComposer gapComposer;
        Function0 function5;
        boolean z;
        Function0 function6;
        boolean zA;
        boolean z2;
        boolean z3;
        storyViewState.getClass();
        function1.getClass();
        function2.getClass();
        function0.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-196245179);
        Applier applier = gapComposerH.f7976a;
        int i4 = 2;
        int i5 = i2 | (gapComposerH.y(storyViewState) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192);
        if (gapComposerH.p(i5 & 1, (i5 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final int size = storyViewState.d.size();
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            final CoroutineScope coroutineScope2 = (CoroutineScope) objX;
            boolean zD = gapComposerH.d(size);
            Object objX2 = gapComposerH.x();
            if (zD || objX2 == composer$Companion$Empty$1) {
                objX2 = new e90(size, i4);
                gapComposerH.q(objX2);
            }
            final PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX2, gapComposerH, 0, 3);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotIntStateKt.a(0);
                gapComposerH.q(objX3);
            }
            final MutableIntState mutableIntState2 = (MutableIntState) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotLongStateKt.a(0L);
                gapComposerH.q(objX4);
            }
            MutableLongState mutableLongState = (MutableLongState) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX5);
            }
            MutableState mutableState2 = (MutableState) objX5;
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(storyViewState);
            Object objX6 = gapComposerH.x();
            if (zY || objX6 == composer$Companion$Empty$1) {
                objX6 = new StoryComposableKt$StoryComposable$1$1(storyViewState, mutableState2, null);
                gapComposerH.q(objX6);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX6);
            boolean zY2 = ((57344 & i5) == 16384) | gapComposerH.y(coroutineScope2) | gapComposerH.K(pagerStateB);
            Object objX7 = gapComposerH.x();
            if (zY2 || objX7 == composer$Companion$Empty$1) {
                objX7 = new Function0() { // from class: com.vuitton.android.presentation.screen.story.components.a
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        function3.mo47invoke();
                        MutableIntState mutableIntState3 = mutableIntState2;
                        if (mutableIntState3.f() > 0) {
                            mutableIntState3.i(mutableIntState3.f() - 1);
                            BuildersKt.c(coroutineScope2, null, null, new StoryComposableKt$StoryComposable$goToPreviousSlide$1$1$1(pagerStateB, mutableIntState3, null), 3);
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX7);
            }
            Function0 function7 = (Function0) objX7;
            boolean zD2 = ((i5 & 7168) == 2048) | gapComposerH.d(size) | gapComposerH.y(coroutineScope2) | gapComposerH.K(pagerStateB);
            int i6 = i5 & 896;
            boolean z4 = zD2 | (i6 == 256);
            Object objX8 = gapComposerH.x();
            if (z4 || objX8 == composer$Companion$Empty$1) {
                c2 = 256;
                Function0 function8 = new Function0() { // from class: com.vuitton.android.presentation.screen.story.components.b
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        function0.mo47invoke();
                        MutableIntState mutableIntState3 = mutableIntState2;
                        if (mutableIntState3.f() < size - 1) {
                            mutableIntState3.i(mutableIntState3.f() + 1);
                            BuildersKt.c(coroutineScope2, null, null, new StoryComposableKt$StoryComposable$goToNextSlide$1$1$1(pagerStateB, mutableIntState3, null), 3);
                        } else {
                            function2.invoke(StoryCloseUiModel.LAST_SLIDE_CHECKED);
                        }
                        return Unit.f71739a;
                    }
                };
                i3 = size;
                mutableIntState = mutableIntState2;
                coroutineScope = coroutineScope2;
                pagerState = pagerStateB;
                function4 = function2;
                gapComposerH.q(function8);
                objX8 = function8;
            } else {
                coroutineScope = coroutineScope2;
                pagerState = pagerStateB;
                mutableIntState = mutableIntState2;
                c2 = 256;
                i3 = size;
                function4 = function2;
            }
            Function0 function9 = (Function0) objX8;
            MutableState mutableStateL = SnapshotStateKt.l(gapComposerH.k(LocalLifecycleOwnerKt.f13562a), gapComposerH);
            boolean zK = gapComposerH.K(mutableStateL) | gapComposerH.y(storyViewState);
            Object objX9 = gapComposerH.x();
            int i7 = 15;
            if (zK || objX9 == composer$Companion$Empty$1) {
                objX9 = new cl0(mutableStateL, storyViewState, mutableState2, i7);
                gapComposerH.q(objX9);
            }
            EffectsKt.c(unit, (Function1) objX9, gapComposerH);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("StoryComposable");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = dTFunctionNameModifier.o(fillElement);
            Object objX10 = gapComposerH.x();
            if (objX10 == composer$Companion$Empty$1) {
                objX10 = new l01(15);
                gapComposerH.q(objX10);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierO, false, (Function1) objX10);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            int i8 = i3;
            Function0 function10 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function10);
            } else {
                gapComposerH.o();
            }
            Function2 function11 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function11);
            Function2 function12 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function12);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function13 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function13);
            Function1 function14 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function14);
            Function2 function15 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function15);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("StoryComposable");
            Object objX11 = gapComposerH.x();
            if (objX11 == composer$Companion$Empty$1) {
                objX11 = new l01(13);
                gapComposerH.q(objX11);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(dTFunctionNameModifier2, false, (Function1) objX11);
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(299438366, new rl(storyViewState, function1, mutableState2, mutableIntState, mutableLongState, 8), gapComposerH);
            PagerState pagerState2 = pagerState;
            Function2 function16 = function13;
            MutableIntState mutableIntState3 = mutableIntState;
            PagerKt.a(pagerState2, modifierB2, null, null, 1, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, null, null, null, composableLambdaImplB, gapComposerH, 100687872, 24576, 16108);
            Modifier modifierE = WindowInsetsPadding_androidKt.e(new DTFunctionNameModifier("StoryComposable"));
            Object objX12 = gapComposerH.x();
            if (objX12 == composer$Companion$Empty$1) {
                objX12 = new l01(14);
                gapComposerH.q(objX12);
            }
            Modifier modifierB3 = SemanticsModifierKt.b(modifierE, false, (Function1) objX12);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB3);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function10);
            } else {
                gapComposerH.o();
            }
            Function2 function17 = function11;
            Updater.c(gapComposerH, columnMeasurePolicyA, function17);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function12);
            cj.t(iHashCode2, gapComposerH, function16, gapComposerH, function14);
            Updater.c(gapComposerH, modifierC2, function15);
            int iF = mutableIntState3.f();
            boolean zA2 = pagerState2.f5765k.a();
            long jB = mutableLongState.b();
            boolean zBooleanValue = ((Boolean) mutableState2.getF10755b()).booleanValue();
            boolean zK2 = gapComposerH.K(function9);
            Object objX13 = gapComposerH.x();
            if (zK2 || objX13 == composer$Companion$Empty$1) {
                objX13 = new sq0(function9, 28);
                gapComposerH.q(objX13);
            }
            Function0 function18 = function9;
            StoryProgressBarKt.a(i8, iF, zA2, jB, zBooleanValue, coroutineScope, (Function0) objX13, gapComposerH, 0);
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Modifier modifierK = PaddingKt.k(tr.d("StoryComposable", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, vertical, gapComposerH, 48);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function10);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function17);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function12);
            cj.t(iHashCode3, gapComposerH, function16, gapComposerH, function14);
            Updater.c(gapComposerH, modifierC3, function15);
            ConfigurationIconButton configurationIconButton = LVAppDesignKitTheme.f(gapComposerH).f48477a;
            int i9 = LVAppDesignKitTheme.g(gapComposerH).q;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_close);
            boolean z5 = i6 == 256;
            Object objX14 = gapComposerH.x();
            if (z5 || objX14 == composer$Companion$Empty$1) {
                objX14 = new tf0(function4, 24);
                gapComposerH.q(objX14);
            }
            LVIconButtonKt.b(null, configurationIconButton, i9, null, strC, false, 0, false, false, (Function0) objX14, gapComposerH, 0, 0, 1001);
            StoryHeaderKt.a(null, storyViewState.f65175c, gapComposerH, 0);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            boolean z6 = storyViewState.f65178h;
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            if (z6) {
                gapComposerH.L(1382459484);
                str = "StoryComposable";
                Modifier modifierM = PaddingKt.m(boxScopeInstance.g(WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier(str)), Alignment.Companion.f8590j), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                boolean z7 = !((Boolean) mutableState2.getF10755b()).booleanValue();
                Object objX15 = gapComposerH.x();
                if (objX15 == composer$Companion$Empty$1) {
                    mutableState = mutableState2;
                    z3 = false;
                    objX15 = new v11(0 == true ? 1 : 0, mutableState);
                    gapComposerH.q(objX15);
                } else {
                    mutableState = mutableState2;
                    z3 = false;
                }
                LVPlayPauseButtonKt.a(KyberEngine.KyberPolyBytes, gapComposerH, modifierM, (Function0) objX15, z7);
                gapComposerH.Z(z3);
            } else {
                function16 = function16;
                function17 = function17;
                mutableState = mutableState2;
                str = "StoryComposable";
                gapComposerH.L(1382835235);
                gapComposerH.Z(false);
            }
            if (AccessibilityExtKt.a(gapComposerH)) {
                gapComposer = gapComposerH;
                function5 = function7;
                z = false;
                function6 = function10;
                gapComposer.L(1383394723);
                gapComposer.Z(false);
            } else {
                Modifier modifierK2 = PaddingKt.k(WindowInsetsPadding_androidKt.e(ModifierExtKt.a(n00.i(gapComposerH, 1382888276, str), null, null, 7).o(fillElement)), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).m, 1);
                boolean zK3 = gapComposerH.K(function7);
                Object objX16 = gapComposerH.x();
                if (zK3 || objX16 == composer$Companion$Empty$1) {
                    objX16 = new sq0(function7, 29);
                    gapComposerH.q(objX16);
                }
                Function0 function19 = (Function0) objX16;
                boolean zK4 = gapComposerH.K(function18);
                Object objX17 = gapComposerH.x();
                if (zK4 || objX17 == composer$Companion$Empty$1) {
                    objX17 = new w11(function18, 0);
                    gapComposerH.q(objX17);
                }
                Function0 function20 = (Function0) objX17;
                Object objX18 = gapComposerH.x();
                if (objX18 == composer$Companion$Empty$1) {
                    objX18 = new v11(1, mutableState);
                    gapComposerH.q(objX18);
                }
                Function0 function21 = (Function0) objX18;
                boolean zY3 = gapComposerH.y(storyViewState);
                Object objX19 = gapComposerH.x();
                if (zY3 || objX19 == composer$Companion$Empty$1) {
                    objX19 = new p01(storyViewState, mutableState, 6);
                    gapComposerH.q(objX19);
                }
                function18 = function18;
                function5 = function7;
                gapComposer = gapComposerH;
                function6 = function10;
                z = false;
                StoryClickCatcherKt.a(modifierK2, function19, function20, function21, (Function0) objX19, gapComposer, 3072);
                gapComposer.Z(false);
            }
            if (pagerState2.o() <= 1 || !storyViewState.g) {
                gapComposer.L(-1202297804);
                zA = AccessibilityExtKt.a(gapComposer);
                gapComposer.Z(z);
            } else {
                gapComposer.L(1383411700);
                gapComposer.Z(z);
                zA = true;
            }
            if (zA) {
                Modifier modifierI = PaddingKt.i(boxScopeInstance.g(o60.c(gapComposer, 1383528643, str, 1.0f), Alignment.Companion.f8587f), LVAppDesignKitTheme.l(gapComposer).d);
                RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(Arrangement.g, vertical, gapComposer, 54);
                int iHashCode4 = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposer.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposer, modifierI);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function6);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, rowMeasurePolicyA2, function17);
                Updater.c(gapComposer, persistentCompositionLocalMapU4, function12);
                cj.t(iHashCode4, gapComposer, function16, gapComposer, function14);
                Updater.c(gapComposer, modifierC4, function15);
                GapComposer gapComposer2 = gapComposer;
                AccessibilityPagerButtonsKt.a(null, LVAppDesignKitTheme.g(gapComposer).H, null, pagerState2.k() > 0 ? true : z, StringResources_androidKt.c(gapComposer, R.string.alt_previous), function5, gapComposer2, 0, 5);
                AccessibilityPagerButtonsKt.a(null, LVAppDesignKitTheme.g(gapComposer2).I, null, (pagerState2.k() < 0 || pagerState2.k() >= pagerState2.o() - 1) ? z : true, StringResources_androidKt.c(gapComposer2, R.string.alt_next), function18, gapComposer2, 0, 5);
                gapComposerH = gapComposer2;
                z2 = true;
                gapComposerH.Z(true);
                gapComposerH.Z(z);
            } else {
                gapComposerH = gapComposer;
                z2 = true;
                gapComposerH.L(1384543459);
                gapComposerH.Z(z);
            }
            gapComposerH.Z(z2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0((Object) storyViewState, (Object) function1, (Function) function2, function0, function3, i2, 28);
        }
    }
}
