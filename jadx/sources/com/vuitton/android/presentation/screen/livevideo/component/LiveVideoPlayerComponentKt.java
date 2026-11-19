package com.vuitton.android.presentation.screen.livevideo.component;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
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
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import defpackage.ag;
import defpackage.ca0;
import defpackage.da0;
import defpackage.o90;
import defpackage.pq0;
import defpackage.r1;
import defpackage.vd;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0007²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0006\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002"}, d2 = {"", "shouldDisplayClose", "showPlayPauseButton", "isLivePlaying", "isSoundMuted", "Landroidx/lifecycle/Lifecycle$Event;", "lifecycle", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LiveVideoPlayerComponentKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f58965a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f58965a = iArr;
        }
    }

    public static final void a(ExoPlayer exoPlayer, boolean z, Function0 function0, Composer composer, int i2) {
        int i3;
        Function0 function1;
        MutableState mutableState;
        MutableState mutableState2;
        boolean z2;
        FiniteAnimationSpec finiteAnimationSpec;
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1271626268);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(exoPlayer) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            function1 = function0;
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        } else {
            function1 = function0;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState3 = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState4 = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX3);
            }
            MutableState mutableState5 = (MutableState) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX4);
            }
            MutableState mutableState6 = (MutableState) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = SnapshotStateKt.g(Lifecycle.Event.ON_CREATE);
                gapComposerH.q(objX5);
            }
            MutableState mutableState7 = (MutableState) objX5;
            LifecycleOwner lifecycleOwner = (LifecycleOwner) gapComposerH.k(LocalLifecycleOwnerKt.f13562a);
            boolean zY = gapComposerH.y(lifecycleOwner);
            Object objX6 = gapComposerH.x();
            if (zY || objX6 == composer$Companion$Empty$1) {
                objX6 = new o90(lifecycleOwner, mutableState7, 1);
                gapComposerH.q(objX6);
            }
            EffectsKt.c(lifecycleOwner, (Function1) objX6, gapComposerH);
            Boolean bool = (Boolean) mutableState4.getF10755b();
            bool.booleanValue();
            Object objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = new LiveVideoPlayerComponentKt$LiveVideoPlayerComponent$2$1(mutableState4, null);
                gapComposerH.q(objX7);
            }
            EffectsKt.e(gapComposerH, bool, (Function2) objX7);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LiveVideoPlayerComponent");
            FillElement fillElement = SizeKt.f5052c;
            int i4 = i3 & 112;
            Modifier modifierB = ModifierExtKt.b(BackgroundKt.b(dTFunctionNameModifier.o(fillElement), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a), z, new r1(7, mutableState4), gapComposerH, i4);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            int i5 = i3;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Modifier modifierB2 = WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("LiveVideoPlayerComponent").o(fillElement));
            boolean zY2 = gapComposerH.y(exoPlayer) | (i4 == 32);
            Object objX8 = gapComposerH.x();
            if (zY2 || objX8 == composer$Companion$Empty$1) {
                objX8 = new ag(exoPlayer, z, mutableState3, 5);
                gapComposerH.q(objX8);
            }
            Function1 function3 = (Function1) objX8;
            Object objX9 = gapComposerH.x();
            if (objX9 == composer$Companion$Empty$1) {
                mutableState = mutableState5;
                mutableState2 = mutableState4;
                objX9 = new ca0(mutableState7, mutableState2, mutableState, 0);
                gapComposerH.q(objX9);
            } else {
                mutableState = mutableState5;
                mutableState2 = mutableState4;
            }
            MutableState mutableState8 = mutableState2;
            AndroidView_androidKt.a(function3, modifierB2, (Function1) objX9, gapComposerH, KyberEngine.KyberPolyBytes, 0);
            if (((Boolean) mutableState3.getF10755b()).booleanValue() || ((Boolean) mutableState8.getF10755b()).booleanValue()) {
                gapComposerH.L(-893100339);
                int i6 = (i5 >> 6) & 14;
                z2 = true;
                Function0 function4 = function1;
                finiteAnimationSpec = null;
                LVIconButtonKt.b(PaddingKt.m(WindowInsetsPadding_androidKt.b(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LiveVideoPlayerComponent"), biasAlignment)), LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.f(gapComposerH).f48480e, LVAppDesignKitTheme.g(gapComposerH).q, null, StringResources_androidKt.c(gapComposerH, R.string.alt_close), false, 0, false, false, function4, gapComposerH, 0, i6, 1000);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-892514780);
                gapComposerH.Z(false);
                finiteAnimationSpec = null;
                z2 = true;
            }
            GapComposer gapComposer = gapComposerH;
            AnimatedVisibilityKt.e(((Boolean) mutableState8.getF10755b()).booleanValue(), pq0.i("LiveVideoPlayerComponent", fillElement), EnterExitTransitionKt.f(finiteAnimationSpec, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), EnterExitTransitionKt.h(finiteAnimationSpec, 3), null, ComposableLambdaKt.b(1650004166, new da0(exoPlayer, mutableState, mutableState8, mutableState6, 0), gapComposerH), gapComposer, 200112, 16);
            gapComposerH = gapComposer;
            gapComposerH.Z(z2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vd(exoPlayer, z, function0, i2, 1);
        }
    }
}
