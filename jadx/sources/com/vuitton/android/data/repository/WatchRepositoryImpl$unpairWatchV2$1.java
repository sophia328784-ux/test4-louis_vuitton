package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.connectivity.watch.UnpairWatchV2;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.WatchRepositoryImpl", f = "WatchRepositoryImpl.kt", l = {115, 117}, m = "unpairWatchV2", v = 2)
final class WatchRepositoryImpl$unpairWatchV2$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public InAppDispatch f48209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public UnpairWatchV2 f48210c;
    public WatchRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f48211e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f48212f;
    public final /* synthetic */ WatchRepositoryImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f48213h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchRepositoryImpl$unpairWatchV2$1(WatchRepositoryImpl watchRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = watchRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48212f = obj;
        this.f48213h |= Integer.MIN_VALUE;
        return this.g.h(null, null, this);
    }
}
