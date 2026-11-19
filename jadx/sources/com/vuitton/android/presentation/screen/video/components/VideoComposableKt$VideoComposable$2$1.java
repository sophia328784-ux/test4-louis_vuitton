package com.vuitton.android.presentation.screen.video.components;

import androidx.lifecycle.Lifecycle;
import androidx.media3.exoplayer.ExoPlayer;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.video.components.VideoComposableKt$VideoComposable$2$1", f = "VideoComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class VideoComposableKt$VideoComposable$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Lifecycle.Event f65430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ExoPlayer f65431c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoComposableKt$VideoComposable$2$1(Lifecycle.Event event, ExoPlayer exoPlayer, Continuation continuation) {
        super(2, continuation);
        this.f65430b = event;
        this.f65431c = exoPlayer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new VideoComposableKt$VideoComposable$2$1(this.f65430b, this.f65431c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((VideoComposableKt$VideoComposable$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        Lifecycle.Event event = Lifecycle.Event.ON_PAUSE;
        ExoPlayer exoPlayer = this.f65431c;
        Lifecycle.Event event2 = this.f65430b;
        if (event2 == event) {
            exoPlayer.pause();
        }
        if (event2 == Lifecycle.Event.ON_RESUME) {
            exoPlayer.c();
        }
        return Unit.f71739a;
    }
}
