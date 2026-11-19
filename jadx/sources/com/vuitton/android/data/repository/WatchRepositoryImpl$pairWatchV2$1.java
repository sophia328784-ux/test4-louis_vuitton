package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.connectivity.watch.PairWatchV2;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.WatchRepositoryImpl", f = "WatchRepositoryImpl.kt", l = {140, 142, 149}, m = "pairWatchV2", v = 2)
final class WatchRepositoryImpl$pairWatchV2$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public InAppDispatch f48194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PairWatchV2 f48195c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ WatchRepositoryImpl f48196e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f48197f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchRepositoryImpl$pairWatchV2$1(WatchRepositoryImpl watchRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48196e = watchRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f48197f |= Integer.MIN_VALUE;
        return this.f48196e.g(null, null, this);
    }
}
