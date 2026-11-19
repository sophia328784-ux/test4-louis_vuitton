package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.VideoPreloadWorker", f = "VideoPreloadWorker.kt", l = {70}, m = "doWork", v = 2)
final class VideoPreloadWorker$doWork$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f48168b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VideoPreloadWorker f48169c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoPreloadWorker$doWork$1(VideoPreloadWorker videoPreloadWorker, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48169c = videoPreloadWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48168b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f48169c.c(this);
    }
}
