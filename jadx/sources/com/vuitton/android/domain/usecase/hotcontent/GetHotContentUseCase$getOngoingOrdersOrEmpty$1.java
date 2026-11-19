package com.vuitton.android.domain.usecase.hotcontent;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase", f = "GetHotContentUseCase.kt", l = {96, 96}, m = "getOngoingOrdersOrEmpty", v = 2)
final class GetHotContentUseCase$getOngoingOrdersOrEmpty$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetHotContentUseCase f50108c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetHotContentUseCase$getOngoingOrdersOrEmpty$1(GetHotContentUseCase getHotContentUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50108c = getHotContentUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50107b = obj;
        this.d |= Integer.MIN_VALUE;
        return GetHotContentUseCase.c(this.f50108c, this);
    }
}
