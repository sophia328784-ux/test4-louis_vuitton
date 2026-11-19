package com.vuitton.android.presentation.screen.feed;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl", f = "FeedViewModelImpl.kt", l = {489, 489}, m = "getUserName", v = 2)
final class FeedViewModelImpl$getUserName$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableStateFlow f57668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f57669c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f57670e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f57671f;
    public final /* synthetic */ FeedViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f57672h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$getUserName$1(FeedViewModelImpl feedViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = feedViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f57671f = obj;
        this.f57672h |= Integer.MIN_VALUE;
        return FeedViewModelImpl.Ac(this.g, this);
    }
}
