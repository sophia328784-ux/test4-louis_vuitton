package com.vuitton.android.domain.usecase.careservices;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.careservices.CreateCareServiceBffUseCase", f = "CreateCareServiceBffUseCase.kt", l = {8}, m = "run-gIAlu-s", v = 2)
final class CreateCareServiceBffUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49525b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CreateCareServiceBffUseCase f49526c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateCareServiceBffUseCase$run$1(CreateCareServiceBffUseCase createCareServiceBffUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49526c = createCareServiceBffUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49525b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49526c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
