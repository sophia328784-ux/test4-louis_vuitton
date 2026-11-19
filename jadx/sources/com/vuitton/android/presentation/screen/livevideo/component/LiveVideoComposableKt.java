package com.vuitton.android.presentation.screen.livevideo.component;

import androidx.activity.compose.BackHandlerKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModel;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoState;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoViewState;
import defpackage.d21;
import defpackage.i4;
import defpackage.n00;
import defpackage.py;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LiveVideoComposableKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f58960a;

        static {
            int[] iArr = new int[LiveVideoState.values().length];
            try {
                iArr[LiveVideoState.LIVE_VIDEO_PLAYING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LiveVideoState.REPLAY_VIDEO_PLAYING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LiveVideoState.LIVE_SHOW_ENDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LiveVideoState.WAITING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LiveVideoState.LOADING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f58960a = iArr;
        }
    }

    public static final void a(LiveVideoViewModel liveVideoViewModel, ExoPlayer exoPlayer, boolean z, Function0 function0, Composer composer, int i2) {
        liveVideoViewModel.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(904994385);
        int i3 = i2 | (gapComposerH.K(liveVideoViewModel) ? 4 : 2) | (gapComposerH.y(exoPlayer) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(liveVideoViewModel.getF58947h(), gapComposerH);
            boolean z2 = (i3 & 7168) == 2048;
            Object objX = gapComposerH.x();
            if (z2 || objX == Composer.Companion.f7939a) {
                objX = new py(function0, 24);
                gapComposerH.q(objX);
            }
            BackHandlerKt.a(false, (Function0) objX, gapComposerH, 0, 1);
            b((LiveVideoViewState) mutableStateB.getF10755b(), exoPlayer, z, function0, gapComposerH, i3 & 8176);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(liveVideoViewModel, exoPlayer, z, function0, i2, 11);
        }
    }

    public static final void b(LiveVideoViewState liveVideoViewState, ExoPlayer exoPlayer, boolean z, Function0 function0, Composer composer, int i2) {
        boolean z2;
        Function0 function1 = function0;
        liveVideoViewState.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1018929208);
        int i3 = i2 | (gapComposerH.y(liveVideoViewState) ? 4 : 2) | (gapComposerH.y(exoPlayer) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = BackgroundKt.b(new DTFunctionNameModifier("LiveVideoScreen").o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
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
            int i4 = WhenMappings.f58960a[liveVideoViewState.f58967a.ordinal()];
            if (i4 == 1 || i4 == 2) {
                function1 = function0;
                z2 = true;
                gapComposerH.L(319604654);
                LiveVideoPlayerComponentKt.a(exoPlayer, z, function1, gapComposerH, (i3 >> 3) & 1022);
                gapComposerH.Z(false);
            } else {
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                if (i4 == 3 || i4 == 4) {
                    TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.live_fashion_show_replay_waiting_text), boxScopeInstance.g(n00.i(gapComposerH, 319897976, "LiveVideoScreen"), Alignment.Companion.f8587f), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 0, 0, 262136);
                    gapComposerH = gapComposerH;
                    function1 = function0;
                    LVIconButtonKt.b(PaddingKt.m(WindowInsetsPadding_androidKt.b(boxScopeInstance.g(new DTFunctionNameModifier("LiveVideoScreen"), biasAlignment)), LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.f(gapComposerH).f48480e, LVAppDesignKitTheme.g(gapComposerH).q, null, StringResources_androidKt.c(gapComposerH, R.string.alt_close), false, 0, false, false, function1, gapComposerH, 0, (i3 >> 9) & 14, 1000);
                    gapComposerH.Z(false);
                    z2 = true;
                } else {
                    if (i4 != 5) {
                        throw d21.u(gapComposerH, 564496787, false);
                    }
                    ProgressViewKt.a(boxScopeInstance.g(n00.i(gapComposerH, 320924355, "LiveVideoScreen"), Alignment.Companion.f8587f), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, false, gapComposerH, 0, 4);
                    gapComposerH.Z(false);
                    function1 = function0;
                    z2 = true;
                }
            }
            gapComposerH.Z(z2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(liveVideoViewState, exoPlayer, z, function1, i2, 12);
        }
    }
}
