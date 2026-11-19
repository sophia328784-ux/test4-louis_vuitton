package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AudioGuideRepositoryImpl", f = "AudioGuideRepositoryImpl.kt", l = {60}, m = "getCompletedTracks-IoAF18A", v = 2)
final class AudioGuideRepositoryImpl$getCompletedTracks$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47317b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideRepositoryImpl f47318c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideRepositoryImpl$getCompletedTracks$1(AudioGuideRepositoryImpl audioGuideRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47318c = audioGuideRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47317b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objG = this.f47318c.g(this);
        return objG == CoroutineSingletons.COROUTINE_SUSPENDED ? objG : new Result(objG);
    }
}
