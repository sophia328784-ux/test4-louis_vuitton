package com.vuitton.android.presentation.screen.video;

import com.vuitton.android.presentation.screen.video.models.VideoViewState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/presentation/screen/video/models/VideoViewState;", "videoUrl", "", "subtitlesUrl", "videoPlayPosition", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.video.VideoViewModelImpl$viewState$1", f = "VideoViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
public final class VideoViewModelImpl$viewState$1 extends SuspendLambda implements Function4<String, String, Long, Continuation<? super VideoViewState>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ String f65423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ String f65424c;
    public /* synthetic */ long d;

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        long jLongValue = ((Number) obj3).longValue();
        VideoViewModelImpl$viewState$1 videoViewModelImpl$viewState$1 = new VideoViewModelImpl$viewState$1(4, (Continuation) obj4);
        videoViewModelImpl$viewState$1.f65423b = (String) obj;
        videoViewModelImpl$viewState$1.f65424c = (String) obj2;
        videoViewModelImpl$viewState$1.d = jLongValue;
        return videoViewModelImpl$viewState$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str = this.f65423b;
        String str2 = this.f65424c;
        long j2 = this.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        return new VideoViewState(str, str2, j2);
    }
}
