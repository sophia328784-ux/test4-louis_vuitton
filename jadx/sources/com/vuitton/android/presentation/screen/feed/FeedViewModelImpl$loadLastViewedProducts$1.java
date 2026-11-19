package com.vuitton.android.presentation.screen.feed;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl", f = "FeedViewModelImpl.kt", l = {1164}, m = "loadLastViewedProducts", v = 2)
final class FeedViewModelImpl$loadLastViewedProducts$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f57681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedViewModelImpl f57682c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$loadLastViewedProducts$1(FeedViewModelImpl feedViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f57682c = feedViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f57681b = obj;
        this.d |= Integer.MIN_VALUE;
        return FeedViewModelImpl.Bc(this.f57682c, null, this);
    }
}
