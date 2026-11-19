package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AudioGuideRepositoryImpl", f = "AudioGuideRepositoryImpl.kt", l = {24}, m = "getAudioGuide-0E7RQCE", v = 2)
final class AudioGuideRepositoryImpl$getAudioGuide$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47315b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideRepositoryImpl f47316c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideRepositoryImpl$getAudioGuide$1(AudioGuideRepositoryImpl audioGuideRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47316c = audioGuideRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47315b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f47316c.a(null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
