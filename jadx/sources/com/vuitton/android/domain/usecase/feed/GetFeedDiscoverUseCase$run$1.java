package com.vuitton.android.domain.usecase.feed;

import com.vuitton.foundation.model.domain.model.common.Coordinates;
import com.vuitton.foundation.model.domain.model.feed.Feed;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.feed.GetFeedDiscoverUseCase", f = "GetFeedDiscoverUseCase.kt", l = {37, EACTags.CARDHOLDER_NATIONALITY, EACTags.CURRENCY_EXPONENT, 76}, m = "run-BWLJW6A", v = 2)
final class GetFeedDiscoverUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Coordinates f50003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Feed f50004c;
    public Ref$ObjectRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f50005e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f50006f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ GetFeedDiscoverUseCase f50007h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f50008i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetFeedDiscoverUseCase$run$1(GetFeedDiscoverUseCase getFeedDiscoverUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50007h = getFeedDiscoverUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f50008i |= Integer.MIN_VALUE;
        Object objA = this.f50007h.a(null, false, false, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
