package com.vuitton.android.domain.usecase.products;

import com.vuitton.android.domain.repository.CatalogRepository;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.products.GetProductAvailabilityUseCase", f = "GetProductAvailabilityUseCase.kt", l = {27, 24}, m = "run-TPjgr7Q", v = 2)
final class GetProductAvailabilityUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f50301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CatalogRepository f50302c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List f50303e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f50304f;
    public final /* synthetic */ GetProductAvailabilityUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f50305h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetProductAvailabilityUseCase$run$1(GetProductAvailabilityUseCase getProductAvailabilityUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = getProductAvailabilityUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50304f = obj;
        this.f50305h |= Integer.MIN_VALUE;
        Object objA = this.g.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
