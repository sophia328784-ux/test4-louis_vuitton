package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl", f = "FeedViewModelImpl.kt", l = {646}, m = "fetchRelatedProducts", v = 2)
final class FeedViewModelImpl$fetchRelatedProducts$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f57656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AssetImageUiModel f57657c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ FeedViewModelImpl f57658e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f57659f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$fetchRelatedProducts$1(FeedViewModelImpl feedViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f57658e = feedViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f57659f |= Integer.MIN_VALUE;
        return FeedViewModelImpl.zc(this.f57658e, null, null, this);
    }
}
