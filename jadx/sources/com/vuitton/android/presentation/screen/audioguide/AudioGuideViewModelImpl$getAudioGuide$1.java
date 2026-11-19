package com.vuitton.android.presentation.screen.audioguide;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl", f = "AudioGuideViewModelImpl.kt", l = {187, 194, 198, 213}, m = "getAudioGuide-gIAlu-s", v = 2)
final class AudioGuideViewModelImpl$getAudioGuide$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f52989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f52990c;
    public final /* synthetic */ AudioGuideViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f52991e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideViewModelImpl$getAudioGuide$1(AudioGuideViewModelImpl audioGuideViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = audioGuideViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f52990c = obj;
        this.f52991e |= Integer.MIN_VALUE;
        Object objYc = AudioGuideViewModelImpl.yc(this.d, null, this);
        return objYc == CoroutineSingletons.COROUTINE_SUSPENDED ? objYc : new Result(objYc);
    }
}
