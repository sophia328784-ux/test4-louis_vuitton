package com.vuitton.android.domain.usecase.connectivity;

import com.vuitton.foundation.model.domain.model.connectivity.common.FaqType;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.GetFaqItemListUseCase", f = "GetFaqItemListUseCase.kt", l = {20, 24}, m = "run", v = 2)
final class GetFaqItemListUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FaqType f49759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49760c;
    public final /* synthetic */ GetFaqItemListUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49761e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetFaqItemListUseCase$run$1(GetFaqItemListUseCase getFaqItemListUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getFaqItemListUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49760c = obj;
        this.f49761e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}
