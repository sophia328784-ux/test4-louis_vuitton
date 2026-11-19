package com.vuitton.android.presentation.screen.feed;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl", f = "FeedViewModelImpl.kt", l = {515}, m = "loadHotContent", v = 2)
final class FeedViewModelImpl$loadHotContent$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f57679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedViewModelImpl f57680c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$loadHotContent$1(FeedViewModelImpl feedViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f57680c = feedViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f57679b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f57680c.Jc(false, this);
    }
}
