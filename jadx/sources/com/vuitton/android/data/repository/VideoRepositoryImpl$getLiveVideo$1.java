package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.VideoRepositoryImpl", f = "VideoRepositoryImpl.kt", l = {19}, m = "getLiveVideo-Tkf79N4", v = 2)
final class VideoRepositoryImpl$getLiveVideo$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f48173b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VideoRepositoryImpl f48174c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoRepositoryImpl$getLiveVideo$1(VideoRepositoryImpl videoRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48174c = videoRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48173b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f48174c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
