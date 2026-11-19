package com.vuitton.android.domain.usecase.account.order;

import com.vuitton.android.domain.repository.OrderRepository;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.account.order.GetInvoiceUseCase", f = "GetInvoiceUseCase.kt", l = {22, 19}, m = "run-0E7RQCE", v = 2)
final class GetInvoiceUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public OrderRepository f49115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f49116c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f49117e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ GetInvoiceUseCase f49118f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetInvoiceUseCase$run$1(GetInvoiceUseCase getInvoiceUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49118f = getInvoiceUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49117e = obj;
        this.g |= Integer.MIN_VALUE;
        Object objA = this.f49118f.a(null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
