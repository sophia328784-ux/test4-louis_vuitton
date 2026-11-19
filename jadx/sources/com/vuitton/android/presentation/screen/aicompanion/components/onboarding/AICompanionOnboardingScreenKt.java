package com.vuitton.android.presentation.screen.aicompanion.components.onboarding;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.gestures.snapping.LazyListSnapLayoutInfoProviderKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarStyle;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarType;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVFloatingTopBarKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionOnboardingUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import defpackage.a;
import defpackage.a1;
import defpackage.c1;
import defpackage.d1;
import defpackage.e1;
import defpackage.i1;
import defpackage.n0;
import defpackage.n00;
import defpackage.pq0;
import defpackage.z;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "textAlpha", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AICompanionOnboardingScreenKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f52869a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f52870b = 0;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52886a;

        static {
            int[] iArr = new int[FeatureThemeUiModel.values().length];
            try {
                iArr[FeatureThemeUiModel.DARK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FeatureThemeUiModel.LIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f52886a = iArr;
        }
    }

    static {
        Duration.Companion companion = Duration.INSTANCE;
        f52869a = DurationKt.g(1, DurationUnit.SECONDS);
    }

    public static final void a(Modifier modifier, AICompanionViewState aICompanionViewState, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        Function0 function2 = function1;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "AICompanionOnboardingScreen");
        }
        aICompanionViewState.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-2015594165);
        int i3 = i2 | 6 | (gapComposerH.y(aICompanionViewState) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AICompanionOnboardingScreen");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            AICompanionOnboardingUiModel aICompanionOnboardingUiModel = aICompanionViewState.f52893b;
            String str = aICompanionOnboardingUiModel != null ? aICompanionOnboardingUiModel.f52889a : null;
            if (str == null) {
                str = "";
            }
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.e(new a1(lazyListStateA, 0));
                gapComposerH.q(objX);
            }
            State state = (State) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new LvExoPlayer(context);
                gapComposerH.q(objX2);
            }
            LvExoPlayer lvExoPlayer = (LvExoPlayer) objX2;
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(lvExoPlayer);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new c1(lvExoPlayer, 0);
                gapComposerH.q(objX3);
            }
            EffectsKt.c(unit, (Function1) objX3, gapComposerH);
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = CompletableDeferredKt.a();
                gapComposerH.q(objX4);
            }
            CompletableDeferred completableDeferred = (CompletableDeferred) objX4;
            boolean zY2 = gapComposerH.y(lvExoPlayer) | gapComposerH.y(completableDeferred) | gapComposerH.K(str);
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new n0(lvExoPlayer, str, completableDeferred, 2);
                gapComposerH.q(objX5);
            }
            EffectsKt.b(lvExoPlayer, str, (Function1) objX5, gapComposerH);
            boolean zY3 = gapComposerH.y(completableDeferred) | gapComposerH.K(lazyListStateA);
            Object objX6 = gapComposerH.x();
            if (zY3 || objX6 == composer$Companion$Empty$1) {
                objX6 = new AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1(lazyListStateA, completableDeferred, null);
                gapComposerH.q(objX6);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX6);
            Modifier modifierE2 = ModifierExtKt.e(dTFunctionNameModifier, "aiCompanion_onboarding_view");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = modifierE2.o(fillElement);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
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
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Modifier modifierI = pq0.i("AICompanionOnboardingScreen", fillElement);
            int i4 = 0;
            TargetedFlingBehavior targetedFlingBehaviorC = LazyListSnapLayoutInfoProviderKt.c(lazyListStateA, gapComposerH, 0);
            boolean zY4 = gapComposerH.y(aICompanionViewState) | gapComposerH.y(lvExoPlayer) | gapComposerH.K(str) | ((i3 & 7168) == 2048);
            Object objX7 = gapComposerH.x();
            if (zY4 || objX7 == composer$Companion$Empty$1) {
                d1 d1Var = new d1(aICompanionViewState, state, lvExoPlayer, str, function1, 0);
                function2 = function1;
                gapComposerH.q(d1Var);
                objX7 = d1Var;
            } else {
                function2 = function1;
            }
            modifierE = dTFunctionNameModifier;
            LazyDslKt.a(modifierI, lazyListStateA, null, null, null, targetedFlingBehaviorC, false, null, (Function1) objX7, gapComposerH, 12582918, 316);
            gapComposer = gapComposerH;
            LVFloatingTopBarKt.a(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("AICompanionOnboardingScreen"), Alignment.Companion.f8585c), FloatingTopBarType.Close, FloatingTopBarStyle.Secondary, null, StringResources_androidKt.c(gapComposer, R.string.alt_close), function0, ComposableLambdaKt.b(335867934, new e1(function2, i4), gapComposer), null, gapComposer, ((i3 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | 1573296, 136);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        Modifier modifier2 = modifierE;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z((Object) modifier2, (Object) aICompanionViewState, function0, function2, i2, 1);
        }
    }

    public static final void b(final LazyItemScope lazyItemScope, final float f2, final Color color, final Color color2, Composer composer, final int i2) {
        int i3;
        GapComposer gapComposer;
        long j2;
        GapComposer gapComposerH = composer.h(144288914);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(lazyItemScope) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.c(f2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(color) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(color2) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = lazyItemScope.a(new DTFunctionNameModifier("OnboardingTitleItem-cLQcjuY"));
            if (color2 == null) {
                gapComposerH.L(1222701278);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1222699728);
                gapComposerH.Z(false);
                j2 = color2.f8872a;
            }
            Modifier modifierB = BackgroundKt.b(modifierA, j2, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Modifier modifierA2 = AlphaKt.a(PaddingKt.k(n00.f(gapComposerH, modifierC, ComposeUiNode.Companion.d, "OnboardingTitleItem-cLQcjuY", "aiCompanion_onboardingTitle_text"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), f2);
            String upperCase = StringResources_androidKt.c(gapComposerH, R.string.companion_welcome_title).toUpperCase(Locale.ROOT);
            upperCase.getClass();
            TextAlign.f10959b.getClass();
            int i4 = TextAlign.f10961e;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48424c;
            gapComposerH.L(1695577031);
            gapComposerH.Z(false);
            TextKt.c(upperCase, modifierA2, color.f8872a, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: b1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    AICompanionOnboardingScreenKt.b(lazyItemScope, f2, color, color2, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void c(LazyItemScope lazyItemScope, LvExoPlayer lvExoPlayer, String str, Function0 function0, Composer composer, int i2) {
        int i3;
        Function0 function1;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(1353845563);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(lazyItemScope) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(lvExoPlayer) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            function1 = function0;
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        } else {
            function1 = function0;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LvVideoPlayerKt.b(lazyItemScope.a(new DTFunctionNameModifier("OnboardingVideoItem")), lvExoPlayer.f50900a, str, null, null, true, null, null, false, false, false, false, null, false, 0, null, null, function1, null, null, null, gapComposer, (i3 & 896) | 100859904, (i3 << 12) & 29360128, 0, 1965784);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(lazyItemScope, lvExoPlayer, str, function0, i2, 0);
        }
    }
}
