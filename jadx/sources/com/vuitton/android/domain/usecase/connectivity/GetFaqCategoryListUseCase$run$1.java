package com.vuitton.android.domain.usecase.connectivity;

import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategoryType;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.GetFaqCategoryListUseCase", f = "GetFaqCategoryListUseCase.kt", l = {23, 27, 30}, m = "run", v = 2)
final class GetFaqCategoryListUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FaqCategoryType f49751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49752c;
    public final /* synthetic */ GetFaqCategoryListUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49753e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetFaqCategoryListUseCase$run$1(GetFaqCategoryListUseCase getFaqCategoryListUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getFaqCategoryListUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49752c = obj;
        this.f49753e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}
