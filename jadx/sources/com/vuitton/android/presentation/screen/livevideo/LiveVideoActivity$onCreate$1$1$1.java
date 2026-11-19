package com.vuitton.android.presentation.screen.livevideo;

import android.content.Context;
import androidx.compose.runtime.MutableState;
import androidx.media3.common.BasePlayer;
import androidx.media3.common.MediaItem;
import androidx.media3.exoplayer.ExoPlayer;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoViewState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.livevideo.LiveVideoActivity$onCreate$1$1$1", f = "LiveVideoActivity.kt", l = {}, m = "invokeSuspend", v = 2)
final class LiveVideoActivity$onCreate$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f58930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LiveVideoActivity f58931c;
    public final /* synthetic */ Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f58932e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveVideoActivity$onCreate$1$1$1(String str, LiveVideoActivity liveVideoActivity, Context context, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f58930b = str;
        this.f58931c = liveVideoActivity;
        this.d = context;
        this.f58932e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LiveVideoActivity$onCreate$1$1$1(this.f58930b, this.f58931c, this.d, this.f58932e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LiveVideoActivity$onCreate$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ExoPlayer exoPlayer;
        MediaItem mediaItemO0;
        MediaItem.LocalConfiguration localConfiguration;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        String str = this.f58930b;
        if (str != null) {
            LiveVideoActivity.Companion companion = LiveVideoActivity.q;
            MutableState mutableState = this.f58932e;
            if (((LiveVideoViewState) mutableState.getF10755b()).d == null) {
                LiveVideoViewModel liveVideoViewModelB = this.f58931c.B();
                ExoPlayer exoPlayerA = new ExoPlayer.Builder(this.d).a();
                MediaItem mediaItem = MediaItem.g;
                MediaItem.Builder builder = new MediaItem.Builder();
                builder.b(str);
                ((BasePlayer) exoPlayerA).R(builder.a());
                exoPlayerA.f();
                exoPlayerA.P(true);
                liveVideoViewModelB.K6(exoPlayerA);
            } else {
                ExoPlayer exoPlayer2 = ((LiveVideoViewState) mutableState.getF10755b()).d;
                if (!String.valueOf((exoPlayer2 == null || (mediaItemO0 = exoPlayer2.O0()) == null || (localConfiguration = mediaItemO0.f13788b) == null) ? null : localConfiguration.f13848a).equals(str) && (exoPlayer = ((LiveVideoViewState) mutableState.getF10755b()).d) != null) {
                    exoPlayer.stop();
                    exoPlayer.D();
                    MediaItem mediaItem2 = MediaItem.g;
                    MediaItem.Builder builder2 = new MediaItem.Builder();
                    builder2.b(str);
                    exoPlayer.R(builder2.a());
                    exoPlayer.f();
                    exoPlayer.P(true);
                }
            }
        }
        return Unit.f71739a;
    }
}
