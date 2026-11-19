package com.vuitton.android.domain.usecase.forms;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.forms.GetCareServiceFormUseCase", f = "GetCareServiceFormUseCase.kt", l = {17, 18}, m = "run-gIAlu-s", v = 2)
final class GetCareServiceFormUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f50051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f50052c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f50053e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ GetCareServiceFormUseCase f50054f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetCareServiceFormUseCase$run$1(GetCareServiceFormUseCase getCareServiceFormUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50054f = getCareServiceFormUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50053e = obj;
        this.g |= Integer.MIN_VALUE;
        Object objA = this.f50054f.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
