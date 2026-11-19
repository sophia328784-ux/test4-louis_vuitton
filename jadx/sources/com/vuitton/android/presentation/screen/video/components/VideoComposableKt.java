package com.vuitton.android.presentation.screen.video.components;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.media3.common.Player;
import androidx.media3.datasource.DefaultHttpDataSource;
import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import com.github.druk.dnssd.DNSSD;
import com.google.common.base.Preconditions;
import com.linkplay.medialib.ContentTree;
import com.vuitton.android.presentation.compose.components.LifecycleEventKt;
import com.vuitton.android.presentation.screen.video.VideoViewModel;
import com.vuitton.android.presentation.screen.video.models.VideoViewState;
import defpackage.r31;
import defpackage.ws;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/video/models/VideoViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class VideoComposableKt {
    public static final void a(VideoViewModel videoViewModel, Function0 function0, final Function2 function2, Composer composer, int i2) {
        videoViewModel.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(579395565);
        int i3 = i2 | (gapComposerH.K(videoViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(videoViewModel.getN(), gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Lifecycle.Event eventA = LifecycleEventKt.a(gapComposerH);
            boolean zK = gapComposerH.K(context);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                DefaultHttpDataSource.Factory factory = new DefaultHttpDataSource.Factory();
                factory.f14424e = true;
                ExoPlayer.Builder builder = new ExoPlayer.Builder(context);
                DefaultMediaSourceFactory defaultMediaSourceFactory = new DefaultMediaSourceFactory(factory);
                Preconditions.q(!builder.A);
                builder.d = new ws(defaultMediaSourceFactory, 2);
                DefaultLoadControl.Builder builder2 = new DefaultLoadControl.Builder();
                Preconditions.q(!builder2.o);
                DefaultLoadControl.k(DNSSD.DNSSD_DEFAULT_TIMEOUT, 0, "backBufferDurationMs", ContentTree.ROOT_ID);
                builder2.m = DNSSD.DNSSD_DEFAULT_TIMEOUT;
                builder2.n = true;
                Preconditions.q(!builder2.o);
                builder2.o = true;
                if (builder2.f14608b == null) {
                    builder2.f14608b = new DefaultAllocator(true, 65536);
                }
                DefaultLoadControl defaultLoadControl = new DefaultLoadControl(builder2.f14608b, builder2.f14609c, builder2.d, builder2.f14610e, builder2.f14611f, builder2.g, builder2.f14612h, builder2.f14613i, builder2.f14614j, builder2.f14615k, builder2.l, builder2.m, builder2.n, builder2.f14607a);
                Preconditions.q(!builder.A);
                builder.f14637f = new ws(defaultLoadControl, 1);
                objX = builder.a();
                gapComposerH.q(objX);
            }
            ExoPlayer exoPlayer = (ExoPlayer) objX;
            exoPlayer.getClass();
            String str = ((VideoViewState) mutableStateB.getF10755b()).f65441a;
            String str2 = ((VideoViewState) mutableStateB.getF10755b()).f65442b;
            boolean zY = gapComposerH.y(exoPlayer) | gapComposerH.K(mutableStateB);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new VideoComposableKt$VideoComposable$1$1(exoPlayer, mutableStateB, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.g(str, str2, (Function2) objX2, gapComposerH);
            boolean zD = gapComposerH.d(eventA.ordinal()) | gapComposerH.y(exoPlayer);
            Object objX3 = gapComposerH.x();
            if (zD || objX3 == composer$Companion$Empty$1) {
                objX3 = new VideoComposableKt$VideoComposable$2$1(eventA, exoPlayer, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, eventA, (Function2) objX3);
            exoPlayer.Y(new Player.Listener() { // from class: com.vuitton.android.presentation.screen.video.components.VideoComposableKt$VideoComposable$3
                @Override // androidx.media3.common.Player.Listener
                public final void f0(Player player, Player.Events events) {
                    player.getClass();
                    function2.invoke(player, events);
                }
            });
            VideoPlayerComponentKt.a(exoPlayer, function0, gapComposerH, i3 & 112);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new r31(videoViewModel, function0, function2, i2, 7);
        }
    }
}
