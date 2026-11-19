package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl", f = "FeedViewModelImpl.kt", l = {557, 560, 576}, m = "fetchOngoingOrdersLegacy", v = 2)
final class FeedViewModelImpl$fetchOngoingOrdersLegacy$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f57652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ResultStrategy f57653c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ FeedViewModelImpl f57654e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f57655f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$fetchOngoingOrdersLegacy$1(FeedViewModelImpl feedViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f57654e = feedViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f57655f |= Integer.MIN_VALUE;
        return this.f57654e.Gc(this);
    }
}
