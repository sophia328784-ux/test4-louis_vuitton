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
@DebugMetadata(c = "com.vuitton.android.domain.usecase.products.GetProductVariationsAvailabilityUseCase", f = "GetProductVariationsAvailabilityUseCase.kt", l = {29, 26}, m = "run-IiOnze8", v = 2)
final class GetProductVariationsAvailabilityUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CatalogRepository f50317b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f50318c;
    public List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f50319e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ GetProductVariationsAvailabilityUseCase f50320f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetProductVariationsAvailabilityUseCase$run$1(GetProductVariationsAvailabilityUseCase getProductVariationsAvailabilityUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50320f = getProductVariationsAvailabilityUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50319e = obj;
        this.g |= Integer.MIN_VALUE;
        Object objA = this.f50320f.a(null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
