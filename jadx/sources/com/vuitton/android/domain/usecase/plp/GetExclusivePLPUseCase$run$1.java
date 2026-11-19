package com.vuitton.android.domain.usecase.plp;

import com.vuitton.android.domain.repository.CatalogRepository;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.plp.GetExclusivePLPUseCase", f = "GetExclusivePLPUseCase.kt", l = {20, 17}, m = "run-0E7RQCE", v = 2)
final class GetExclusivePLPUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CatalogRepository f50235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f50236c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f50237e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f50238f;
    public final /* synthetic */ GetExclusivePLPUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f50239h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetExclusivePLPUseCase$run$1(GetExclusivePLPUseCase getExclusivePLPUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = getExclusivePLPUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50238f = obj;
        this.f50239h |= Integer.MIN_VALUE;
        Object objA = this.g.a(null, 0, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
