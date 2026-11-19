package com.vuitton.android.presentation.screen.video.components;

import android.net.Uri;
import androidx.compose.runtime.MutableState;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.ExoPlayer;
import com.google.common.collect.ImmutableList;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.screen.video.models.VideoViewState;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.video.components.VideoComposableKt$VideoComposable$1$1", f = "VideoComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class VideoComposableKt$VideoComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ExoPlayer f65428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f65429c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoComposableKt$VideoComposable$1$1(ExoPlayer exoPlayer, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f65428b = exoPlayer;
        this.f65429c = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new VideoComposableKt$VideoComposable$1$1(this.f65428b, this.f65429c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((VideoComposableKt$VideoComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutableState mutableState = this.f65429c;
        String str = ((VideoViewState) mutableState.getF10755b()).f65441a;
        if (str != null) {
            MediaItem.Builder builder = new MediaItem.Builder();
            builder.b(str);
            if (StringExtKt.a(((VideoViewState) mutableState.getF10755b()).f65442b)) {
                String str2 = ((VideoViewState) mutableState.getF10755b()).f65442b;
                if (str2 == null) {
                    str2 = "";
                }
                MediaItem.SubtitleConfiguration.Builder builder2 = new MediaItem.SubtitleConfiguration.Builder(Uri.parse(str2));
                builder2.f13874c = Locale.getDefault().getLanguage();
                builder2.f13873b = MimeTypes.p("text/vtt");
                builder2.d = 1;
                builder.f13800h = ImmutableList.t(CollectionsKt.O(new MediaItem.SubtitleConfiguration(builder2)));
            }
            MediaItem mediaItemA = builder.a();
            ExoPlayer exoPlayer = this.f65428b;
            exoPlayer.R(mediaItemA);
            exoPlayer.f();
            exoPlayer.R(builder.a());
            exoPlayer.seekTo(((VideoViewState) mutableState.getF10755b()).f65443c);
            exoPlayer.P(true);
        }
        return Unit.f71739a;
    }
}
